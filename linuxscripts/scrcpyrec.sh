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
$(magentaprint "What type of recording will you do?")
$(blueprint '2)') Record and Save
$(greenprint '1)') Record only
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    2)
        scrcpy --record file.mp4
        scrcpy -r file.mkv
        exit
        ;;
    1)
        scrcpy --no-display --record file.mp4
        scrcpy -Nr file.mkv
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