#!/bin/sh
TOPIC=TMC

#info
DESCRIPTION="This script will install TMC Configuration for New Zealand. TMC set to 1024"

#Firmware/unit info:
VERSION="$(cat /net/rcc/dev/shmem/version.txt | grep "Current train" | sed 's/Current train = //g' | sed -e 's|["'\'']||g' | sed 's/\r//')"
FAZIT=$(cat /tmp/fazit-id);

echo "---------------------------"
echo $DESCRIPTION
echo FAZIT of this unit: $FAZIT
echo Firmware version: $VERSION
echo Version 0.1
echo TMC TABLE 1024
echo "---------------------------"
echo ""
#echo Mounting SD-card for rw mode.
#mount -uw $VOLUME

sleep .5

# Make app volume writable
echo Mounting app folder.
mount -uw /mnt/app

#/eso/bin/PhoneCustomer/default/version-cfg.txt 
#echo Making version-cfg.txt
# edit version-cfg.txt so that is higher version than data in map setup. so this gets used 
echo Backup version-cfg.txt
# Need to mount with write permissions
# cp /mnt/app/navigation/resources/app/vw/aus/version-cfg.txt /fs/sda0/backup/


# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/asia/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/aus/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/il/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/india/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/meast/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/msa/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/msa2/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/neast/version-cfg.txt
# echo "11.30.9876" > /mnt/app/navigation/resources/app/vw/za/version-cfg.txt

echo Version of Navi data now is:
cat /mnt/app/navigation/resources/app/vw/eu/version-cfg.txt

echo Copy paytmc*.json to system

cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/asia/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/aus/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/il/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/india/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/meast/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/msa/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/msa2/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/neast/tti/paytmc.json
cp /fs/sda0/esd/scripts/paytmc.json /mnt/app/navigation/resources/app/vw/za/tti/paytmc.json

cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/asia/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/aus/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/il/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/india/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/meast/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/msa/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/msa2/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/neast/tti/paytmc_aus.json
cp /fs/sda0/esd/scripts/paytmc_aus.json /mnt/app/navigation/resources/app/vw/za/tti/paytmc_aus.json

# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/asia/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/aus/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/il/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/india/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/meast/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/msa/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/msa2/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/neast/tti/paytmc_s0to15.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15.json /mnt/app/navigation/resources/app/vw/za/tti/paytmc_s0to15.json

# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/asia/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/aus/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/il/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/india/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/meast/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/msa/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/msa2/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/neast/tti/paytmc_s0to15online.json
# cp /fs/sda0/esd/scripts/paytmc_s0to15online.json /mnt/app/navigation/resources/app/vw/za/tti/paytmc_aus.json
#cat /mnt/app/navigation/resources/app/vw/eu/tti/paytmc.json

mount -ur /mnt/app
# mount -ur $VOLUME

echo Done. 
echo "Please restart the unit to apply the TMC Sets (TMC Table 1024)"

/net/mmx/fs/sda0/apps/reboot -t fast

trap 2

exit 0
