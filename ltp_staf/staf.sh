base_java_path='/usr/lib/jvm/java-8-openjdk-ppc64el/jre/bin'
java_path=''
   if [ -d $base_java_path ]; then
      java_path=$base_java_path
   else
      if [ -e /kte/tools/apps/install.java ]; then 
         java_path=$ibm_java_path/bin
      else
         echo "You must install Java."
         exit 0
      fi
   fi
in_string=`export | grep PATH`
in_string1=`echo "$in_string" | grep "declare -x PATH="`
string=`echo "$in_string1" | grep "/usr/local/staf/bin"`
if [ ! $? = 0 ]; then
   PATH=/usr/local/staf/bin:$PATH
fi
string=`echo "$in_string1" | grep "/usr/local/staf/tools"`
if [ ! $? = 0 ]; then
   PATH=/usr/local/staf/tools:$PATH
fi
string=`echo "$in_string1" | grep $java_path`
if [ ! $? = 0 ]; then
   PATH=$java_path:$PATH
fi

in_string1=`echo "$in_string" | grep "declare -x CLASSPATH="`
string=`echo "$in_string1" | grep "/usr/local/staf/lib/JSTAF.jar"`
if [ ! $? = 0 ]; then
   CLASSPATH=/usr/local/staf/lib/JSTAF.jar:$CLASSPATH
fi
string=`echo "$in_string1" | grep "/usr/local/staf/services/STAX.jar"`
if [ ! $? = 0 ]; then
   CLASSPATH=/usr/local/staf/services/STAX.jar:$CLASSPATH
fi
string=`echo "$in_string1" | grep "/usr/local/staf/services/STAFEvent.jar"`
if [ ! $? = 0 ]; then
   CLASSPATH=/usr/local/staf/services/STAFEvent.jar:$CLASSPATH
fi
string=`echo "$in_string1" | grep "/usr/local/staf/services/STAXMon.jar"`
if [ ! $? = 0 ]; then
   CLASSPATH=/usr/local/staf/services/STAXMon.jar:$CLASSPATH
fi
string=`echo "$in_string" | grep "declare -x LD_LIBRARY_PATH=" | grep "/usr/local/staf/lib"`
if [ ! $? = 0 ]; then
   LD_LIBRARY_PATH=/usr/local/staf/lib:$LD_LIBRARY_PATH
fi

STAFCONVDIR=/usr/local/staf/codepage

export PATH CLASSPATH LD_LIBRARY_PATH STAFCONVDIR
setsid /usr/local/staf/bin/STAFProc >/tmp/STAFProc.out 2>&1 &
set -o vi
