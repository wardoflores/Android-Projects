echo off
:PROMPT1
SET /P RECORD=Do you want to start Recording? (Y/N):
IF /I "%RECORD%" NEQ "Y" GOTO END1

scrcpy --record file.mp4
scrcpy -r file.mkv

:END1

:PROMPT2
SET /P RECORD=Disable mirroring while recording? (Y/N):
IF /I "%RECORD%" NEQ "Y" GOTO END2

scrcpy --no-display --record file.mp4
scrcpy -Nr file.mkv

:END2