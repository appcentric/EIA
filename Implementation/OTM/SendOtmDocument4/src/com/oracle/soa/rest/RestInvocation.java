package com.oracle.soa.rest;


import com.collaxa.xml.XMLHelper;

import com.oracle.bpel.client.BPELFault;

import java.util.Arrays;
import java.util.Map;

import javax.xml.namespace.QName;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.ws.BindingProvider;
import javax.xml.ws.Dispatch;
import javax.xml.ws.Service;
import javax.xml.ws.handler.MessageContext;
import javax.xml.ws.http.HTTPBinding;

import oracle.xml.parser.v2.XMLDocument;
import oracle.xml.parser.v2.XMLElement;
import oracle.xml.parser.v2.XMLNode;

import org.w3c.dom.Element;


/**
 * Simple JaxWs based REST invoker
 * @author clemens utschig
 */
public class RestInvocation 
{

    /**
     * HTTP POST
     */
    public static final String HTTP_VERB_POST    = "POST";
    /**
     * HTTP GET
     */
    public static final String HTTP_VERB_GET     = "GET";
    /**
     * HTTP DELETE
     */
    public static final String HTTP_VERB_DELETE  = "DELETE";
    /**
     * HTTP PUT
     */
    public static final String HTTP_VERB_PUT     = "PUT";

    public static final String KEY_HTTP_USERNAME     = 
        BindingProvider.USERNAME_PROPERTY;

    public static final String KEY_HTTP_PASSWORD     = 
        BindingProvider.PASSWORD_PROPERTY;
    
    /**
     * the internal log session
     */
    private StringBuffer mLog = new StringBuffer();

    private String[] allowedVerbs = new String []
        {HTTP_VERB_DELETE, HTTP_VERB_GET, HTTP_VERB_POST, HTTP_VERB_PUT};
    
    /**
     * Invoke a rest based endpoint 
     * @param elcall the request element
     * @param pVerb the verb 
     * @param endpoint the endpoint
     * @return the response element
     * @throws com.oracle.bpel.client.BPELFault in case something goes wrong
     */
    public Element invoke(Element elcall, String pVerb,
        String endpoint) 
        throws com.oracle.bpel.client.BPELFault 
    {
        return invoke(elcall, pVerb, endpoint, null, null);
    }

    /**
     * Invoke a rest based endpoint 
     * @param elcall the request element
     * @param pVerb the verb 
     * @param endpoint the endpoint
     * @param pContext the context if any for the dispatcher
     * @return the response element
     * @throws com.oracle.bpel.client.BPELFault in case something goes wrong
     */
    public Element invoke(Element elcall, String pVerb,
        String endpoint, Map<String, Object> pContext) 
        throws com.oracle.bpel.client.BPELFault 
    {
        return invoke(elcall, pVerb, endpoint, pContext, null);
    }

    /**
     * Invoke a rest based endpoint 
     * @param elcall the request element
     * @param pVerb the verb 
     * @param endpoint the endpoint
     * @param pContext, e.g basic auth params
     * @param responseNs force a namespace onto the response element before 
     * returning it
     * @return the response element
     * @throws com.oracle.bpel.client.BPELFault in case something goes wrong
     */
    public Element invoke(Element elcall, String pVerb,
        String endpoint, Map<String, Object> pContext, 
        String responseNs) 
        throws com.oracle.bpel.client.BPELFault 
    {
        addAuditTrailEntry("call arguments: \n" +
            (elcall != null ? com.collaxa.xml.XMLHelper.toXML(elcall) : 
                           "<empty>") + " \n verb: " + pVerb);
        
        if (!Arrays.asList(allowedVerbs).contains(pVerb)) 
        {
            javax.xml.namespace.QName errorQ =
                new javax.xml.namespace.QName(
                    "http://schemas.oracle.com/bpel/extension",
                    "bindingFault");
            addAuditTrailEntry("Creating invocation error in: " +
                               errorQ.toString());
            throw new com.oracle.bpel.client.BPELFault(errorQ, 
                "Not an allowed verb [" +pVerb+ "]");
        }
        try 
        {
            // create a source from the input element
            DOMSource sourceEl = new DOMSource(elcall);

            // rest comes below ..
            QName qname = new QName("www.oracle.com", "rest");
            Service service = Service.create(qname);
            // create a port
            service.addPort(qname, HTTPBinding.HTTP_BINDING, endpoint);
            // create a dispatcher, no soap => Service.Mode.PAYLOAD
            
            Dispatch<Source> dispatcher =
                service.createDispatch(qname, Source.class,
                                       Service.Mode.PAYLOAD);
            addContextToDispatch(dispatcher, pContext);
            addAuditTrailEntry("Created dispatcher: " + dispatcher);

            // setup the request method
            Map<String, Object> requestContext =
                dispatcher.getRequestContext();
            requestContext.put(MessageContext.HTTP_REQUEST_METHOD, pVerb);

            // transform the result into a DOMResult
            Source result = dispatcher.invoke(sourceEl);
            DOMResult resultN = new DOMResult();

            Transformer xform =
                TransformerFactory.newInstance().newTransformer();
            xform.transform(result, resultN);

            XMLDocument fResultDoc = (XMLDocument)resultN.getNode();
            XMLElement elResult = (XMLElement)fResultDoc.getDocumentElement();
            // better if we don't have to do it here - just super expensive ..
            if (responseNs == null)
                return elResult;
            elResult.setAttribute("xmlns", responseNs);
            fResultDoc.setNodeFlag(XMLNode.UPDATED_CONTENT, true);
            // yyyyyyyyaaaaaaak - again1
            elResult = (XMLElement)XMLHelper.parse(XMLHelper.toXML(elResult));

            addAuditTrailEntry("Result: \n " + XMLHelper.toXML(elResult));
            return elResult;
        } catch (Exception callException) {
            addAuditTrailEntry("Exception during REST invoke: " +
                               callException.getMessage() +
                               " ExceptionType: " + callException.getClass());
            // create a bpel fault
            javax.xml.namespace.QName errorQ =
                new javax.xml.namespace.QName(
                    "http://schemas.oracle.com/bpel/extension",
                    "remoteFault");
            addAuditTrailEntry("Creating invocation error in: " +
                               errorQ.toString());
            BPELFault fault = new BPELFault 
                    (errorQ, "Could not invoke: " + endpoint + " with verb: " + 
                     pVerb + " and context: " + pContext);
            fault.initCause(callException);
            throw fault;
        }
    }

    private void addAuditTrailEntry(String pMessage) 
    {
        mLog.append(pMessage).append(" \r\n");
    }

    public String getAuditAsString() 
    {
        return mLog.toString();
    }

    /**
     * Adds context if passed into the dispatcher's requestcontext
     * @param dispatcher the dispatcher
     * @param pContext the (from outside passed in) request context
     */
    private void addContextToDispatch 
        (Dispatch<Source> dispatcher, Map <String, Object> pContext) 
    {
        if (pContext == null) 
        {
            return;
        }
        dispatcher.getRequestContext().putAll(pContext);
    }

}
