package com.eia.soa.util;
/*$Header$*/
import java.sql.Connection;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBUtil {
    public DBUtil() {
    }
    public static Connection getConnection(String dsName)
        throws Exception
    {
        Connection connection = null;
        try
        {
            if(ds == null)
                ds = getEIADataSource(dsName);
            connection = ds.getConnection();
        }
        catch(Exception exception)
        {
            throw new RuntimeException(exception);
        }
        return connection;
    }

    private static synchronized DataSource getEIADataSource(String dsName)
        throws Exception
    {
        if(ds != null)
            return ds;
        try
        {
            InitialContext initialcontext = new InitialContext();
            ds = (DataSource)initialcontext.lookup(dsName);
        }
        catch(NamingException namingexception)
        {
            throw new RuntimeException(namingexception);
        }
        return ds;
    }

    protected static DataSource ds = null;

    }
