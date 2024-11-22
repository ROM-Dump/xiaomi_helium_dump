#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16424270:8207d9232eae6396d50634be634b337d00384758; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13417802:7487643a65d5dc916d5a290fa1d5c0119aa908f3 EMMC:/dev/block/bootdevice/by-name/recovery 8207d9232eae6396d50634be634b337d00384758 16424270 7487643a65d5dc916d5a290fa1d5c0119aa908f3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
