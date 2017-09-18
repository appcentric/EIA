package com.eia.soa.util;
/*$Header$*/

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.io.StringWriter;

import javax.xml.transform.Source;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;

import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Element;


public class AppLogger2 {

    public AppLogger2() {
    }

    /**
     * @param xmlelement
     */
    public static void logErrorDB(Element xmlelement) throws Exception {

            Connection con = null;
            StringWriter stringwriter;
            String fault_xml = new String();
        try {

            String dsName = Configuration.getSystemModuleProperty("ErrorHandler", 
                                                      "ERROR.DB_DSNAME");
            con = DBUtil.getConnection(dsName);
            String errorTable = Configuration.getSystemModuleProperty("ErrorHandler", 
                                                      "ERROR.DB_ERROR_TABLE");
            String sql = 
                " Insert into " + errorTable + "(error_id,timestamp,fault_xml) values" + 
                "(" + errorTable + "_s.nextVal" + ",?,?)";

            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setTimestamp(1,getCurrentJavaSqlTimestamp())  ;
              
            if (xmlelement != null) 
            {
            stringwriter = new StringWriter();
             Source domSource = new DOMSource(xmlelement);
              StreamResult streamResult = new StreamResult(stringwriter);
                Transformer t = TransformerFactory.newInstance().newTransformer();
                t.transform(domSource, streamResult);
            fault_xml = stringwriter.toString();
            }
            ps.setString(2, fault_xml);
            
            ps.executeUpdate();
            ps.close();
            con.close();
            con=null;
      }
      
            finally 
            {
              if (con != null) con.close(); 
            }

    }

    public static java.sql.Timestamp getCurrentJavaSqlTimestamp() {
        java.util.Date date = new java.util.Date();
        return new java.sql.Timestamp(date.getTime());
      }



}
