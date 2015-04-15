@echo off
cls

REM Delete Student Profiles only Script version 2.4
REM Script Created by Ian Hudson 03/2013


:main
cls
Echo.
Echo  *************************************************************************
Echo  *                                                                       *
Echo  * Press 1 to Run a list of Student Profiles to delete w/o deleting them *
Echo  *            See log.txt for report                                     *
Echo  *                                                                       *
Echo  * Press 2 to Delete Student Profiles then end the program               *
Echo  *                                                                       *
Echo  * Press 3 to Delete Student Profiles perpetually                        *
Echo  *                                                                       *
Echo  * Press Q to Quit                                                       *
Echo  *                                                                       *
Echo  *************************************************************************
Echo.

IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)


:64BIT

CHOICE /N /C 123Q /M "[Press 1, 2, 3, or Q]"
if errorlevel 4 goto four
if errorlevel 3 goto three
if errorlevel 2 goto two
if errorlevel 1 goto one

:32BIT

.\Choice\choice /c:123q
if errorlevel 4 goto four
if errorlevel 3 goto three
if errorlevel 2 goto two
if errorlevel 1 goto one

:one

Echo.
Echo. Listing Student profiles only
Echo.

set MyRunMode= List Only:
set /p location="What room will you be processing?:"
title RunMode = %MyRunMode% Processing Room %location%

Echo.
Echo This could take a long time if you have more than 30 PCs in your list.
Echo To End this script hit CTRL + C keys.
Echo Delete Student Profiles,Processing Room, %location%, Start-time, %TIME%, Date, %DATE% >> "log.txt"
for /f %%A IN (%~dp0computernames.txt) do %~dp0delprof2 /u /l /d:2 /c:\\%%A /id:4??????* /id:3??????* /id:2??????* >> "log.txt"
Echo.
call "%~dp0beep.bat"
Echo See log.txt for report
Echo.
sleep 5
Echo.
Echo Delete Student Profiles, End-time, %TIME%, Date, %DATE% >> "log.txt"
Pause
Goto Main


:two

Echo.
Echo *** Let-R-Rip one time then End ***
Echo.

set MyRunMode= Run Once:
set /p location="What room will you be processing?:"
title RunMode = %MyRunMode% Processing Room %location%

Echo.
Pause
Echo.
Echo Delete Student Profiles, Start-time, %TIME%, Date, %DATE% >> "log.txt"
for /f %%A IN (%~dp0computernames.txt) do %~dp0delprof2 /u /d:2 /c:\\%%A  /id:4??????* /id:3??????* /id:2??????*
Echo.
call "%~dp0beep.bat"
Echo Student Profiles Deleted
Echo.
Echo.
Echo. Delete Student Profiles, End-time, %TIME%, Date, %DATE% >> "log.txt"
Pause
Goto Main


:three

Echo.

set MyRunMode= Continuos:
set /p location="What room will you be processing?:"
title RunMode = %MyRunMode% Processing Room %location%

Echo.

:loop

Echo. 
Echo To Pause this script hit CTRL + S keys then hit another key to resume.
Echo To End this script hit CTRL + C keys.
for /f %%A IN (%~dp0computernames.txt) do %~dp0delprof2 /u /d:2 /c:\\%%A /id:4??????* /id:3??????* /id:2??????*
sleep 10

goto loop


:four

goto end

:end
Exit
