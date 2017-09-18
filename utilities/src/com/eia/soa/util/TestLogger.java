package com.eia.soa.util;
/*$Header$*/
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.w3c.dom.Element;

public class TestLogger {

  public static void main(String[] args) {
  
   
   
     //   Element xmlelement =new Element();
        try {
            //ErrorHandler.process(xmlelement);
      //  System.out.println(Configuration.getSystemProperty("ErrorHandler","ERROR.DS_NAME"));
           //System.out.println(Configuration.getSystemProperty("ErrorHandler","ERROR.DB_DSNAME"));
          System.out.println(Configuration.getSystemProperty("TRACING.ENABLED"));
           AppLogger.logTraceMessage("Test");
           //AppLogger.logErrorMessage("Test");
        } catch (Exception e) {
        System.out.println(e.getMessage());
            // TODO
        }
        
   
  
  }

}