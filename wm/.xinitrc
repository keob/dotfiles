while true; do
        batt=$(LC_ALL=C acpi -b)

        case $batt in
        *Discharging*)
                batt=" ${batt#* * * } "
                batt=" ${batt%%, *} "
                ;;
        *)
                batt=""
                ;;
        esac

        xsetroot -name "$batt $(date +%R) "

        sleep 60
done &

xset r rate 200 30

xinput set-prop --type=int --format=8 "ELAN2203:00 04F3:309A Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop --type=int --format=8 "ELAN2203:00 04F3:309A Touchpad" "libinput Tapping Enabled" 1

habak -ms ~/Pictures/wallpaper1.png

exec dwm
