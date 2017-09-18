package com.eia.soa.xpath;
/*$Header$*/
import java.util.List;
import oracle.fabric.common.xml.xpath.IXPathFunction;
import com.eia.soa.util.Configuration;
import com.eia.soa.util.PropertyNotFoundException;

import oracle.fabric.common.xml.xpath.IXPathContext;
import oracle.fabric.common.xml.xpath.XPathFunctionException;

public  class EIASystemProperty implements IXPathFunction {

    private String getValue(Object o) throws XPathFunctionException {
        if (o instanceof String) {
          return ((String) o);
        } else {
          throw new XPathFunctionException("Unknown argument type.");
        }
      }

   
   //XPATH function
    public Object call(IXPathContext ixPathContext, List list) throws XPathFunctionException {
    
        if (list.size() != 1)     {  throw new XPathFunctionException( "Illegal Number of Argument passed for System Level Property."); }
         
          String _systemProperty = getValue((Object) (list.get(0)));
        
        try {
        return Configuration.getSystemProperty(_systemProperty);                            
        }
        catch (PropertyNotFoundException ex) {
           return "_no_value_";
        }              
    }
}
