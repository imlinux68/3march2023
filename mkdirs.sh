#!/bin/bash

function makedirs () {
echo "1.create dirs"
cd ~
mkdir -p "/home/user/Cloud/{DB/{DynamoDB,RDS},serverless/{Aurora,cloudfront,Fargate}}"

echo "2. move"
mv ~/Cloud/serverless/Aurora ~/Cloud/DB/

echo "3. rename cloudfront to lambda"
mv ~/Cloud/serverless/cloudfront ~/Cloud/serverless/lambda

echo "4. insert text"
echo  'Data migration is the process of moving data from one location to another, one
format to another, or one application to another. Generally, this is the result of
introducing a new system or location for the data' > ~/Cloud/DB/factDB

echo "5. show content"
cat ~/Cloud/DB/factDB

echo "6. insert into serverless"
echo 'Serverless is a cloud-native development model that allows developers to build
and run applications without having to manage servers.' > ~/Cloud/serverless/lambda/factserverless

echo "7. copy content"
cat ~/Cloud/serverless/lambda/factserverless > ~/Cloud/serverless/Fargate

echo "8. list processes in hierrarchy"
pstree

echo "9.delete cloud dir"
echo "all dirs are destoryind!!!!!"
sleep 3
rm -rvf ~/Cloud 
}
















