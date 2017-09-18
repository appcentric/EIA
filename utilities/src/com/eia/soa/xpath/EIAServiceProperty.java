package com.eia.soa.xpath;
/*$Header$*/
import java.util.List;
import oracle.fabric.common.xml.xpath.IXPathFunction;
import com.eia.soa.util.Configuration;
import com.eia.soa.util.PropertyNotFoundException;

import oracle.fabric.common.xml.xpath.IXPathContext;
import oracle.fabric.common.xml.xpath.XPathFunctionException;

public  class EIAServiceProperty implements IXPathFunction {

    private String getValue(Object o) throws XPathFunctionException {
        if (o instanceof String) {
          return ((String) o);
        } else {
          throw new XPathFunctionException("Unknown argument type.");
        }
      }

   
   //XPATH function
    public Object call(IXPathContext ixPathContext, List list) throws XPathFunctionException {
    
        if (list.size() != 2)     {  throw new XPathFunctionException( "Illegal Number of Argument passed for System Level Property."); }
         
          String _service = getValue((Object) (list.get(0)));
        String _serviceProperty = getValue((Object) (list.get(1)));
        
        try {
        return Configuration.getServiceProperty(_service,_serviceProperty);                            
        }
        catch (PropertyNotFoundException ex) {
           return "_no_value_";
        }              
    }
}
