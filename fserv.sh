#! /bin/bash

read -p "enter the domain: " dom

echo "processing.........."

curl -v https://app.netlify.com/.netlify/functions/verify?domain=$dom 2>&1 | grep '"server":'
