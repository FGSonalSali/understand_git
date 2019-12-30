#!/bin/bash
cd proxies/
for f in *; do
  cd "$f"
  pwd
  pass="Secret123"
#  var=$(apigeetool listdeployments -L "http://192.168.2.40:8080" -u trial@apigee.com -o trial -n $f -p $pass)
#echo $var

#IFS=' ' read -a arr<<< "${var}"
#revision_stable=${arr[2]}

#echo $revision_stable

  new_deployment=$(apigeetool deployproxy -L "http://192.168.2.40:8080" -u trial@apigee.com -o trial -e test -n $f -d . -p $pass -k)
  echo $new_deployment
  #cd tests/
  #for t in *;do
#	  jmeter.sh -n -t $t -l $f.log
  #done
  #cd ..
  cd ..

#cd ${JMETER_HOME}/bin
#pwd

#ls
#bash jmeter.sh -n -t Status_check.jmx -l ApigeeDemo.log
#bash jmeter.sh -n -t code_checkjmx.jmx -l ApigeeDemo.log
#echo executed

done
