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
 echo "ERROR: Missing SAR File parameter.."
 $ANT_HOME/bin/ant -f $BUILD_FILE help-deploy-package 
 exit 1;
else
  export ANT_ARGUMENTS="-DsarFile=${1}"
fi;

if [ -z ${2} ]; then
 echo "INFO: Missing Revision parameter.."
else
  export ANT_ARGUMENTS="$ANT_ARGUMENTS -Drevision=${2}" 
fi;


if [ -z ${3} ]; then
 echo "INFO: Missing Deploy Plan parameter.."
else
  export ANT_ARGUMENTS="$ANT_ARGUMENTS -DdeployPlan=${3}" 
fi;


echo "Ant Arguments = $BUILD_FILE" $ANT_ARGUMENTS

$ANT_HOME/bin/ant -f $BUILD_FILE deploy-package $ANT_ARGUMENTS

