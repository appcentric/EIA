package com.eia.soa.fault;

import java.io.*;
import java.util.*;
import javax.transaction.*;
import javax.naming.*;
import javax.jms.*;
import javax.rmi.PortableRemoteObject;

public class PublishJMSMessage
{
  public final static String JNDI_FACTORY =
    "weblogic.jndi.WLInitialContextFactory";
  public final static String JMS_FACTORY = "jms/EIAErrorTopicCF";
  public final static String TOPIC = "jms/EIAErrorTopic";
  protected TopicConnectionFactory tconFactory;
  protected TopicConnection tcon;
  protected TopicSession tsession;
  protected TopicPublisher tpublisher;
  protected Topic topic;
  protected TextMessage msg;
  public void init(Context ctx, String topicName) throws NamingException,
                                                         JMSException

  {
    tconFactory = (TopicConnectionFactory)PortableRemoteObject.
        narrow(ctx.lookup(JMS_FACTORY), TopicConnectionFactory.class);
    tcon = tconFactory.createTopicConnection();
    tsession = tcon.createTopicSession(false, Session.AUTO_ACKNOWLEDGE);
    topic =
        (Topic)PortableRemoteObject.narrow(ctx.lookup(topicName), Topic.class);
    tpublisher = tsession.createPublisher(topic);
    msg = tsession.createTextMessage();
    tcon.start();
  }
  public void send(String message) throws JMSException {
    msg.setText(message);
    tpublisher.publish(msg);
  }
  public void close() throws JMSException {
    tpublisher.close();
    tsession.close();
    tcon.close();
  }
  public static void EIATopic(String s) throws Exception {
    InitialContext ic = getInitialContext("");
    PublishJMSMessage ts = new PublishJMSMessage();
    ts.init(ic, TOPIC);
    ts.send(s);
    ts.close();
  }

  protected static InitialContext getInitialContext(String url) throws NamingException {
    Hashtable<String, String> env = new Hashtable<String, String>();
    env.put(Context.INITIAL_CONTEXT_FACTORY, JNDI_FACTORY);
    env.put(Context.PROVIDER_URL, url);
    env.put("weblogic.jndi.createIntermediateContexts", "true");
    //return new InitialContext(env);
    return new InitialContext();
  }
}
