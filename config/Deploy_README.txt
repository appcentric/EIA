********************************************
EIA Syntax to create SOA Archive
********************************************
Usage (Windows)


EIACompileSAR.bat <compositeDir> <compositeName> <deployDir>


Usage (Linux)

EIACompileSAR.sh <compositeDir> <compositeName> <deployDir>



Params
 1. CompositeDir - Mandatory Parameter. The absolute path of the directory that holds composite.xml
 2. CompositeName - Mandatory Parameter. The name of the composite.
 3. Deploy directory - Optional Parameter. If this path is not specified, then the SOA ARchive (SAR) will be created in the compositeDir/deploy folder

~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For E.g (Windows)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

%EIA_HOME%/config/EIACompileSAR.bat %EIA_HOME%/Implementation/Infrastructure/EIAAsyncErrorHandlingBPELProcess EIAAsyncErrorHandlingBPELProcess C:\WI_Applications\BPEL_APPS\Packs 1.0


~~~~~~~~~~~~~~~~~~~~~~~~~~~~
E.g.(Linux)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

sh $EIA_HOME/config/EIACompileSAR.sh $EIA_HOME/Implementation/Infrastructure/EIAAsyncErrorHandlingBPELProcess EIAAsyncErrorHandlingBPELProcess /tmp/Packs


********************************************
EIA Syntax to deploy a SOA Archive
********************************************
Usage (Windows)

EIADeploySAR.bat <sarFile> <revision> <deployPlan>

Usage (Linux)

EIADeploySAR.sh <sarFile> <revision> <deployPlan>

Params
 1. sarFile - Mandatory Parameter. The absolute path of the directory that holds SAR file including the SAR file
 2. revision - Optional Parameter. Defaults to 1.0 if not speicfiied
 3. Deploy Plan - Optional Parameter. Name of the Deployment plan file to be used.
                  If speicified then it will extract the configuraiton from the SOA Archive and use it to deploy.
		  If not speicified then no deploy plan is used.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For E.g (Windows)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

%EIA_HOME%/config/EIAdeploySAR.bat  %EIA_HOME%/Implementation/Infrastructure/EIAAsyncErrorHandlingBPELProcess/deploy/sca_EIAAsyncErrorHandlingBPELProcess.jar 1.0 WI_CfgPlan_DEV.xml


~~~~~~~~~~~~~~~~~~~~~~~~~~~~
E.g.(Linux)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 


$EIA_HOME/config/EIAdeploySAR.sh  /tmp/Packs/sca_EIAAsyncErrorHandlingBPELProcess.jar 1.0 WI_CfgPlan_DEV.xml




********************************************
EIA Syntax to deploy SOA Composite
********************************************
Usage (Windows)

EIADeploy.bat <CompositeDir> <CompositeName> <Revision> <Plan>


Usage (Linux)

EIADeploy.sh <CompositeDir> <CompositeName> <Revision> <Plan>

Params
 1. CompositeDir - Mandatory Parameter. The absolute path of the directory that holds composite.xml
 2. CompositeName - Mandatory Parameter. The name of the composite.
 3. Revision - Mandatory Parameter. The revision ID of the composite
 4. Deployment Plan - Optional Parameter. 

For E.g (Windows)

Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

%EIA_HOME%/config/EIADeploy.bat %EIA_HOME%/Implementation/Infrastructure/EIAAsyncErrorHandlingBPELProcess EIAAsyncErrorHandlingBPELProcess 1.0

You could set the ANT_HOME, EIA_HOME and JAVA_HOME as mentioned below
set EIA_HOME=W:/EIA
set ANT_HOME=C:/oracle/wls/jdeveloper/ant
set JAVA_HOME=C:/oracle/wls/jdk160_18


E.g.(Linux)

Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

$ sh $EIA_HOME/config/EIADeploy.sh $EIA_HOME/Implementation/Infrastructure/EIAAsyncErrorHandlingBPELProcess EIAAsyncErrorHandlingBPELProcess 1.0

You could set the ANT_HOME, EIA_HOME and JAVA_HOME as mentioned below
$ export EIA_HOME=/product/oracle/eia
$ export ANT_HOME=/product/oracle/wls/jdeveloper/ant
$ export JAVA_HOME=/product/oracle/wls/jdk


This will deploy the composite and will create a log file in the $EIA_HOME/logs/deploy directory




********************************************
EIA Syntax to deploy MDS
********************************************
Usage (Windows)

EIADeployMDS.bat <MDSPath> <MDSFile>

Usage (Linux)

EIADeployMDS.sh <MDSPath> <MDSFile>


Params
 1. MDSPath - Optional. The absolute path of the file that needs to be considered. 
	E.g. EIAMetadata/EO/common. If value is not specified, the script will assume entire EIAMetata. 
 2. MDSFile - Optional Parameter. The file that needs to loaded into the MDS repository. 
	 If this parameter not specified then all the files under MDSPath will considered for deploying to MDS. 
	 This parameter has no effect on undeploy action. Undeploy action will undeploy all the files under MDSPath mentioned.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For E.g (Windows)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

%EIA_HOME%/config/EIADeployMDS.bat

The above command will deploy all the artifiacts from your local machined under EIA_HOME/EIAMetadata into the MDS repository /apps/EIAMetadata

%EIA_HOME%/config/EIADeployMDS.bat EIAMetadata/AO/EBiz WIOrderAOV1.xsd

The above command will deploy WIorderAOV1.xsd under EIA_HOME/EIAMetadata/AO/EBiz in your local machine the MDS repository /apps/EIAMetadata/AO/EBiz/WIOrderAOV1.xsd



~~~~~~~~~~~~~~~~~~~~~~~~~~~~
E.g.(Linux)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 

sh $EIA_HOME/config/EIADeployMDS.sh

The above command will deploy all the artifiacts from your local machined under EIA_HOME/EIAMetadata into the MDS repository /apps/EIAMetadata

sh $EIA_HOME/config/EIADeployMDS.sh EIAMetadata/AO/EBiz WIOrderAOV1.xsd

The above command will deploy WIorderAOV1.xsd under EIA_HOME/EIAMetadata/AO/EBiz in your local machine the MDS repository /apps/EIAMetadata/AO/EBiz/WIOrderAOV1.xsd





********************************************
EIA Syntax to Un deploy MDS
********************************************
Usage (Windows)

EIAUnDeployMDS.bat <MDSPath>

Usage (Linux)

EIAUnDeployMDS.sh <MDSPath>


Params
 1. MDSPath - Optional. The absolute path of the file that needs to be considered. 
	E.g. EIAMetadata/EO/common. If value is not specified, the script will assume entire EIAMetata. 

~~~~~~~~~~~~~~~~~~~~~~~~~~~
For E.g (Windows)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Ensure that the EIA_HOME, ANT_HOME and JAVA_HOME are set properly and the EIABuild.properties file has the required entries 


%EIA_HOME%/config/EIAUnDeployMDS.bat

The above command will remove all the artifiacts  under /apps/EIAMetadata from MDS repository 

%EIA_HOME%/config/EIAUnDeployMDS.bat EIAMetadata/AO/EBiz

The above command will remove all the artifiacts under /apps/EIAMetadata/AO/EBiz from MDS repository 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~
E.g.(Linux)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sh $EIA_HOME/config/EIAUnDeployMDS.sh

The above command will remove all the artifiacts  under /apps/EIAMetadata from MDS repository 

sh $EIA_HOME/config/EIAUnDeployMDS.sh EIAMetadata/AO/EBiz

The above command will remove all the artifiacts under /apps/EIAMetadata/AO/EBiz from MDS repository 


********************************************
EIA Syntax to create EIAUtils.jar (EIA Utility Jar file)
********************************************

You could set the ANT_HOME, EIA_HOME and JAVA_HOME as mentioned below before running the ANT Build

~~~~~~~~~~~~~~~~~~~~~~~~~~~~
E.g.(Linux)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

$ export EIA_HOME=/product/oracle/eia
$ export ANT_HOME=/product/oracle/wls/jdeveloper/ant
$ export JAVA_HOME=/product/oracle/wls/jdk

$ $ANT_HOME/ant -f $EIA_HOME/config/EIAJARBuild.xml all

~~~~~~~~~~~~~~~~~~~~~~~~~~~
For E.g (Windows)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set EIA_HOME=W:/EIA
set ANT_HOME=C:/oracle/wls/jdeveloper/ant
set JAVA_HOME=C:/oracle/wls/jdk160_18

%ANT_HOME%/bin/ant -f %EIA_HOME%/config/EIAJARBuild.xml all
