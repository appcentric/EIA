package com.eia.soa.util;
/*$Header$*/
public class PropertyNotFoundException extends Exception
{

    public PropertyNotFoundException()
    {
    }

    public PropertyNotFoundException(String s)
    {
        super(s);
    }

    public PropertyNotFoundException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public PropertyNotFoundException(Throwable throwable)
    {
        super(throwable);
    }
}