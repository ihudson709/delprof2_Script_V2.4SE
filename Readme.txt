DeleteStudentProfiles Script Version 2.4SE
Created by Ian Hudson

*** Use this script at your own risk. Remember you can not easily recover from deleting the wrong Profiles! ***

*** Delprof2 the core of this script was created by:
Helge Klein (http://helgeklein.com) ***


Delprof2 works on:
Windows 8, Windows 7, Vista, XP, Server 2008 (R2), Server 2003

See the file "Delprof documentation.docx"  for licensing usage and other information.

****************************

"DeleteStudentProfiles Script Version 2.4SE" is a batch file for a DOS UI for the Delprof2 utility. It allows the DOS script to get a list of computer names to work on and provides some other minor features.

2.4 Added features:

* Added deletion of profiles that begin with the number "4". (This is specific to the school I work in, you will have to change this to match the type of usernames that students use at the schools you support)
* Added ablility to Run from School Server hence the "SE" at the end of the version number meaning Server Edition. (This can also be run from a workstation, but it and/or the server must be on the same network as the clients you are deleteing the profiles from).


2.3 Added features:

* "RunMode" displays in the Title Bar of the DOS Window.
RunMode is simply what you chose from the Menu as to how to run the script. 'List Only', 'Run Once' or 'Continuous' Modes. 

* "Processing Room" displays in the Title Bar of the DOS Window. You are now prompted for what room you are running the script on. So if you run several sessions at the same time, you don't have to remember which Window is for what room. 

* Added "Beep" noise when 'List Only' and 'Run Once' modes have completed.

* Added "Processing Room" info to Log when running "List Only" mode.

