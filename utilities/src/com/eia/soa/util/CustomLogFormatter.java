package com.eia.soa.util;
/*$Header$*/
import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;


public class CustomLogFormatter extends Formatter {
    public String format(LogRecord record) {
            String recordStr = "{Date} " + new Date() + " {Log Level} "
                                + record.getLevel() + " {Class} "
                                + record.getSourceClassName() + " {Method} "
                                + record.getSourceMethodName() + " {Message} "
                                + record.getMessage() + "\n";
                        return recordStr;
                        
    }
 
}

