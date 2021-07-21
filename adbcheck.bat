echo off
echo Connect Android device via USB.
echo Enable USB Debugging in Phone.
echo Click Allow in Phone prompt stating Trust.
adb start-server
adb devices
:PROMPT
SET /P LISTPKGS=Do you want to list all the Device's packages? (Y/N):
IF /I %LISTPKGS% NEQ "Y" GOTO END

adb shell pm list packages -s

:END
adb shell pm uninstall -k --user 0 com.coloros.assistantscreen
adb shell pm uninstall -k --user 0 com.coloros.floatassistant
adb shell pm uninstall -k --user 0 com.coloros.gamespace
adb shell pm uninstall -k --user 0 coloros.gamespaceui
adb shell pm uninstall -k --user 0 com.coloros.childrenspace
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.heytap.browser
adb shell pm uninstall -k --user 0 com.heytap.cloud
adb shell pm uninstall -k --user 0 com.heytap.datamigration
adb shell pm uninstall -k --user 0 com.heytap.habit.analysis
adb shell pm uninstall -k --user 0 com.heytap.usercenter.overlay
adb shell pm uninstall -k --user 0 com.heytap.datamigration
adb shell pm uninstall -k --user 0 com.heytap.habit.analysis
adb shell pm uninstall -k --user 0 com.heytap.usercenter
adb shell pm uninstall -k --user 0 com.oppo.market
adb shell pm uninstall -k --user 0 com.oppo.lfeh
adb shell pm uninstall -k --user 0 com.oppo.aod
adb shell pm uninstall -k --user 0 com.nearme.browser
adb shell pm uninstall -k --user 0 com.nearme.themestore
adb shell pm uninstall -k --user 0 com.mediatek.omacp
adb shell pm uninstall -k --user 0 com.opera.preinstall
adb shell pm uninstall -k --user 0 com.tencent.soter.soterserver
adb shell pm uninstall -k --user 0 org.kman.AquaMail
adb shell pm uninstall -k --user 0 com.dropboxchmod
echo Can't delete these, don't know why.
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell pm uninstall -k --user 0 com.heytap.themestore
adb shell pm uninstall -k --user 0 com.nearme.gamecenter
@rem adb shell pm uninstall -k --user 0 
adb kill-server