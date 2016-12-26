#!/usr/bin/env bash

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export M2_HOME=/opt/soft/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin
export PATH=${JAVA_HOME}/bin/:$PATH
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/rt.jar:$CLASSPATH
export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/server:$LD_LIBRARY_PATH
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
