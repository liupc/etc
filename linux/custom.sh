export SCALA_HOME=/opt/soft/scala-2.11.7
export JAVA_HOME=/opt/soft/jdk1.7.0_75
#export JAVA_HOME=/opt/soft/jdk1.6.0_45
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
# export PATH=$PATH:/opt/soft/jdk1.6.0_45/bin
export CLASSPATH=$CLASSPATH:$JAVA_HOME/lib/*
export CLASSPATH=$CLASSPATH:$SCALA_HOME/lib/*
# export CLASSPATH=$CLASSPATH:/opt/soft/jdk1.6.0_45/lib

#export M2_HOME=/opt/soft/apache-maven-3.3.1
export M2_HOME=/opt/soft/apache-maven-3.3.9
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export SBT_OPTS="-Dsbt.override.build.repos=true -Dhttp.proxyHost=fq.mioffice.cn -Dhttp.proxyPort=3128"
export PATH=$PATH:$M2
export ANT_HOME=/opt/soft/apache-ant-1.9.4
export PATH=$PATH:$ANT_HOME/bin
export IDEA_HOME=$HOME/idea-IU-133.1711
export PATH=$PATH:$IDEA_HOME/bin
