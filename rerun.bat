@echo off
py rerunner.py True
if %errorlevel% neq 0 (
	pause
	exit)
cd Facetalk
py catcher.py
if %errorlevel% neq 0 (
	py facetalk.py
	cd ..
	py rerunner.py False
	pause
	exit)
py facetalk.py
if %errorlevel% neq 0 (
	pause
	exit)
cd ..
py rerunner.py False
if %errorlevel% neq 0 (
	pause
	exit)
py recode_finder.py
if %errorlevel% neq 0 (
	pause
	exit)
pause