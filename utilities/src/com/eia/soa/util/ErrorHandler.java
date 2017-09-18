package com.eia.soa.util;
/*$Header$*/
//import oracle.xml.parser.v2.*;
import java.sql.Connection;

import java.util.logging.Level;
import org.w3c.dom.Element;
public class ErrorHandler {
    public ErrorHandler() {
    }


    /**
     * @param faultMsg
     * @throws Exception
     */
    public static void process(Element faultMsg) throws Exception {
        AppLogger2.logErrorDB(faultMsg);
      

  }

    public static void process(String faultMsg) {
        AppLogger.logErrorMessage(faultMsg);
    }

 

}