#!/bin/bash

while getopts r:k: flag; do
  case $flag in
    r)
      echo "-r used: $OPTARG";
      ;;
    k)
      echo "-k used: $OPTARG";
      ;;
    ?)
      exit;
      ;;
  esac
done