import common
import edify_generator
import os

def InstallBased2OP(info):
    for filename in os.listdir("overlay/common-firmware"):
        if not (filename.find('.bin')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/common-firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, "common-firmware/" + filename, data)

def InstallBased2OP3(info):
    for filename in os.listdir("overlay/3-firmware"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('.elf')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/3-firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, "3-firmware/" + filename, data)

def InstallBased2OP3T(info):
    for filename in os.listdir("overlay/3t-firmware"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('.elf')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/3t-firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, "3t-firmware/" + filename, data)

def InstallEtc2OP3(info):
    for filename in os.listdir("overlay/3-firmware/system/etc/firmware"):
        if not (filename.find('.b00')==-1 and filename.find('.b01')==-1 and filename.find('.b02')==-1 and filename.find('.elf')==-1 and filename.find('.mdt')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/3-firmware/system/etc/firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, "3-firmware/etc/" + filename, data)

def CheckDeviceAndFlash(info):
    flash = """ifelse(getprop("ro.display.series")=="OnePlus 3T", (
ui_print("===========================================");
ui_print("|             !!! Warning !!!             |");
ui_print("|                                         |");
ui_print("|        Target Device: OnePlus 3T        |");
ui_print("|                                         |");
ui_print("|        Writing OnePlus 3T image...      |");
ui_print("|                                         |");
package_extract_file("3t-firmware/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
package_extract_file("3t-firmware/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
package_extract_file("3t-firmware/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("3t-firmware/pmic.elf", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("3t-firmware/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("3t-firmware/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("3t-firmware/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("3t-firmware/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
package_extract_file("3t-firmware/xbl.elf", "/dev/block/bootdevice/by-name/xbl");
package_extract_file("3t-firmware/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
package_extract_file("3t-firmware/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("3t-firmware/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");
), "");
ifelse(getprop("ro.display.series")=="OnePlus 3", (
ui_print("===========================================");
ui_print("|             !!! Warning !!!             |");
ui_print("|                                         |");
ui_print("|        Target Device: OnePlus 3         |");
ui_print("|                                         |");
ui_print("|        Writing OnePlus 3 image...       |");
ui_print("|                                         |");
mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/system", "/system", "");
package_extract_dir("3-firmware/etc", "/system/etc/firmware");
set_metadata("/system/etc/firmware/a530_zap.b00", "uid", 0, "gid", 0000, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/firmware/a530_zap.b01", "uid", 0, "gid", 0000, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/firmware/a530_zap.b02", "uid", 0, "gid", 0000, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/firmware/a530_zap.elf", "uid", 0, "gid", 0000, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/firmware/a530_zap.mdt", "uid", 0, "gid", 0000, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
unmount("/system");
package_extract_file("3-firmware/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
package_extract_file("3-firmware/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
package_extract_file("3-firmware/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("3-firmware/pmic.elf", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("3-firmware/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("3-firmware/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("3-firmware/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("3-firmware/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
package_extract_file("3-firmware/xbl.elf", "/dev/block/bootdevice/by-name/xbl");
package_extract_file("3-firmware/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
package_extract_file("3-firmware/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("3-firmware/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");
), "");
ui_print("|        Writing Common image...          |");
ui_print("|                                         |");
ui_print("|             !!! Warning !!!             |");
ui_print("===========================================");
package_extract_file("common-firmware/static_nvbk.bin", "/dev/block/bootdevice/by-name/oem_stanvbk");
package_extract_file("common-firmware/adspso.bin", "/dev/block/bootdevice/by-name/dsp");"""
    info.script.AppendExtra(flash);

def FullOTA_InstallEnd(info):
    InstallBased2OP(info)
    InstallBased2OP3(info)
    InstallBased2OP3T(info)
    InstallEtc2OP3(info)
    CheckDeviceAndFlash(info)
