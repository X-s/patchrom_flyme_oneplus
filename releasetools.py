import common
import edify_generator
import os

def InstallBased(info):
    for filename in os.listdir("firmware"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('static_nvbk')==-1):
            data=open(os.path.join(os.getcwd(),"firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)
    extra_img_flash = """ui_print("Writing static_nvbk image...");
package_extract_file("static_nvbk.bin", "/dev/block/bootdevice/by-name/oem_stanvbk");
ui_print("Patching firmware images...");
package_extract_file("sdi.mbn", "/dev/block/bootdevice/by-name/sdi");
package_extract_file("hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("sbl1.mbn", "/dev/block/bootdevice/by-name/sbl1");
package_extract_file("pmic.mbn", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("logo.bin", "/dev/block/bootdevice/by-name/LOGO");
package_extract_file("NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallBased(info)
