#!/bin/bash
mvn clean 
git add .
echo "Enter commit message"
read msg
git commit -m "$msg"
git remote add origin https://github.com/ravikum2/repository.git
git push origin master
mvn deploy
mvn sonar:sonar
mvn tomcat7:deploy
