#!/bin/bash
# Authors: Rebecca Rivera
# Date: 2/7/2020

#Problem 1 Code:
#Note that lines to ask for user input are commented out so that the regex can be shown in the script

#echo Enter Regualr Expression: 
#read regex

#find all phone numbers
regex1=[0-9]{3}-[0-9]{3}-[0-9]{4}
#find all email addresses
regex2=[a-zA-Z0-9]+@[a-zA-Z]+\.[a-z]{3}
#find all 303 phone numbers
regex3=[303]{3}-[0-9]{3}-[0-9]{4}
#find all emails from geocities.com
regex4=@geocities.com

#echo Enter File Name:
#read filename
filename=regex_practice.txt

#echo All phone numbers: 
#egrep $regex1 $filename
echo Number of phone numbers
egrep -c $regex1 $filename

#echo All email addresses:
#egrep $regex2 $filename
echo Number of email addresses
egrep -c $regex2 $filename

echo All 303 phone numbers
egrep $regex3 $filename

#save all emails from geocities.com to text file
egrep $regex4 $filename >> email_results.txt
