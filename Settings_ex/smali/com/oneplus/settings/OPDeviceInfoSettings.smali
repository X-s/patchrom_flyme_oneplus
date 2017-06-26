.class public Lcom/oneplus/settings/OPDeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_CPUINFO:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final KEY_ABOUT_OTHERS_SETTINGS:Ljava/lang/String; = "about_others_settings"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_CONTAINER:Ljava/lang/String; = "container"

.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_DDR_MEMORY_CAPACITY_KEY:Ljava/lang/String; = "ddr_memory_capacity"

.field private static final KEY_DEVICE_FEEDBACK:Ljava/lang/String; = "device_feedback"

.field private static final KEY_DEVICE_IMEI:Ljava/lang/String; = "device_imei"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_DEVICE_PROCESSOR:Ljava/lang/String; = "device_processor"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_MEMORY_CAPACITY:Ljava/lang/String; = "memory_capacity"

.field private static final KEY_MOBILE_DEVICE_NAME:Ljava/lang/String; = "mobile_device_name"

.field private static final KEY_ONEPLUS_AUTHENTICATION_INFORMATION:Ljava/lang/String; = "oneplus_authentication_information"

.field private static final KEY_ONEPLUS_FIRMWARE_VERSION:Ljava/lang/String; = "oneplus_firmware_version"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_LEGAL:Ljava/lang/String; = "safetylegal"

.field private static final KEY_SECURITY_PATCH:Ljava/lang/String; = "security_patch"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final KEY_SYSTEM_UPGRADE_SETTINGS:Ljava/lang/String; = "system_upgrade_settings"

.field private static final KEY_SYSTEM_VERSION_INFORMATION:Ljava/lang/String; = "system_version_information"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_THANKS_INFORMATION:Ljava/lang/String; = "thanks_information_key"

.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"

.field private static final KEY_WEBVIEW_LICENSE:Ljava/lang/String; = "webview_license"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettings"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field private static final PROPERTY_SELINUX_STATUS:Ljava/lang/String; = "ro.build.selinux"

.field private static final PROPERTY_URL_SAFETYLEGAL:Ljava/lang/String; = "ro.url.safetylegal"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7

.field private static final UPDATE_BACKUP:Ljava/lang/String; = "com.oneplus.opbackup.updatebackup"

.field private static final UPDATE_RESTORE:Ljava/lang/String; = "com.oneplus.opbakcup.updaterestore"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

.field private mActivity:Landroid/app/Activity;

.field mDevHitCountdown:I

.field mDevHitToast:Lcom/oneplus/widget/OPToast;

.field private mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

.field mHits:[J

.field private mOneplusFirmwarePreference:Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 785
    new-instance v0, Lcom/oneplus/settings/OPDeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPDeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    return-void
.end method

.method private CreateDeviceDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 978
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, "devicename":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    .line 989
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400be

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    .line 991
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f120166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/OPEditText;

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

    .line 992
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v2, v1}, Lcom/oneplus/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v2, v5}, Lcom/oneplus/widget/OPEditText;->setSelected(Z)V

    .line 994
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

    invoke-virtual {v2, v5}, Lcom/oneplus/widget/OPEditText;->setSelectAllOnFocus(Z)V

    .line 996
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 998
    .local v0, "ad":Lcom/oneplus/app/OPAlertDialog$Builder;
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 999
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 1002
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 1004
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/OPDeviceInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPDeviceInfoSettings$2;-><init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/app/OPAlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1043
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/OPDeviceInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPDeviceInfoSettings$3;-><init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/app/OPAlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1057
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDeviceInfoSettings;)Lcom/oneplus/widget/OPEditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPDeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDeviceInfoSettings;)Lcom/oneplus/app/OPAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Lcom/oneplus/app/OPAlertDialog;

    return-object v0
.end method

.method private fileSize(J)[Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .prologue
    const-wide/16 v6, 0x400

    .line 937
    :try_start_0
    const-string v2, ""

    .line 938
    .local v2, "str":Ljava/lang/String;
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 939
    const-string v2, "KB"

    .line 940
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 941
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 942
    const-string v2, "MB"

    .line 943
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 944
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 945
    const-string v2, "GB"

    .line 946
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 951
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 953
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 954
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 955
    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v0    # "formatter":Ljava/text/DecimalFormat;
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 958
    :catch_0
    move-exception v3

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    .line 685
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 698
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 700
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v2, "Unavailable"

    .line 711
    :goto_0
    return-object v2

    .line 704
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 705
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v2, "Unavailable"

    goto :goto_0

    .line 711
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDeviceProcessorInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 868
    const-string v0, "Hardware\\s*:\\s*(.*)$"

    .line 874
    .local v0, "PROC_HARDWARE_REGEX":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "cpuinfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 880
    const-string v5, "Hardware"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 881
    const-string v5, "Hardware\\s*:\\s*(.*)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 883
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 890
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 897
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 888
    .restart local v1    # "cpuinfo":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v5, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 890
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 892
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 893
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting cpuinfo for Device Info screen"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    const-string v5, "Unknown"

    goto :goto_0

    .line 890
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0cd0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 779
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 755
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 758
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 760
    .local v6, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 761
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 762
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 764
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 766
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 768
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 779
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 773
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 675
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 670
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 671
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMobileType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 436
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 438
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 440
    const-string v2, ""

    .line 462
    :goto_0
    return-object v2

    .line 444
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "imsi":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    if-eqz v0, :cond_4

    .line 449
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 453
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 456
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 462
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 730
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 734
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 738
    :catch_0
    move-exception v1

    .line 741
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 736
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 9

    .prologue
    .line 423
    const/4 v4, 0x0

    .line 425
    .local v4, "serial":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 426
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 427
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.serialno"

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getValueSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string v0, ""

    .line 626
    .local v0, "information":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    .line 628
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 660
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 592
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 600
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 609
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showROMStorage()Ljava/lang/String;
    .locals 12

    .prologue
    .line 908
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 910
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 911
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 912
    .local v8, "totalBlocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 914
    .local v0, "availableBlocks":J
    const-wide/16 v10, 0x400

    div-long v10, v2, v10

    mul-long v6, v8, v10

    .line 916
    .local v6, "size":J
    const-wide/32 v10, 0x4000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    .line 917
    const-string v10, "128GB"

    .line 930
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :goto_0
    return-object v10

    .line 918
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "blockSize":J
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "statFs":Landroid/os/StatFs;
    .restart local v6    # "size":J
    .restart local v8    # "totalBlocks":J
    :cond_0
    const-wide/32 v10, 0x2000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_1

    .line 919
    const-string v10, "64GB"

    goto :goto_0

    .line 920
    :cond_1
    const-wide/32 v10, 0x1000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 921
    const-string v10, "32GB"

    goto :goto_0

    .line 923
    :cond_2
    const-string v10, "16GB"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 926
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :catch_0
    move-exception v10

    .line 930
    const-string v10, ""

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1062
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    .line 155
    const v17, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 157
    sget-object v10, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 158
    .local v10, "patch":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 160
    :try_start_0
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd"

    invoke-direct/range {v16 .. v17}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v16, "template":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 162
    .local v11, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    const-string v18, "dMMMMyyyy"

    invoke-static/range {v17 .. v18}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "format":Ljava/lang/String;
    invoke-static {v6, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 178
    .end local v6    # "format":Ljava/lang/String;
    .end local v11    # "patchDate":Ljava/util/Date;
    .end local v16    # "template":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    const-string v17, "firmware_version"

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v17, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    const-string v17, "baseband_version"

    const-string v18, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v17, "device_model"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v17, "device_processor"

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getDeviceProcessorInfo()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v17, "fcc_equipment_id"

    const-string v18, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v17, "device_model"

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "oem_oneplus_modified_devicename"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "modified":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "oem_oneplus_devicename"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "mDeviceName":Ljava/lang/String;
    if-nez v8, :cond_9

    if-eqz v7, :cond_1

    const-string v17, "oneplus"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "ONE E1001"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "ONE E1003"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "ONE E1005"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 196
    :cond_1
    const-string v17, "ro.display.series"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "oem_oneplus_devicename"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "oem_oneplus_modified_devicename"

    const-string v19, "1"

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    :cond_2
    :goto_1
    const-string v17, "mobile_device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v17, "system_version_information"

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0114

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v17, "memory_capacity"

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->showROMStorage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getRamInfo()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "raminfo":Ljava/lang/String;
    const-string v17, "ddr_memory_capacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "oem.authentication_information.support"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 232
    const-string v17, "oneplus_authentication_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 233
    .local v5, "authenticationInformation":Landroid/preference/Preference;
    const-string v17, "system_team"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 234
    .local v15, "systemteamsCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual {v15, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    .end local v5    # "authenticationInformation":Landroid/preference/Preference;
    .end local v15    # "systemteamsCategory":Landroid/preference/PreferenceGroup;
    :cond_3
    const-string v17, "about_others_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceType(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->showROMStorage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceMemory(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceDDRMemory(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    sget-object v18, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setFirmwareVersion(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/ui/OPAboutPreference;->setSecurityPatch(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    const-string v18, "ro.rom.version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceSystemVersion(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceAndroidVersion(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    const-string v18, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceFreqVersion(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceCoreVersion(Ljava/lang/String;)V

    .line 265
    const-string v17, "build_number"

    sget-object v18, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v17, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    const-string v17, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v17

    if-nez v17, :cond_a

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0b5a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, "status":Ljava/lang/String;
    const-string v17, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v14    # "status":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "selinux_status"

    const-string v19, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "safetylegal"

    const-string v19, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "fcc_equipment_id"

    const-string v19, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 296
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "device_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 312
    .local v4, "act":Landroid/app/Activity;
    const-string v17, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 313
    .local v9, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v17, "terms"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v9, v0, v1}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 316
    const-string v17, "license"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v9, v0, v1}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 319
    const-string v17, "copyright"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v9, v0, v1}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 322
    const-string v17, "webview_license"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v9, v0, v1}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_b

    .line 329
    const-string v17, "system_update_settings"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v9, v0, v1}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 338
    :goto_3
    const-string v17, "additional_system_update_settings"

    const v18, 0x7f100004

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 346
    const-string v17, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 347
    .local v12, "pref":Landroid/preference/Preference;
    if-eqz v12, :cond_8

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/OPDeviceInfoSettings;->mResources:Landroid/content/res/Resources;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "device_processor"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "thanks_information_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    const-string v17, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 379
    const-string v17, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 380
    const-string v17, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 381
    const-string v17, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 382
    const-string v17, "information_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 395
    return-void

    .line 203
    .end local v4    # "act":Landroid/app/Activity;
    .end local v9    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v12    # "pref":Landroid/preference/Preference;
    .end local v13    # "raminfo":Ljava/lang/String;
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 204
    const/16 v17, 0x0

    const/16 v18, 0x1f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "oem_oneplus_devicename"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 274
    .restart local v13    # "raminfo":Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v17

    if-nez v17, :cond_4

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0b5b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 277
    .restart local v14    # "status":Ljava/lang/String;
    const-string v17, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 334
    .end local v14    # "status":Ljava/lang/String;
    .restart local v4    # "act":Landroid/app/Activity;
    .restart local v9    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_b
    const-string v17, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 164
    .end local v4    # "act":Landroid/app/Activity;
    .end local v7    # "mDeviceName":Ljava/lang/String;
    .end local v8    # "modified":Ljava/lang/String;
    .end local v9    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v13    # "raminfo":Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 480
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_upgrade_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CheckUpdate"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 573
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 492
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oneplus_authentication_information"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 493
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "zhuyang-KEY_ONEPLUS_AUTHENTICATION_INFORMATION"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 495
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/oneplus/settings/OPAuthenticationInformationSettings;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firmware_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 499
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v6, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v3, v5, v9, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 500
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 501
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    aget-wide v4, v3, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 502
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 508
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "build_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "about_others_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 525
    .local v2, "um":Landroid/os/UserManager;
    const-string v4, "no_debugging_features"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 528
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_9

    .line 529
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    .line 530
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-nez v4, :cond_7

    .line 531
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "development"

    invoke-virtual {v4, v5, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    if-eqz v4, :cond_6

    .line 538
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v4}, Lcom/oneplus/widget/OPToast;->cancel()V

    .line 540
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02de

    invoke-static {v4, v5, v3}, Lcom/oneplus/widget/OPToast;->makeText(Landroid/content/Context;II)Lcom/oneplus/widget/OPToast;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    .line 542
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v4}, Lcom/oneplus/widget/OPToast;->show()V

    .line 544
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v3}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 549
    :cond_7
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 551
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    if-eqz v4, :cond_8

    .line 552
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v4}, Lcom/oneplus/widget/OPToast;->cancel()V

    .line 554
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f130000

    iget v7, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v9

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v9}, Lcom/oneplus/widget/OPToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/widget/OPToast;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    .line 560
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v3}, Lcom/oneplus/widget/OPToast;->show()V

    goto/16 :goto_1

    .line 562
    :cond_9
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-gez v4, :cond_3

    .line 563
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    if-eqz v4, :cond_a

    .line 564
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v4}, Lcom/oneplus/widget/OPToast;->cancel()V

    .line 566
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c02df

    invoke-static {v4, v5, v3}, Lcom/oneplus/widget/OPToast;->makeText(Landroid/content/Context;II)Lcom/oneplus/widget/OPToast;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    .line 568
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    invoke-virtual {v3}, Lcom/oneplus/widget/OPToast;->show()V

    goto/16 :goto_1

    .line 570
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 571
    invoke-direct {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 399
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Lcom/oneplus/widget/OPToast;

    .line 408
    const-string v0, "mobile_device_name"

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
