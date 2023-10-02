#!/bin/bash
while [ -n "$1" ]; do # while loop starts
	case "$1" in
	-m) echo "Installing the necessary programs"
                exec sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
                exec ./test2
                clear
		shift
		;;
	-n)
		echo "Installing programs"
                exec sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
                exec ./test1
                clear
		shift
		;;
	-f) echo "Installation of all necessary programs"
                exec sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
                exec ./test3
                clear
		shift
		;;
        -g) echo "Installing programs related to games"
                exec sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
                exec ./test4
                clear
                shift
                ;;
        -s) echo "Option $1 is skipped, the $2 option is executed"
            clear
            shift
            ;;
        -h) echo "Type -m or -n or -f or -g"
            shift
            ;;
        --help) echo "Type -m or -n or -f or -g"
            shift
            ;;
	--)
		shift # The double dash makes them parameters
		break
		;;
	*) echo "Option $1 not recognized" ;;
	esac
	shift
while [ -n "$2" ]; do # while loop starts
	case "$2" in
	-m) echo "List of necessary programs"
                exec ./test2l
		shift
		;;
	-n)
		echo "List programs"
                exec ./test1l
		shift
		;;
	-f) echo "List of all necessary programs"
                exec ./test3l
		shift
		;;
        -g) echo "List programs related to games"
                exec ./test4l
                shift
                ;;
	--)
		shift # The double dash makes them parameters
		break
		;;
	*) echo "Option $2 not recognized" ;;
	esac
	shift
done
total=1
for param in "$@"; do
	echo "#$total: $param"
	total=$(($total + 1))
done