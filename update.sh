#!/bin/bash
echo "Stoping any running instances. . ."
docker stop portfolio
docker rm portfolio
echo "DONE!"
echo "- - - - - - - - - - - - - - - - - -"
echo "Updating from git . . ."
git pull
echo "DONE!"
echo "- - - - - - - - - - - - - - - - - -"
echo "Starting detached, forcing a new build. . ."
docker build -t robotbuxton/portfolio .
docker run -d -p 80:3000 --name=portfolio robotbuxton/portfolio
