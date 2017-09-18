#!/bin/sh


EIA_HOME="${EIA_HOME:?EIA_HOME is not set}"
export EIA_HOME
echo "EIA_HOME=$EIA_HOME"

ANT_HOME="${ANT_HOME:?ANT_HOME is not set}"
export ANT_HOME
echo "ANT_HOME=$ANT_HOME"

JAVA_HOME="${JAVA_HOME:?JAVA_HOME is not set}"
export JAVA_HOME
echo "JAVA_HOME=$JAVA_HOME"

PATH=.:$PATH:$JAVA_HOME/bin:$ANT_HOME/bin
export PATH

CLASSPATH=.:$EIA_HOME/lib/EIAUtils.jar:$CLASSPATH
export CLASSPATH

export BUILD_FILE=${EIA_HOME}/config/EIABuild.xml

if [ -z ${1} ]; then
 echo "INFO: Missing mds.file.path parameter."
else
  export ANT_ARGUMENTS="-Dmds.file.dir=${1}"
fi;


echo "Ant Arguments = $BUILD_FILE" $ANT_ARGUMENTS

$ANT_HOME/bin/ant -f $BUILD_FILE undeployMDS $ANT_ARGUMENTS

