package com.eia.soa.fault;

/*$Header$*/
import com.eia.soa.util.AppLogger;

import java.io.PrintStream;

import java.util.Hashtable;

import javax.jms.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class PublishJMS
{

    public PublishJMS()
    {
    }

    public static void EIATopic(String s, String s1) throws Exception
    {
      TopicConnection topicconnection=null;
      TopicSession topicsession=null;
      TopicPublisher topicpublisher=null;
      
  
        
        try {
        AppLogger.logMessage("INFO", "EIATopic(+)..");
        topicconnection = null;
        topicsession = null;
        topicpublisher = null;
        AppLogger.logMessage("FINEST","Trying to get InitialContext..");
        InitialContext initialcontext = new InitialContext();


        /*    InitialContext initialcontext = null;
            Hashtable properties = new Hashtable();
            properties.put(Context.INITIAL_CONTEXT_FACTORY,
                           "weblogic.jndi.WLInitialContextFactory");

            properties.put(Context.PROVIDER_URL, "t3://spdecsoad2.sps.nucorsteel.local:8001");
            properties.put(Context.SECURITY_PRINCIPAL, "weblogic");
            properties.put(Context.SECURITY_CREDENTIALS, "nucoradmin1");
            try {
                initialcontext = new InitialContext(properties);
            } catch (NamingException ne) {
                ne.printStackTrace(System.err);
                System.exit(0);
            }
       */ 

          
        AppLogger.logMessage("FINEST","Trying to get Topic Connection Factory.."+TOPICCONNECTIONFACTORYNAME);
        TopicConnectionFactory topicconnectionfactory = (TopicConnectionFactory)initialcontext.lookup(TOPICCONNECTIONFACTORYNAME);
        topicconnection = topicconnectionfactory.createTopicConnection();

        topicsession = topicconnection.createTopicSession(false, Session.AUTO_ACKNOWLEDGE);
        AppLogger.logMessage("FINEST","Trying to get Topic .."+TOPICNAME);
        Topic topic = (Topic)initialcontext.lookup(TOPICNAME);
        topicpublisher = topicsession.createPublisher(topic);
          
        javax.jms.TextMessage textmessage = topicsession.createTextMessage();
        textmessage.setText(s);
          
        //AppLogger.logMessage("FINEST","setting JMSMessageID..EIAMessageID");
        AppLogger.logMessage("FINEST","JMS Message "+s);
        textmessage.setJMSMessageID("EIAMessageID");
        if(s1 != null)
        {
            AppLogger.logMessage("FINEST",(new StringBuilder()).append("setting JMSCorrelationID..").append(s1).toString());
            textmessage.setJMSCorrelationID(s1);
        } else
        {
            AppLogger.logMessage("FINEST","setting JMSCorrelationID..EIA_EH_DEFAULT");
            textmessage.setJMSCorrelationID("EIA_EH_DEFAULT");
        }
       
        AppLogger.logMessage("FINEST","setting JMSCorrelationID..EIA_EH_DEFAULT");
        topicpublisher.publish(textmessage);
        AppLogger.logMessage("INFO", "published message on JMS Error Queue");
        AppLogger.logMessage("FINE","published message on EIA Error Topic - XA");
        }
        finally {
        if(topicpublisher != null)
            try
            {
                topicpublisher.close();
                topicpublisher = null;
            }
            catch(Exception exception)
            {
               System.out.println("Exception " +  exception.getLocalizedMessage());
              AppLogger.logMessage("SEVERE", exception.getLocalizedMessage());
            }
        if(topicsession != null)
            try
            {
                topicsession.close();
                topicsession = null;
            }
            catch(JMSException jmsexception)
            {
                System.out.println("problem closing topic session");
            }
        if(topicconnection != null)
            try
            {
                topicconnection.close();
                topicconnection = null;
            }
            catch(JMSException jmsexception1)
            {
                System.out.println("problem closing topic con");
            }
        }
        
    }

    public static void main(String args[])
        throws Exception
    {
       //System.out.println("Hi");
        new PublishJMS();
        System.out.println(Session.AUTO_ACKNOWLEDGE);
        //EIATopic("Vivek",null);
      
    }

    private static final String TOPICCONNECTIONFACTORYNAME = "jms/EIAErrorTopicCF";
    private static final String TOPICNAME = "jms/EIAErrorTopic";
}
