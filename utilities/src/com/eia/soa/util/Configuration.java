package com.eia.soa.util;
/*$Header$*/
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import oracle.xml.parser.v2.XMLParseException;
//import org.apache.xerces.xni.parser.XMLParseException;

import org.w3c.dom.Element;

import org.xml.sax.SAXException;

// Referenced classes of package oracle.apps.aia.core.config:
//            ConfigurationLoader, PropertyNotFoundException

public class Configuration
{

    public static void main(String args[])
        throws MalformedURLException, XMLParseException, SAXException, IOException
    {
        //if(args.length == 1 && args[0].compareTo("-initialize") == 0)
            initialize();
    }

    public Configuration()
    {
    }

    public static void initialize()
        throws MalformedURLException, XMLParseException, SAXException, IOException
    {
        sAIAHome = System.getProperty("eia.home");
        //sConfigFileURL = new URL("file", "", (new StringBuilder()).append(sAIAHome).append("/").append("config/EIAConfig.xml").toString());
        sConfigMDSURL = "/apps/EIAMetadata/config/EIAConfig.xml";
       //loadConfigurationProperties(sConfigFileURL, true);
        loadConfigurationProperties(sConfigMDSURL, true);
        
    }

    private static void ensureLoaded()
        throws MalformedURLException, XMLParseException, SAXException, IOException
    {
        
        if(sLastLoadedTimestamp == 0L)
            synchronized(Configuration.class)
            {
                if(sLastLoadedTimestamp == 0L)
                    initialize();
            }
    }

  private static synchronized void loadConfigurationProperties(String s, boolean flag)
       throws XMLParseException, SAXException, IOException
   {
     
       if(sConfigMap == null)
           sConfigMap = new HashMap();
       else
       if(flag)
           sConfigMap.clear();
       MDSConfigurationLoader mdsconfigurationloader = new MDSConfigurationLoader();
       mdsconfigurationloader.load(s);
       sLastLoadedTimestamp = System.currentTimeMillis();
   }
  
    private static synchronized void loadConfigurationProperties(URL url, boolean flag)
        throws XMLParseException, SAXException, IOException
    {
        if(sConfigMap == null)
            sConfigMap = new HashMap();
        else
        if(flag)
            sConfigMap.clear();
        ConfigurationLoader configurationloader = new ConfigurationLoader();
        configurationloader.load(url.toString());
        sLastLoadedTimestamp = System.currentTimeMillis();
    }

    public static String getSystemProperty(String s)
        throws PropertyNotFoundException
    {
        String s1 = createSystemPropertyKey(s);
        String s2;
        try
        {
            ensureLoaded();
            s2 = (String)sConfigMap.get(s1);
        }
        catch(Exception exception)
        {
            throw new PropertyNotFoundException((new StringBuilder()).append("Property Not Found (").append(s1).append(")").toString(), exception);
        }
        if(s2 == null || s2 == "")
            throw new PropertyNotFoundException((new StringBuilder()).append("Property Not Found (").append(s1).append(")").toString());
        else
            return s2;
    }

    public static String getSystemModuleProperty(String s, String s1)
        throws PropertyNotFoundException
    {
        String s2 = createSystemModulePropertyKey(s, s1);
        String s3;
        try
        {
            ensureLoaded();
            s3 = (String)sConfigMap.get(s2);
        }
        catch(Exception exception)
        {
            throw new PropertyNotFoundException((new StringBuilder()).append("Property Not Found (").append(s2).append(")").toString(), exception);
        }
        if(s3 == null || s3 == "")
            s3 = getSystemProperty(s1);
        return s3;
    }

    public static String getServiceProperty(String s, String s1)
        throws PropertyNotFoundException
    {
        String s2 = createServicePropertyKey(s, s1);
        String s3;
        try
        {
            ensureLoaded();
            s3 = (String)sConfigMap.get(s2);
        }
        catch(Exception exception)
        {
            throw new PropertyNotFoundException((new StringBuilder()).append("Property Not Found (").append(s2).append(")").toString(), exception);
        }
        if(s3 == null || s3 == "")
            s3 = getSystemProperty(s1);
        return s3;
    }

    static String getProperty(String s)
        throws PropertyNotFoundException
    {
        String s1;
        try
        {
            ensureLoaded();
            s1 = (String)sConfigMap.get(s);
        }
        catch(Exception exception)
        {
            throw new PropertyNotFoundException((new StringBuilder()).append("Property Not Found (").append(s).append(")").toString(), exception);
        }
        return s1;
    }

    static String createSystemPropertyKey(String s)
    {
        return (new StringBuilder()).append("SystemConfig/").append(resolveEscapedCharacters(s)).toString();
    }

    static String createSystemModulePropertyKey(String s, String s1)
    {
        return (new StringBuilder()).append("SystemConfig/ModuleConfiguration[@moduleName='").append(resolveEscapedCharacters(s)).append("']/").append(resolveEscapedCharacters(s1)).toString();
    }

    static String createServicePropertyKey(String s, String s1)
    {
        return (new StringBuilder()).append("ServiceConfiguration[@serviceName='").append(resolveEscapedCharacters(s)).append("']/").append(resolveEscapedCharacters(s1)).toString();
    }

    static void setProperty(String s, String s1)
    {
        if(sConfigMap == null)
            sConfigMap = new HashMap();
        if(s != null && s.toLowerCase().endsWith("pwd"))
            sConfigMap.put(s, s1);
        else
            sConfigMap.put(s, s1);
    }

    static void setSystemProperty(String s, String s1)
    {
        setProperty(createSystemPropertyKey(s), s1);
    }

    static void setSystemModuleProperty(String s, String s1, String s2)
    {
        setProperty(createSystemModulePropertyKey(s, s1), s2);
    }

    static void setServiceProperty(String s, String s1, String s2)
    {
        setProperty(createServicePropertyKey(s, s1), s2);
    }

    static String resolveEscapedCharacters(String s)
    {
        if(s == null)
            return null;
        else
            return s.replace("|lcb;|", "{").replace("|rcb;|", "}");
    }

    public static URL getConfigFileURL()
    {
        return sConfigFileURL;
    }

    public static long getLastLoadedTimestamp()
    {
        return sLastLoadedTimestamp;
    }

  public static String logErrorMessageToDB(Element faultMsg) throws Exception {
      AppLogger2.logErrorDB(faultMsg);
      return "Success";
  }   
  
  public static String logTraceMessage(String s1)
  {
      AppLogger.logTraceMessage(s1);
      return "Success";
  }
  
  public static String logErrorMessage(String s)
  {
      AppLogger.logErrorMessage(s);
      return "Success";
  }    
	public static String convertDate(String existingDateFormat,String dateText, String newDateFormat) {
     
            try {
                SimpleDateFormat dt = new SimpleDateFormat(existingDateFormat);
                Date date = dt.parse(dateText);
                SimpleDateFormat dt1 = new SimpleDateFormat(newDateFormat);
                return dt1.format(date);
               
            } catch (ParseException e) {
                e.printStackTrace();
            }
            return null;
   }
    private static Map sConfigMap;
    private static final String sAIAHomePropertyName = "eia.home";
    private static final String sConfigFileRelPath = "config/EIAConfig.xml";
    private static String sAIAHome;
    private static URL sConfigFileURL;
    private static String sConfigMDSURL;    
    private static long sLastLoadedTimestamp;
}
