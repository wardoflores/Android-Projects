scrcpy
scrcpy -m 1024
scrcpy -b 2m
scrcpy --max-fps 15
scrcpy --crop 1224:1440:0:0
scrcpy --lock-video-orientation 0
:PROMPT1
SET /P RECORD=Do you want to start Recording? (Y/N):
IF /I "%RECORD%" NEQ "Y" GOTO END

scrcpy --record file.mp4
scrcpy -r file.mkv

:END1

:PROMPT2
SET /P RECORD=Disable mirroring while recording? (Y/N):
IF /I "%RECORD%" NEQ "Y" GOTO END2

scrcpy --no-display --record file.mp4
scrcpy -Nr file.mkv

:END2
