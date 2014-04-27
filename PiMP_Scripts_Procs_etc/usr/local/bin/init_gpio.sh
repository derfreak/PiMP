 #!/bin/bash
 # Copyright 2014 Rico Dornbrach.
 # This file is part of the PiMP - Pi Multimedia Project.
 #
 # PiMP is free software: you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 #
 # PiMP is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
 # You should have received a copy of the GNU General Public License
 # along with PiMP.  If not, see <http://www.gnu.org/licenses/>.

case "$1" in

    export)

	# Enable GPIO's
	echo "2" > /sys/class/gpio/export
	echo "3" > /sys/class/gpio/export 
	echo "4" > /sys/class/gpio/export

	echo "17" > /sys/class/gpio/export
	echo "27" > /sys/class/gpio/export
	echo "22" > /sys/class/gpio/export

	echo "10" > /sys/class/gpio/export
	echo "9" > /sys/class/gpio/export
	echo "11" > /sys/class/gpio/export

	echo "14" > /sys/class/gpio/export
	echo "15" > /sys/class/gpio/export
	echo "18" > /sys/class/gpio/export

	echo "23" > /sys/class/gpio/export
	echo "24" > /sys/class/gpio/export

	echo "25" > /sys/class/gpio/export
	echo "8" > /sys/class/gpio/export
	echo "7" > /sys/class/gpio/export

	# Set input or output
	echo "in" > /sys/class/gpio/gpio2/direction
	echo "in" > /sys/class/gpio/gpio3/direction
	echo "in" > /sys/class/gpio/gpio4/direction

	echo "in" > /sys/class/gpio/gpio17/direction
	echo "in" > /sys/class/gpio/gpio27/direction
	echo "in" > /sys/class/gpio/gpio22/direction

	echo "in" > /sys/class/gpio/gpio10/direction
	echo "in" > /sys/class/gpio/gpio9/direction
	echo "in" > /sys/class/gpio/gpio11/direction

	echo "in" > /sys/class/gpio/gpio14/direction
	echo "in" > /sys/class/gpio/gpio15/direction
	echo "in" > /sys/class/gpio/gpio18/direction

	echo "in" > /sys/class/gpio/gpio23/direction
	echo "in" > /sys/class/gpio/gpio24/direction

	echo "in" > /sys/class/gpio/gpio25/direction
	echo "in" > /sys/class/gpio/gpio8/direction
	echo "in" > /sys/class/gpio/gpio7/direction 
    ;;

    unexport)

	# Enable GPIO's
	echo "2" > /sys/class/gpio/unexport
	echo "3" > /sys/class/gpio/unexport 
	echo "4" > /sys/class/gpio/unexport

	echo "17" > /sys/class/gpio/unexport
	echo "27" > /sys/class/gpio/unexport
	echo "22" > /sys/class/gpio/unexport

	echo "10" > /sys/class/gpio/unexport
	echo "9" > /sys/class/gpio/unexport
	echo "11" > /sys/class/gpio/unexport

	echo "14" > /sys/class/gpio/unexport
	echo "15" > /sys/class/gpio/unexport
	echo "18" > /sys/class/gpio/unexport

	echo "23" > /sys/class/gpio/unexport
	echo "24" > /sys/class/gpio/unexport

	echo "25" > /sys/class/gpio/unexport
	echo "8" > /sys/class/gpio/unexport
	echo "7" > /sys/class/gpio/unexport

    ;;
esac

exit 0
