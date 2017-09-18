package com.eia.soa.util;
/*$Header$*/
import java.io.IOException;
import java.net.URL;
import java.util.Stack;
import oracle.xml.parser.v2.SAXParser;
import oracle.xml.parser.v2.XMLParseException;
//import org.apache.xerces.parsers.SAXParser;
//import org.apache.xerces.xni.parser.XMLParseException;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;


public class ConfigurationLoader
{
    class MyContentHandler extends DefaultHandler
    {

        public void startDocument()
            throws SAXException
        {
            context = new Stack();
        }

        public void endDocument()
            throws SAXException
        {
            context = null;
        }

        public void startElement(String s, String s1, String s2, Attributes attributes)
            throws SAXException
        {
            if(!s1.equals("EIAConfiguration") && !s1.equals("Property"))
            {
                String s3 = s1;
                String s4 = "";
                for(int i = 0; i < attributes.getLength(); i++)
                {
                    String s5 = attributes.getLocalName(i);
                    if(!attributes.getQName(i).startsWith("xmlns"))
                        s4 = (new StringBuilder()).append(s4).append("@").append(s5).append("='").append(attributes.getValue(i)).append("'").toString();
                }

                if(!"".equals(s4))
                    s3 = (new StringBuilder()).append(s3).append("[").append(s4).append("]").toString();
                context.push(s3);
            }
            if("Property".equals(s1))
                context.push(attributes.getValue("", "name"));
        }

        public void characters(char ac[], int i, int j)
            throws SAXException
        {
            String s = (new String(ac, i, j)).trim();
            if(s.length() > 0)
            {
                String s1 = "";
                for(int k = 0; k < context.size(); k++)
                {
                    if(!"".equals(s1))
                        s1 = (new StringBuilder()).append(s1).append("/").toString();
                    s1 = (new StringBuilder()).append(s1).append(context.get(k)).toString();
                }

                Configuration.setProperty(s1, s);
            }
        }

        public void endElement(String s, String s1, String s2)
            throws SAXException
        {
            if(!"EIAConfiguration".equals(s1))
                context.pop();
        }

        private Stack context;
        final ConfigurationLoader this$0;

        public MyContentHandler()
        {
            super();
            this$0 = ConfigurationLoader.this;
        }
    }


    public ConfigurationLoader()
    {
    }

 /*   public void load(URL url)
        throws XMLParseException, SAXException, IOException
    {
    
            myCH = new MyContentHandler();
        SAXParser saxparser = new SAXParser();
        saxparser.setContentHandler(myCH);
        saxparser.parse(url);
    }*/

    public void load(String s)
        throws XMLParseException, SAXException, IOException
    {
        myCH = new MyContentHandler();
        SAXParser saxparser = new SAXParser();
        saxparser.setContentHandler(myCH);
        saxparser.parse(s);
    }

    private MyContentHandler myCH;
}
