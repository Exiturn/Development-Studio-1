#! /bin/bash
# counting how many characters are in a file
# Bryan Magistrado 09/11/18

if [ $# -lt 1 ] #robustness so that there has to be a value for both arguments
then
 echo "Usage: $0 needs an argument"
  echo "Please enter a file and which character to count"
 exit
fi

# initiating local variables to provide readability
character=$2
file=$1

cat $file | tr -cd $character | wc -c
exit
