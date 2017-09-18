#
# The script must be executed in WLST offline mode. Restart the ADMIN SERVER
# post script execution for the changes to take effect.  
#
#-------------------------------------------------------------------------------
 
# Purpose: Sample Python Script to rewire SOA Suite 11g PS6 JDBC data sources   
#          to use Active GridLink for RAC  
#          
# Usage  : soa-agl-ds-rewire.py <domain_path> 
#
#-----------------------------------------------------------------------------
 
import os
import sys
 
#===========================================================================
#   List of SOA/OSB Datasources and JDBC drivers
#===========================================================================
 
soaDS_list = \
   {
   'OraSDPMDataSource':(4,'D','ORASDPM'),                        
   'SOADataSource':(4,'X','SOAINFRA'),                            
   'EDNDataSource':(4,'X','SOAINFRA'),                            
   'EDNLocalTxDataSource':(4,'D','SOAINFRA'),                     
   'SOALocalTxDataSource':(4,'D','SOAINFRA'),                     
   'BAMAQDataSource':(2,'D','SOAINFRA'),                      
   'mds-soa':(5,'D','MDS'),                                  
   'mds-owsm':(15,'D','MDS')                                 
   }
 
 
jdbcDrv = \
   {
   'D':'oracle.jdbc.OracleDriver',
   'X':'oracle.jdbc.xa.client.OracleXADataSource'
   }
 
#==========================================================================
# Function to configure WLS JDBC data source to use Active GridLink for RAC
#==========================================================================
def rewire_DS(ds, prefix, service,\
            listeners, dbsch_pwd,\
            protocol, ons_list = None):
 
    #print("Configuring %s:" % ds)
    drvt = soaDS_list[ds][1]
    #print("Driver Type %s:" % drvt)
    drv  = jdbcDrv[drvt]
    #print("Driver Name %s:" % drv)
    
    if ons_list is None:
         #print("Non RAC Grid Link Configuration.. ")
         url = 'jdbc:oracle:thin:@'+listeners.split(",")[0]+'/'+service
    else:
         ### RAC Gridlink config -- can either use SCAN hosts (ons_list) or all listeners
         #print("RAC Grid Link Configuration.. ")

         url = "jdbc:oracle:thin:@(DESCRIPTION_LIST = (LOAD_BALANCE = off) (FAILOVER = on)"
         for lsn in listeners.split(","):
             #print(" LSN = %s: " % lsn)
             host_port = lsn.split(':')
             host = host_port[0]
             port = host_port[1]
             #print("host => %s Port => %s " % (host,port))            
             rac_service = host_port[2]
             print("host => %s Port => %s service => %s" % (host,port,rac_service))             
             url = url + "(DESCRIPTION = (CONNECT_TIMEOUT = 10)(TRANSPORT_CONNECT_TIMEOUT = 3)(RETRY_COUNT = 3) (ADDRESS_LIST = (LOAD_BALANCE = on)(ADDRESS =(PROTOCOL = %s)(HOST = %s)(PORT = %s)))(CONNECT_DATA = (SERVICE_NAME = %s)))" % (protocol,host,port,rac_service)
         
         url = url + ")"
             
         #print("URL %s:" % url)
    try:
        user = "%s_%s" % (prefix, soaDS_list[ds][2])
        cd('/JDBCSystemResource/'+ds+'/JdbcResource/'+ds)
        cd('JDBCDriverParams/NO_NAME_0')
 
        set('URL',url)
 
        set('DriverName',drv)
 
        cd('/JDBCConnectionPool/'+ds)
        set('Password',dbsch_pwd)
 
        cd('/JDBCSystemResource/'+ds+'/JdbcResource/'+ds+'/JDBCDriverParams/NO_NAME_0/Properties/NO_NAME_0/Property')
 
        cd('user')
        set('Value',user)
 
        if ons_list:
            onsl = (str(ons_list).strip("[]")).replace("'","").replace(" ","")
            cd('/JDBCSystemResource/'+ds+'/JdbcResource/'+ds)
 
            try:
                cd('JDBCOracleParams/NO_NAME_0')
                set('FanEnabled','true')
                set('OnsNodeList',onsl)
 
            except:
                print("Creating Gridlink DS")
                cd('/JDBCSystemResource/'+ds+'/JdbcResource/'+ds)
                create('JDBCOracleParams','JDBCOracleParams')
                cd('JDBCOracleParams/NO_NAME_0')
                set('FanEnabled','true')
                set('OnsNodeList',onsl)
 
            print("Gridlink for %s set to use ONS: %s" % (ds,onsl))
        else:
            gridl = False
            try:
                #Check for previous Gridlink Setup
                cd('JDBCOracleParams/NO_NAME_0')
                gridl = True
            except:
                print "No Gridlink found"
            if(gridl):
                set('FanEnabled','false')
                set('OnsNodeList','')
 
        print("DataSource %s has been configured." % ds)
    except:
        dumpStack()		
 
########################################################################
# MAIN 
########################################################################
 
wlsDomainHome= " "
 
# prefix used by the SOA schemas for e.g. TEST_SOAINFRA
schema_prefix= "SOA"
 
# SOA database service name
service_name= "nusoad.sps.nucorsteel.local"
 
# comma separated list of database listener host:port values; specify atleast one
listeners= "sps-soadev-vip:1521:nusoad.sps.nucorsteel.local,sps-soapstby-vip:1521:soastbp.sps.nucorsteel.local"
 
# ONS_List is used for RAC db only; can be left 'empty' otherwise
# e.g. for RAC - DBHOST-NODE1:6200,DBHOST-NODE2:6200
ons_list="sps-soadev-vip:6200,sps-soapstby-vip:6200"
 
# protocol 'TCP' or 'SDP' for Exadata
protocol= "TCP"
 
# for simplicity, we will assume all SOA schema passwords are set to the same value;
# ideally the passwords must be prompted during script execution
soa_sch_passwd= "iLi20sm4B"							 
 
try:
      wlsDomainHome = sys.argv[1]
except:
      print 'WARNING:Not all command line parameters specified'
 
if (wlsDomainHome == " "):      
      sys.exit()
 
# read Domain
try:
      readDomain(wlsDomainHome)
      print '***** Read Domain: %s' % wlsDomainHome
except:
      print 'XXXXX Could not Read Domain: %s' % wlsDomainHome
      exit()
  
try:
 
      ### Rewire SOA DataSources to use Active GridLink
      print("\n Begin DataSource Re-wiring")
      for ds in soaDS_list:
          try:
              rewire_DS(ds, schema_prefix, service_name, listeners, soa_sch_passwd, protocol, ons_list)
          except:
              print("Configuring DataSource %s failed." % ds)
 
      print 'Updating and Closing Domain'
      updateDomain()
      closeDomain()
 
except Exception, detail:
      print 'FINAL Exception:', detail
      dumpStack()
 
exit()