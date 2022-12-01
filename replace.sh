#!/bin/bash

function usage() {
  echo
  echo "NAME"
  echo "replace.sh"
  echo " replace.sh \"*.tips-session_2\""
  exit 0
}

if [ "$1" == "-h" -o "$1" == "--help" ] ;
then
 usage
fi

FILES_PATTERN=${1:-*.feature}

echo ''
echo "Migrating Spring HATEOAS references to 1.0 for files : $FILES_PATTERN"
echo ''

FILES=`find . -name "$FILES_PATTERN"`

EXPRESSION="
s/navigate browser to \"\([^\"]*\)\" url/visit \"\1\" url/g;
s/switch window to last opened/switch to last window/g;
s/page should contain the following contents:/verify below texts are displayed:/g;
"

for FILE in $FILES
do
    echo "Adapting $FILE"
    # echo $EXPRESSION
    sed -i "" -e "$EXPRESSION" $FILE
done

echo
echo 'Done!'
echo
echo 'After that, review your changes, commit and code on! \ö/'