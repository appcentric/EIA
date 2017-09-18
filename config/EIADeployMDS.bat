
@IF [%EIA_HOME%] == [] (@GOTO :EIA_ENV_MISSING)

@SET filename="%EIA_HOME%\logs\deploy\%date:~10,4%%date:~4,2%%date:~7,2%%time:~0,2%%time:~3,2%%time:~6,2%%time:~9,2%.txt"

@IF [%ANT_HOME%] == [] (@GOTO :ANT_HOME_ENV_MISSING)

@IF [%JAVA_HOME%] == [] (@GOTO :JAVA_HOME_ENV_MISSING)


@ SET ANT_ARGUMENTS=

@IF NOT [%1] == [] (@ SET ANT_ARGUMENTS=%ANT_ARGUMENTS% -Dmds.file.dir=%1)
@IF NOT [%2] == [] (@ SET ANT_ARGUMENTS=%ANT_ARGUMENTS% -Dmds.file=%2)

@ set PATH=.:%PATH%;%JAVA_HOME%/bin;%ANT_HOME%/bin

@ set CLASSPATH=.;%EIA_HOME%/lib/EIAUtils.jar;%ANT_HOME%/lib;%CLASSPATH%

%ANT_HOME%\bin\ant -f %EIA_HOME%\config\EIABuild.xml deployMDS %ANT_ARGUMENTS%

:EIA_ENV_MISSING
@echo ****************** ERORR ERROR ERROR ******************
@ECHO EIA_HOME is not set. Please set the EIA Home
@echo ****************** ERORR ERROR ERROR ******************
@echo There are some errors in the deployment. 
SHIFT
@GOTO :ENDFILE

:ANT_HOME_ENV_MISSING
@echo ****************** ERORR ERROR ERROR ******************
@ECHO ANT_HOME is not set. Please set the ANT Home          
@echo ****************** ERORR ERROR ERROR ******************
@echo There are some errors in the deployment.               
@SHIFT 
@GOTO :ENDFILE

:JAVA_HOME_ENV_MISSING
@echo ****************** ERORR ERROR ERROR ****************** 
@ECHO JAVA_HOME is not set. Please set the JAVA Home          
@echo ****************** ERORR ERROR ERROR ******************
@echo There are some errors in the deployment.               
@SHIFT 
@GOTO :ENDFILE


:ENDFILE
@echo End of Deployment Process >> %filename%
@echo =============================================================== >> %filename%
