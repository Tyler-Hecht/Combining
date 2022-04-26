#!/bin/bash
python3 rerunner.py True 
if [ $? -ne 0 ]; then exit 0; fi 
cd combining 
python3 catcher.py 
if [ $? -ne 0 ] 
then 
	echo 
	cd .. 
	python3 rerunner.py False 
	exit 0 
fi 
python3 combining.py 
if [ $? -ne 0 ]; then exit 0; fi 
cd .. 
python3 rerunner.py False 
if [ $? -ne 0 ]; then exit 0; fi 
python3 recode_finder.py 
if [ $? -ne 0 ]; then exit 0; fi 