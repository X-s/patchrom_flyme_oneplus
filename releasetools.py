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

def InstallSuperSU(info):
    for filename in os.listdir("overlay"):
        if not (filename.find('SuperSU_v2.76_Modify.zip')==-1):
            data=open(os.path.join(os.getcwd(),"overlay",filename)).read()
            common.ZipWriteStr(info.output_zip, "SuperSU/" + filename, data)
            info.script.AppendExtra(('ui_print("Flashing SuperSU");'))
            info.script.AppendExtra(('package_extract_dir("SuperSU", "/tmp/supersu");'))
            info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/'+filename+'", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
            info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/'+filename+'");'))

def FullOTA_InstallEnd(info):
    InstallBased(info)
    InstallSuperSU(info)

def IncrementalOTA_InstallEnd(info):
    InstallSuperSU(info)