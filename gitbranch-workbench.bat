@echo off
title This is your first batch script.
Rem This should be a comment in a batch script. 
:: This is another way to wrtie a comment.
for /f %%A in ('
	git branch --show-current
') do set "branch=%%A"
::echo "branch is %branch%"

set developerBranch=develop
set mainBranch=main

::echo %developerBranch%
::echo %mainBranch%

if %branch%==%mainBranch% echo CHECK branch is main
if %branch%==%developerBranch% echo CHECK branch is develop
if not %branch%==%mainBranch% (
	if not %branch%==%developerBranch% (
		echo branch is %branch%
	)
)