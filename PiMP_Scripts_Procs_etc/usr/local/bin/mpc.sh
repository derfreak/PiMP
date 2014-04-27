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

while true; do
## Eingaenge
# --- Lautstaerke +
  i9=$(cat /sys/class/gpio/gpio9/value)
  if [ $i9 = "0" ]; then
    echo "1" > /sys/class/gpio/gpio24/value
    amixer -c 0 set PCM 2dB+
  fi
  if [ $i9 = "1" ]; then
    echo "0" > /sys/class/gpio/gpio24/value
  fi

# --- Lautstaerke -
  i10=$(cat "/sys/class/gpio/gpio10/value")
  if [ $i10 = "0" ]; then
    echo "1" > /sys/class/gpio/gpio25/value
    amixer -c 0 set PCM 2dB-
  fi
  if [ $i10 = "1" ]; then
    echo "0" > /sys/class/gpio/gpio25/value
  fi

# --- DPAD Right
  i14=$(cat /sys/class/gpio/gpio14/value)
  if [ $i14 = "0" ]; then
    mpc next
  fi

# --- DPAD Left
  i15=$(cat /sys/class/gpio/gpio15/value)
  if [ $i15 = "0" ]; then
    mpc prev
  fi

# --- DPAD Up

# --- DPAD Down

# --- Enter

# --- Zurueck/ESC

# --- Play/Pause
  i8=$(cat /sys/class/gpio/gpio8/value)
  if [ $i8 = "0" ]; then
    mpc toggle
  fi

# --- Bluetooth Settings GPIO 2

# --- MPC GPIO 3
  i3=$(cat /sys/class/gpio/gpio3/value)
  if [ $i3 = "0" ]; then
    echo "1" > /sys/class/gpio/gpio24/value
    mpc update --wait
    urxvt -e ncmpcpp
    mpc toggle
  fi
  if [ $i3 = "1" ]; then
    echo "0" > /sys/class/gpio/gpio24/value
  fi

# --- Navi GPIO 4

# --- Reserve GPIO 7

# --- Zuendung aus >> poweroff
  i27=$(cat /sys/class/gpio/gpio27/value)
  if [ $i27 = "0" ]; then
    systemctl poweroff
  fi






















  sleep 0.225s
done
