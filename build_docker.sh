#!/bin/bash


echo "Please enter your github account and password."
echo -n "Account: "
read account
echo -n "Password: "
read -s password
echo
sudo docker build -t ventureum_test:latest IMAGE/ --build-arg "account=$account" --build-arg "password=$password"



