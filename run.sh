cd src
/Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home/bin/javac Main.java
JAVA_OPTS="-Xmx2048m"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote=true"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.port=7091"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.rmi.port=7091"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.authenticate=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.ssl=false"
JAVA_OPTS="$JAVA_OPTS -Xlog:gc*=debug:file=gc.log:utctime,uptime,tid,level:filecount=10,filesize=128m"
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=heapdump.hprof"
JAVA_OPTS="$JAVA_OPTS -XX:StartFlightRecording=disk=true,dumponexit=true,filename=recording.jfr,maxsize=1024m,maxage=1d,settings=profile,path-to-gc-roots=true"

/Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home/bin/java $JAVA_OPTS Main