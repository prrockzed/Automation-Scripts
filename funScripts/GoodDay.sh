#!/bin/bash

clear

name=$(whoami)
toilet $name; espeak $name
read -n 1 -s
cmatrix
