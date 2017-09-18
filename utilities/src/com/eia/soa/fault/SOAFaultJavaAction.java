package com.eia.soa.fault;
/*$Header$*/
import com.collaxa.cube.engine.fp.BPELFaultRecoveryContextImpl;

import com.eia.soa.util.AppLogger;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import java.util.Set;
import javax.xml.datatype.XMLGregorianCalendar;

import oracle.fabric.common.NormalizedMessage;

import oracle.integration.platform.faultpolicy.IFaultRecoveryContext;
import oracle.integration.platform.faultpolicy.IFaultRecoveryJavaClass;
import oracle.tip.mediator.common.error.recovery.MediatorRecoveryContext;
import oracle.integration.platform.faulthandling.recovery.RejectedMsgRecoveryContext;

import oracle.soa.management.ComponentDN;
//import oracle.soa.management.CompositeDN;
import oracle.soa.management.facade.Fault;

import oracle.tip.mediator.common.api.CalloutMediatorMessage;

import oracle.xml.parser.v2.XMLElement;
import org.w3c.dom.*;
import org.xml.sax.InputSource;
import com.eia.soa.fault.eh.*;

import java.io.StringWriter;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.datatype.XMLGregorianCalendar;


public class SOAFaultJavaAction
    implements IFaultRecoveryJavaClass
{



  public void handleRetrySuccess(IFaultRecoveryContext iFaultRecoveryContext) {
    AppLogger.logMessage("INFO", "handleRetrySuccess(+)..");
    //handleFault(iFaultRecoveryContext);
  }
      
    public SOAFaultJavaAction()
    {
        componentTypeName = null;
    }

    public String handleFault(IFaultRecoveryContext ifaultrecoverycontext)
    {
        AppLogger.logMessage("INFO", "handleFault(+)..");
        
        componentTypeName = ifaultrecoverycontext.getType();
        
        AppLogger.logMessage("FINE", (new StringBuilder()).append("Component type is :").append(componentTypeName).toString());
        dumpProperties(ifaultrecoverycontext.getProperties());
        
        if("bpel".equals(componentTypeName))
        {
            AppLogger.logMessage("FINE", "Redirecting to BPEL Error Handling");
            AppLogger.logMessage("FINE","Redirecting to BPEL Fault handling..");
            BPELFaultRecoveryContextImpl bpelfaultrecoverycontextimpl = (BPELFaultRecoveryContextImpl)ifaultrecoverycontext;
            return handleBPELFault(bpelfaultrecoverycontextimpl,ifaultrecoverycontext.getProperties());
        }
        else
        {
            AppLogger.logMessage("SEVERE",(new StringBuilder()).append("****No handler found for component type ").append(componentTypeName).append("..").toString());
            return "ABORT";
        }
    }

  

    private String handleBPELFault(BPELFaultRecoveryContextImpl bpelfaultrecoverycontextimpl, Map map)
    {
      AppLogger.logMessage("INFO", "handleBPELFault(+)..");
          
        try
        {

          AppLogger.logMessage("INFO", (new StringBuilder()).append("***********ECID:").append(bpelfaultrecoverycontextimpl.getECID()).toString());
          AppLogger.logMessage("INFO", (new StringBuilder()).append("***********compositeName :").append(bpelfaultrecoverycontextimpl.getCompositeName()).toString());
          AppLogger.logMessage("INFO", (new StringBuilder()).append("***********processRevision :").append(bpelfaultrecoverycontextimpl.getProcessDN().getRevision()).toString());
          AppLogger.logMessage("INFO", (new StringBuilder()).append("***********compositeInstanceId :").append(bpelfaultrecoverycontextimpl.getCompositeInstanceId()).toString());
          AppLogger.logMessage("INFO", (new StringBuilder()).append("***********compositeDN :").append(bpelfaultrecoverycontextimpl.getProcessDN().toString().substring(0, bpelfaultrecoverycontextimpl.getProcessDN().toString().indexOf("*"))).toString());

          HashMap hashmap = new HashMap();
          hashmap.put("ECID", bpelfaultrecoverycontextimpl.getECID().toString());
          hashmap.put("compositeName", bpelfaultrecoverycontextimpl.getCompositeName().toString());
          hashmap.put("compositeRevision", bpelfaultrecoverycontextimpl.getProcessDN().getRevision().toString());
          hashmap.put("compositeInstanceID", bpelfaultrecoverycontextimpl.getCompositeInstanceId().toString());
          hashmap.put("compositeDN", bpelfaultrecoverycontextimpl.getProcessDN().toString().substring(0, bpelfaultrecoverycontextimpl.getProcessDN().toString().indexOf("*")));

          /*StackTraceElement astacktraceelement[] = bpelfaultrecoverycontextimpl.getFault().getStackTrace();
          
          bpelfaultrecoverycontextimpl.getFault().getMessage();
          
          StringBuffer stringbuffer = new StringBuffer();
          for(int i = 0; i < astacktraceelement.length; i++)
          {
              stringbuffer.append(astacktraceelement[i].toString());
              stringbuffer.append(System.getProperty("line.separator"));
          }*/

            
          //AppLogger.logMessage("FINEST","fetched stackTrace .."+stringbuffer.toString());
          
          AppLogger.logMessage("FINEST","fetched stackTrace .."+bpelfaultrecoverycontextimpl.getFault().getMessage());
          
          hashmap.put("FaultStack", bpelfaultrecoverycontextimpl.getFault().getMessage());
          hashmap.put("FaultText", bpelfaultrecoverycontextimpl.getFault().getMessage());
          hashmap.put("FaultSeverity", getMapProperty(map,"SEVERITY"));       
          hashmap.put("FaultCode",getMapProperty(map,"CODE"));
          
          String faultXML = generateFaultMessage(hashmap);
          
          AppLogger.logMessage("FINEST","Fault XML  .."+faultXML);
          
          PublishJMS.EIATopic(faultXML, bpelfaultrecoverycontextimpl.getECID());
        }
        catch(Exception exception1)
        {
            AppLogger.logMessage("SEVERE", exception1.getLocalizedMessage());
        }
        AppLogger.logMessage("INFO","..handleBPELFault(-)");
        return (getMapProperty(map,"FAULTACTION").equals("_no_value_") )?"RETHROW":getMapProperty(map,"FAULTACTION");
        //return "RETHROW";
    }

   

  private String getMapProperty(Map map,String key)
  {
      String mapValue = "_no_value_";
      AppLogger.logMessage("INFO","getMapProperties (+).."+key);
      if(map == null || map != null && map.size() == 0)
          return mapValue;
      System.out.println("----Begin propeties -----");
      Set set = map.entrySet();
      for(Iterator iterator = set.iterator(); iterator.hasNext();)
      {
          java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
          System.out.println((new StringBuilder()).append("\nKey=").append(entry.getKey()).toString());
        
          if (key.equals(entry.getKey().toString())) {
                mapValue = (String) entry.getValue();
               }
      }
    AppLogger.logMessage("INFO","getMapProperties (-).."+mapValue);
    return mapValue;
  }


    private void dumpProperties(Map map)
    {
        
        AppLogger.logMessage("INFO","dumpProperties (+)..");
        if(map == null || map != null && map.size() == 0)
            return;
        System.out.println("----Begin propeties -----");
        Set set = map.entrySet();
        for(Iterator iterator = set.iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            System.out.println((new StringBuilder()).append("\nKey=").append(entry.getKey()).toString());
            List list = (List)entry.getValue();
            Iterator iterator1 = list.iterator();
            while(iterator1.hasNext()) 
                System.out.print((new StringBuilder()).append("Value=").append(iterator1.next()).append("\t").toString());
        }

        System.out.println("\n----End propeties -----");
      AppLogger.logMessage("INFO","dumpProperties (-)..");
    }

 
 public String generateFaultMessage(HashMap hmap) {
   
   try {
     
     
       
      
     
       
   FaultingServiceType fs = new FaultingServiceType();  
   
   fs.setID((String)hmap.get((String)"compositeName"));
   fs.setInstanceID((String)hmap.get((String)"compositeInstanceID"));
   fs.setProcess((String)hmap.get((String)"compositeDN"));
   
   FaultMessageType fm = new FaultMessageType();
   fm.setCode((String)hmap.get((String)"FaultCode"));
   fm.setSeverity((String)hmap.get((String)"FaultSeverity"));
   fm.setStack((String)hmap.get((String)"FaultStack"));
     
   (fm.getText()).add((String)"FaultStack");
     
   
   
   FaultType f = new FaultType();
   f.setCorrectiveAction((String)hmap.get((String)"FaultCorrectiveAction"));
  
//   f.setReportingDateTime(new XMLGregorianCalendar() );
   
   f.setFaultingService(fs);
   f.setFaultMessage(fm);
   
     JAXBContext context = JAXBContext.newInstance(FaultType.class);
     StringWriter sw = new StringWriter();
     Marshaller m = context.createMarshaller();
     m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
     m.marshal(f, sw);
  
   
   return sw.toString();
     
   }catch (Exception e) {
     return "Exception "+e.toString();
   }
 }
 
 public static void main(String args[]) throws Exception {
   
   HashMap hashmap = new HashMap();
   hashmap.put("FaultStack", "test");
   hashmap.put("FaultText", "test");
   hashmap.put("FaultSeverity", "test");       
   hashmap.put("FaultCode","test");
   
   SOAFaultJavaAction s = new SOAFaultJavaAction();
   
   System.out.println((String) s.generateFaultMessage(hashmap));
   //PublishJMS.EIATopic((String) s.generateFaultMessage(hashmap), null);
 
 }

    private String componentTypeName;
}
