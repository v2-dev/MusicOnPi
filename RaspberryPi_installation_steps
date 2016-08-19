Prepare Raspberry Pi with Raspbian OS in three simple steps:

1==============================================================================
On your PC: 

-Download Raspbian OS for the Raspberry Pi with this command:
  $ wget https://downloads.raspberrypi.org/raspbian_latest
  or
  $ wget https://downloads.raspberrypi.org/raspbian_lite_latest
-Unzip Raspbian OS for the Raspberry Pi with this command:
  $ unzip xxxx-xx-xx-raspbian-jessie.zip
  or
  $ unzip xxxx-xx-xx-raspbian-jessie-lite.zip
===============================================================================

2==============================================================================
On you PC:

-Insert SD card
-Search for device name of the SD card with this command:
  $ sudo fdisk -l
-Search for info about your SD card. Warning, be careful!
    +----------------------------------------------------------------------+
    |Disk /dev/mmcblk0: 14,5 GiB, 15523119104 bytes, 30318592 sectors      |
    |Units: sectors of 1 * 512 = 512 bytes                                 |
    |Sector size (logical/physical): 512 bytes / 512 bytes                 |
    |I/O size (minimum/optimal): 512 bytes / 512 bytesa                    |
    |Disklabel type: dos                                                   |
    |Disk identifier: 0x6f92008e                                           |
    |                                                                      |
    |Device         Boot  Start      End  Sectors  Size Id Type            |
    |/dev/mmcblk0p1        8192   131071   122880   60M  c W95 FAT32 (LBA) |
    |/dev/mmcblk0p2      131072 30318591 30187520 14,4G 83 Linux           |
    +----------------------------------------------------------------------+
-When you are sure, replace mmcblk0 with device name of you SD and excute
 this command to load Raspbian OS into to SD card:
  $ sudo dd if=/xxxx-xx-xx-raspbian-jessie-lite.img of=/dev/mmcblk0
===============================================================================

3==============================================================================
On you Raspberry Pi:

-Connect ethernet cable to the Raspberry Pi
-Connect HDMI cable to the Raspberry Pi and turn on the monitor on the right
 input device
-Connect micro USB power cable to the Raspberry Pi
-Waiting for coplete boot
-Login
  user: pi
  pass: raspberry
-Execute these commands:
  $ sudo apt-get update
  $ sudo apt-get dist-upgrade -y
  $ sudo apt-get install rpi-upate raspi-config -y
-Config Raspbian OS with this tool:
  $ sudo raspi-config
    -Expand Filesystem
    -Internationalisation Options
        -Change Locale -> Deselect en_GB.UTF-8 and select it_IT.UTF-8
        -Change Timezone -> Europe -> Rome
        -Change Keyboard Layout -> Generic 105-key PC -> Other -> Italian -> Italian -> Default -> No compose key
        -Change wifi Country -> IT Italy
  Finish and reboot
-Update Raspberry Pi firmware with this command:
  $ sudo rpi-update
-Reboot for the last time Raspberry Pi:
  $ sudo reboot
===============================================================================

That's all folks! 
Now you can play with your Raspi! ;)

===============================================================================
GPIO
  $ sudo apt-get install wiringpi -y

GIT
  $ sudo apt-get install git -y
  $ git clone https://github.com/Roma2Lug-Projects/MusicOnLinux.git
  $ cd MusicOnLinux

BASH
  $ sudo apt-get install vim -y
  $ vim ./<script>
  $ chmod +x <script>

Execute
  $ ./script

===============================================================================
