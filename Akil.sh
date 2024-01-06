while true; do
    pactl set-source-volume alsa_input.pci-0000_05_00.6.analog-stereo 70%
    sleep 2
done
