package com.eia.soa.util;
/*$Header$*/
import java.net.URL;
import org.w3c.dom.*;

// Referenced classes of package oracle.apps.aia.core.config:
//            Configuration

public class MDSConfigurationLoader
{

    public MDSConfigurationLoader()
    {
    }

    public void load(URL url)
    {
        load(url.getPath());
    }

    public void load(String s)
    {
        MDSImpl mdsimpl = new MDSImpl();
        try
        {
            Document document = mdsimpl.getReadOnlyDocument(s);
            System.out.println("Here ");
            createPropertykeyForServiceConfiguration(document, "ServiceConfiguration", "serviceName");
            createPropertykeyForModuleConfiguration(document, "ModuleConfiguration", "moduleName");
            createPropertykeyForSystemConfiguration(document, "SystemConfig");
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void createKey(Element element, String s)
    {
        NodeList nodelist = element.getElementsByTagName("Property");
        for(int i = 0; i < nodelist.getLength(); i++)
        {
            Element element1 = (Element)nodelist.item(i);
            String s1 = element1.getAttribute("name");
            Node node = element1.getFirstChild();
            String s2 = "";
            if(node != null)
                s2 = node.getNodeValue();
            String s3 = (new StringBuilder()).append(s).append(s1).toString();
            Configuration.setProperty(s3, s2);
        }

    }

    private void createPropertykeyForServiceConfiguration(Document document, String s, String s1)
    {
        NodeList nodelist = document.getElementsByTagName(s);
        for(int i = nodelist.getLength(); i > 0; i--)
        {
            Element element = (Element)nodelist.item(i - 1);
            String s2 = element.getAttribute(s1);
            String s3 = (new StringBuilder()).append(s).append("[@").append(s1).append("='").append(s2.trim()).append("']/").toString();
            createKey(element, s3);
        }

    }

    private void createPropertykeyForSystemConfiguration(Document document, String s)
    {
        NodeList nodelist = document.getElementsByTagName(s);
        for(int i = nodelist.getLength(); i > 0; i--)
        {
            Element element = (Element)nodelist.item(i - 1);
            String s1 = (new StringBuilder()).append(s).append("/").toString();
            createKey(element, s1);
        }

    }

    private void createPropertykeyForModuleConfiguration(Document document, String s, String s1)
    {
        NodeList nodelist = document.getElementsByTagName(s);
        for(int i = nodelist.getLength(); i > 0; i--)
        {
            Element element = (Element)nodelist.item(i - 1);
            String s2 = element.getAttribute(s1);
            String s3 = (new StringBuilder()).append("SystemConfig/").append(s).append("[@").append(s1).append("='").append(s2.trim()).append("']/").toString();
            createKey(element, s3);
        }

    }
}
