package com.eia.soa.util;
/*$Header$*/
import java.io.PrintStream;
import oracle.mds.config.*;
import oracle.mds.core.*;
import oracle.mds.exception.MDSException;
import oracle.mds.persistence.MetadataStore;
import oracle.mds.persistence.stores.db.DBMetadataStore;
import org.w3c.dom.Document;

public class MDSImpl
{

    public MDSImpl()
    {
        sess = null;
    }

    private MetadataObject getMetadataObject(String s)
    {
        MetadataObject metadataobject = null;
        Object obj = null;
        Object obj1 = null;
        Object obj2 = null;
        try
        {
            MetadataStore metadatastore = getDBMetaDataStoreObject();
            PConfig pconfig = new PConfig(metadatastore);
            MDSConfig mdsconfig = new MDSConfig(null, pconfig, null);
            MDSInstance mdsinstance = MDSInstance.getOrCreateInstance("MDS_INSTANCE", mdsconfig);
            sess = mdsinstance.createSession(new SessionOptions(IsolationLevel.READ_COMMITTED, null, new CustConfig(new CustClassListMapping[0])), null);
            metadataobject = sess.getMetadataObject(s);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        return metadataobject;
    }

    private MetadataStore getDBMetaDataStoreObject()
    {
        DBMetadataStore dbmetadatastore = null;
        try
        {
            dbmetadatastore = new DBMetadataStore("jdbc/mds/MDS_LocalTxDataSource", "soa-infra");
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        return dbmetadatastore;
    }

    public Document getUpdatableDocument(String s)
    {
        try
        {
            MetadataObject metadataobject = getMetadataObject(s);
            metadataobject = sess.getMutableMO(metadataobject.getReference());
            Document document = metadataobject.getDocument();
            return document;
        }
        catch(MDSException mdsexception)
        {
            mdsexception.printStackTrace();
        }
        return null;
    }

    public Document getReadOnlyDocument(String s)
    {
        try
        {
            MetadataObject metadataobject = getMetadataObject(s);
            Document document = metadataobject.getDocument();
            return document;
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        return null;
    }

    public void updateSession()
    {
        try
        {
            sess.flushChanges();
        }
        catch(Exception exception)
        {
            System.out.println(exception);
        }
    }

    MDSSession sess;
}
