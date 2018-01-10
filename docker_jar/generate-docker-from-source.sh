#!/usr/bin/env bash

cd ..

echo '*****************************'
echo 'Compiling Scala project...'
echo '*****************************'
sbt clean assembly

echo '*********************'
echo 'Copying libraries...'
echo '*********************'
rm docker_jar/lib/fbid2017-assembly-0.1.jar
cp target/scala-2.11/fbid2017-assembly-0.1.jar docker_jar/lib/fbid2017-assembly-0.1.jar

cd docker_jar

echo '*************************'
echo 'Building Docker image...'
echo '*************************'
docker build . --tag=recommender