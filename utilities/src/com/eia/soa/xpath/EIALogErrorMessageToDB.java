package com.eia.soa.xpath;
/*$Header$*/
import java.util.List;

import oracle.fabric.common.xml.xpath.IXPathFunction;
import com.eia.soa.util.Configuration;
import com.eia.soa.util.PropertyNotFoundException;

import oracle.fabric.common.xml.xpath.IXPathContext;
import oracle.fabric.common.xml.xpath.XPathFunctionException;

public  class EIALogErrorMessageToDB implements IXPathFunction {

    private org.w3c.dom.Element getValue(Object o) throws XPathFunctionException {
        if ((o instanceof org.w3c.dom.Element )) {
          return ((org.w3c.dom.Element) o);
        } else {
          throw new XPathFunctionException("Unknown argument type.");
        }
    }

   
   //XPATH function
    public Object call(IXPathContext ixPathContext, List list) throws XPathFunctionException {
    
        String _outcome = "Not Logged";
        if (list.size() != 1)     {  throw new XPathFunctionException( "Illegal Number of Argument passed for Log Error Message to DB."); }
         
        org.w3c.dom.Element _faultNode = (org.w3c.dom.Element) getValue((Object) (list.get(0)));
        
        try {
          _outcome = com.eia.soa.util.Configuration.logErrorMessageToDB(_faultNode);
          return _outcome;                            
        }
        catch (Exception ex) {
          _outcome = "Failed to Log - "+ex.toString().substring(1, 50);
           return _outcome;
        }              
    }
}
