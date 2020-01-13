#!/bin/bash
docker build -t robotbuxton/portfolio .
docker run -d -p 80:3000 --name=portfolio robotbuxton/portfolio
