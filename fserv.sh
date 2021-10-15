#! /bin/bash

read -p "enter the domain: " dom

echo "processing.....20%....."
echo "processing......50%........"
echo "processing........70%........."
echo "processing..........100%..........."

curl -v https://app.netlify.com/.netlify/functions/verify?domain=$dom 2>&1 | grep '"server":'
