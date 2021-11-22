echo Connect Android device via USB.
echo Enable USB Debugging in Phone.
echo Click Allow in Phone prompt stating Trust.
adb start-server
adb devices
## Colors ##
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
adbprompt() {
    echo -ne "
$(magentaprint "Would you like to erase realme bloat??")
$(greenprint '1)') Continue
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        adb shell pm uninstall -k --user 0 com.coloros.assistantscreen
        adb shell pm uninstall -k --user 0 com.coloros.floatassistant
        adb shell pm uninstall -k --user 0 com.coloros.gamespace
        adb shell pm uninstall -k --user 0 com.coloros.filemanager
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
        echo format is: adb shell pm uninstall -k --user 0 
        adb kill-server
        exit
        ;;
    0)
        echo "Bye bye."
        exit 1
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}
adbprompt
