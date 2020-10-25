#!/bin/bash
file="./sonar-project.properties"
if [ -f "$file" ]
then
    echo "$file found."

projectKey=`sed '/^\#/d' $file | grep 'sonar.projectKey'  | tail -n 1 | cut -d "=" -f2- | sed 's/^[[:space:]]*//;s/[[:space:]]*$//'`

projectKey=${projectKey/":"/"%3A"}
#echo project key is = $projectKey

else
    echo "$file not found."
fi

URL=http://<SONAR_SERVER_DOMAIN>/sonar/api/qualitygates/project_status?projectKey=$projectKey
#echo "url being hit is $URL"
RESPONSE=$(curl -X GET $URL)
PROJECTSTATUS=$( jq -r  '.projectStatus|.status' <<< "${RESPONSE}" )

echo $PROJECTSTATUS
if [ "$PROJECTSTATUS" = "OK" ];
 then
   echo "This means that the quality gate has passed"
 else
   echo "This means that quality gate has failed"
   exit 1
   fi
