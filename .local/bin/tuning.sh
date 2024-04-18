#!/bin/bash
powertop --auto-tune
echo 'on' > '/sys/bus/usb/devices/3-2/power/control';

# old
# # best
# echo 'auto' > '/sys/bus/i2c/devices/i2c-13/device/power/control';
# # good
# echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';
# echo '0' > '/proc/sys/kernel/nmi_watchdog';
# echo 'auto' > '/sys/bus/usb/devices/3-9/power/control';
# # avg
# echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:14.2/power/control';
# echo 'auto' > '/sys/bus/pci/devices/10000:e1:00.0/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.5/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:08.0/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:06.0/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:14.3/power/control';
# echo 'auto' > '/sys/bus/pci/devices/0000:00:0e.0/power/control'; 
