@echo off
cls

REM Delete Student Profiles only Script
REM Script Created by Ian Hudson 11/2012

Echo.
Echo  *************************************************************************
Echo  *                                                                       *
Echo  * Press 1 to Run a list of Student Profiles to delete w/o deleting them *
Echo  *                                                                       *
Echo  * Press 2 to Delete Student Profiles then end the program               *
Echo  *                                                                       *
Echo  * Press 3 to Delete Student Profiles perpetually                        *
Echo  *                                                                       *
Echo  * Press Q to Quit                                                       *
Echo  *                                                                       *
Echo  *************************************************************************
Echo.
choice /n /c:123q  Press [1, 2, 3, or Q] 
rem choice /n /c:123q Press 1, 2, 3, or Q 
if errorlevel 4 goto four
if errorlevel 3 goto three
if errorlevel 2 goto two
if errorlevel 1 goto one

:one
echo You pressed 1
Echo.
Echo This could take a long time if you have more that 30 PCs in your list.
Echo To End this script hit CTRL + C keys.
Echo.
Pause
goto end

:two
echo You pressed 2
Pause
goto end


:three
echo You pressed 3

@echo off
:loop
echo "Do something"
Echo.
Echo To Pause this script hit CTRL + S keys then hit another key to resume.
Echo To End this script hit CTRL + C keys.
Echo.
sleep 600
goto loop

Pause
goto end

:four
echo You pressed 4
Pause
goto end

:end

