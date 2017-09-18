package com.eia.soa.util;
/*$Header$*/
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.io.IOException;

import oracle.xml.parser.v2.XMLElement;
//import org.w3c.dom.Element;
import org.w3c.dom.Node;
import java.util.logging.FileHandler;
import java.util.logging.LogRecord;

public class AppLogger
{

    public AppLogger()
    {
    }

   /* public static void logErrorMessage(XMLElement xmlelement)
    {
        String s = "";
        errorLogger.log(Level.SEVERE, s);
    }*/

    public static void logErrorMessage(String s)
    {
        errorLogger.log(Level.SEVERE, s);
    }


    /*public static void logErrorMessage(XMLElement element, String s)
    {
        errorLogger.log(Level.SEVERE, s);
    }

    public static void logErrorMessage(Node node, String s)
    {
        errorLogger.log(Level.SEVERE, s);
    }*/


    public static void logMessage(String s, String s1)
    {
        Level level = null;
        try
        {
            level = Level.parse(s);
        }
        catch(Exception exception)
        {
            errorLogger.log(Level.SEVERE, "Input level for trace logging is incorrect, using INFO");
            level = Level.INFO;
        }
        traceLogger.log(level, s1);
    }

    public static void logTraceMessage(String s1)
    {

        traceLogger.log(Level.FINE, s1);
    }
 

  
    private static Logger getTraceloggerInstance()
    {
        String s_logger = null;
        String s_traceLevel = null;
        try
        {
            s_logger = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.TRACE");
            s_traceLevel = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.TRACE_LEVEL");
        }
        catch(PropertyNotFoundException propertynotfoundexception)
        {
            logErrorMessage(propertynotfoundexception.getLocalizedMessage());
        }
        
        traceLogger = Logger.getLogger(s_logger);
        traceLogger.setLevel(Level.parse(s_traceLevel));
        traceLogger = setTraceHandler(traceLogger);
        
        return traceLogger;
    }

   
    private static Logger setTraceHandler(Logger le) {
        FileHandler fh;  
        String s_traceFileName = null;
        String s_traceFileSize = null;
        String s_traceFileCount = null;
        Formatter fm;
        try
        {
            s_traceFileName = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.TRACE_FILE_NAME");
            s_traceFileSize = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.TRACE_FILE_SIZE_MAX");
            s_traceFileCount = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.TRACE_FILE_NUM");
        }
        catch(PropertyNotFoundException propertynotfoundexception)
        {
            logErrorMessage(propertynotfoundexception.getLocalizedMessage());
        }
        
        try 
        {
        fh = new FileHandler(s_traceFileName.concat("-%u-%g.txt"),Integer.parseInt(s_traceFileSize),Integer.parseInt(s_traceFileCount),true);
        fh.setFormatter(new CustomLogFormatter());
        le.addHandler(fh);
        }
        catch(IOException e) {
            logErrorMessage("Error Setting the Log file. Cannot create the file "+s_traceFileName);
        }
        return le;

    }
    private static Logger getErrorloggerInstance()
    {
        String s = null;
        try
        {
            s = Configuration.getSystemModuleProperty("ErrorHandler", "LOGGER.ERROR");
        }
        catch(PropertyNotFoundException propertynotfoundexception)
        {
            logErrorMessage(propertynotfoundexception.getLocalizedMessage());
        }

        errorLogger = Logger.getLogger(s);
        errorLogger = setTraceHandler(errorLogger)  ;
        return errorLogger;
    }


    private static Logger errorLogger = getErrorloggerInstance();
    private static Logger traceLogger = getTraceloggerInstance();

}
