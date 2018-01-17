import common
import edify_generator
import os

def InstallRadio(info):
    for filename in os.listdir("overlay/RADIO"):
        if not (filename.find('.bin')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/RADIO",filename)).read()
            common.ZipWriteStr(info.output_zip, "RADIO/" + filename, data)
    extra_img_flash = """ui_print("Writing static_nvbk image...");
package_extract_file("RADIO/static_nvbk.bin", "/dev/block/bootdevice/by-name/oem_stanvbk");"""
    info.script.AppendExtra(extra_img_flash);

def InstallFirmware(info):
    for filename in os.listdir("overlay/firmware-update"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('.elf')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/firmware-update",filename)).read()
            common.ZipWriteStr(info.output_zip, "firmware-update/" + filename, data)
    extra_img_flash = """ui_print("Patching firmware images...");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("firmware-update/pmic.elf", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("firmware-update/abl.elf", "/dev/block/bootdevice/by-name/abl");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
package_extract_file("firmware-update/xbl.elf", "/dev/block/bootdevice/by-name/xbl");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("firmware-update/logo.bin", "/dev/block/bootdevice/by-name/LOGO");
package_extract_file("firmware-update/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("firmware-update/adspso.bin", "/dev/block/bootdevice/by-name/dsp");
package_extract_file("firmware-update/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallRadio(info)
    InstallFirmware(info)
