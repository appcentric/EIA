package com.eia.soa.util;
/*$Header$*/
import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.*;

public class MDSSettings
{

    public MDSSettings()
    {
        try
        {
            DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentbuilder = documentbuilderfactory.newDocumentBuilder();
            Document document = documentbuilder.parse(new File((new StringBuilder()).append(System.getProperty("eia.home")).append("/config/MDSSettings.xml").toString()));
            Element element = document.getDocumentElement();
            NodeList nodelist = element.getElementsByTagName("mds");
            nodelist = ((Element)nodelist.item(0)).getChildNodes();
            for(int i = 0; i < nodelist.getLength(); i++)
            {
                Node node = nodelist.item(i);
                if(node instanceof Element)
                {
                    Element element1 = (Element)node;
                    Node node1 = element1.getFirstChild();
                    if(element1.getTagName().equals("hostname"))
                        hostName = node1.getNodeValue();
                    else
                    if(element1.getTagName().equals("port"))
                        portNumber = node1.getNodeValue();
                    else
                    if(element1.getTagName().equals("sid"))
                        sid = node1.getNodeValue();
                    else
                    if(element1.getTagName().equals("username"))
                        userName = node1.getNodeValue();
                    else
                    if(element1.getTagName().equals("password"))
                        password = node1.getNodeValue();
                    else
                    if(element1.getTagName().equals("partition"))
                        partition = node1.getNodeValue();
                }
            }

        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public String getHostName()
    {
        return hostName;
    }

    public String getPortNumber()
    {
        return portNumber;
    }

    public String getSid()
    {
        return sid;
    }

    public String getUserName()
    {
        return userName;
    }

    public String getPassword()
    {
        return password;
    }

    public String getPartition()
    {
        return partition;
    }

    private String hostName;
    private String portNumber;
    private String sid;
    private String userName;
    private String password;
    private String partition;
}

