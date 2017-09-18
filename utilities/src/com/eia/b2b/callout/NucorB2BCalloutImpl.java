package com.eia.b2b.callout;

import java.util.List;
import java.util.Properties;

import oracle.tip.b2b.callout.Callout;
import oracle.tip.b2b.callout.CalloutContext;
import oracle.tip.b2b.callout.CalloutMessage;
import oracle.tip.b2b.callout.exception.CalloutDomainException;
import oracle.tip.b2b.callout.exception.CalloutSystemException;
import oracle.tip.b2b.domain.B2BParameters;
import oracle.tip.b2b.system.B2BRuntimeException;
import oracle.tip.b2b.system.DiagnosticService;
import oracle.tip.b2b.system.ErrorKeys;


public class NucorB2BCalloutImpl implements Callout {


  /**
   *  This methos implements the Callout execute method which will perform the required
   *  custom actions that need to be performed before the b2B processing.
   * @param calloutContext
   * @param input
   * @param output
   * @throws CalloutDomainException
   * @throws CalloutSystemException
   */
  public void execute(CalloutContext calloutContext, List input,
                      List output) throws CalloutDomainException,
                                          CalloutSystemException {

    b2blog(" Callout execute() called - Start");
    try {
      //CalloutMessage message = new CalloutMessage();

      CalloutMessage cmIn = (CalloutMessage)input.get(0);
      String inputPayload = cmIn.getBodyAsString();
      Properties properties = (Properties) cmIn.getParameters();

      b2blog((new StringBuilder()).append("Callout execute() - Before Setting All Parameter = ").append(cmIn.getParameters()).toString());
      b2blog((new StringBuilder()).append("Callout execute() - CalloutMessage body = ").append(inputPayload).toString());
      
      CalloutMessage cmOut = new CalloutMessage(inputPayload);
      //properties.put("FROM_PARTY", "WellsFargoNYS");
      //properties.put(B2BParameters.TO_PARTY, "Nucor");
      properties.put(B2BParameters.CALLOUT_DOCTYPE , "ARLockbox");
      properties.put(B2BParameters.CALLOUT_DOCTYPE_REV, "1.0");
      
      properties.put(B2BParameters.DOCTYPE_NAME , "ARLockbox");
      properties.put(B2BParameters.DOCTYPE_REVISION, "1.0");


            
      cmOut.setParameters(properties);
      
      b2blog((new StringBuilder()).append("Callout execute() - After Setting All Parameter = ").append(cmOut.getParameters()).toString());

      output.add(cmOut);

      /*CalloutMessage fa = new CalloutMessage();
           //fa.setParameter("functional_ack", "true");
           // setting your own doctype and revision
           //set the doc type name and revision as defined in b2b ui
           //fa.setParameter("doctype_name", "fa"); 
           //fa.setParameter("doctype_revision", "1.0");      
      
      Properties properties = new Properties();
      properties.put(B2BParameters.FUNCTIONAL_ACK, "true");
      properties.put(B2BParameters.FROM_PARTY, "WellsFargoNYS");
      properties.put(B2BParameters.TO_PARTY, "Nucor");
      properties.put(B2BParameters.DOCTYPE_NAME, "ARLockbox");
      properties.put(B2BParameters.DOCTYPE_REVISION, "1.0");
      output.add(fa);
      fa.setParameters(properties);*/



      //CalloutMessage cmOut = new CalloutMessage(inputPayload);
      
     
    }

    catch (Exception e) {
      b2blog((new StringBuilder()).append("Callout execute() - Exception = ").append(e.getMessage()).toString());
      new B2BRuntimeException(ErrorKeys.B2B_RUNTIME_ERROR, e);
      //e.printStackTrace();
      //throw new CalloutDomainException(e);
    }


  }


  /**
   * This method uses the b2B diagnostic service for logging the messages to the
   * server logs.
   * @param message
   */
  private static void b2blog(Object message) {
    DiagnosticService.log(3, -2,
                          (new StringBuilder()).append("NucorB2BCalloutImpl ::").append(message).toString());
  }


}
