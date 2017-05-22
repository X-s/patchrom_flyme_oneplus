import common
import edify_generator
import os

def InstallBased(info):
    for filename in os.listdir("overlay/firmware-update"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/firmware-update",filename)).read()
            common.ZipWriteStr(info.output_zip, "firmware-update/" + filename, data)
    extra_img_flash = """ui_print("Writing static_nvbk image...");
package_extract_file("firmware-update/static_nvbk.bin", "/dev/block/bootdevice/by-name/oem_stanvbk");
ui_print("Patching firmware images...");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("firmware-update/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("firmware-update/sbl1.mbn", "/dev/block/bootdevice/by-name/sbl1");
package_extract_file("firmware-update/pmic.mbn", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("firmware-update/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("firmware-update/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");
ui_print("Writing twrp-3.1.1-0-oneplus2 image...");
package_extract_file("firmware-update/recovery.img", "/dev/block/bootdevice/by-name/recovery");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallBased(info)
