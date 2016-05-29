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

.field private static final KEY_ONEPLUS_FIRMWARE_VERSION:Ljava/lang/String; = "oneplus_firmware_version"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_LEGAL:Ljava/lang/String; = "safetylegal"

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

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceNameEdit:Landroid/widget/EditText;

.field mHits:[J

.field private mOneplusFirmwarePreference:Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcom/oneplus/settings/OPDeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPDeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPDeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    return-void
.end method

.method private CreateDeviceDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 924
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "devicename":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    .line 935
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040081

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    .line 937
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    .line 938
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelected(Z)V

    .line 940
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 942
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 945
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    .line 950
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b94

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/OPDeviceInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPDeviceInfoSettings$2;-><init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 989
    iget-object v2, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b95

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/OPDeviceInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPDeviceInfoSettings$3;-><init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1003
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDeviceInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPDeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDeviceInfoSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDeviceInfoSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private fileSize(J)[Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .prologue
    const-wide/16 v6, 0x400

    .line 883
    :try_start_0
    const-string v2, ""

    .line 884
    .local v2, "str":Ljava/lang/String;
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 885
    const-string v2, "KB"

    .line 886
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 887
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 888
    const-string v2, "MB"

    .line 889
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 890
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 891
    const-string v2, "GB"

    .line 892
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 897
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 899
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 900
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 901
    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v0    # "formatter":Ljava/text/DecimalFormat;
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 904
    :catch_0
    move-exception v3

    .line 908
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 644
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 646
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
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

    .line 649
    const-string v2, "Unavailable"

    .line 657
    :goto_0
    return-object v2

    .line 650
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 651
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

    .line 654
    const-string v2, "Unavailable"

    goto :goto_0

    .line 657
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDeviceProcessorInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 814
    const-string v0, "Hardware\\s*:\\s*(.*)$"

    .line 820
    .local v0, "PROC_HARDWARE_REGEX":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "cpuinfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 826
    const-string v5, "Hardware"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 827
    const-string v5, "Hardware\\s*:\\s*(.*)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 829
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 830
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 836
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 843
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 834
    .restart local v1    # "cpuinfo":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v5, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 836
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 838
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting cpuinfo for Device Info screen"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    const-string v5, "Unknown"

    goto :goto_0

    .line 836
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
    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090afa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 725
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 701
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 704
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 706
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

    .line 707
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 708
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 710
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 712
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 714
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 725
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 719
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 614
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 621
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 617
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMobileType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 390
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 392
    const-string v2, ""

    .line 414
    :goto_0
    return-object v2

    .line 396
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 398
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

    .line 400
    if-eqz v0, :cond_4

    .line 401
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

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 405
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 408
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 414
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 676
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 680
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 684
    :catch_0
    move-exception v1

    .line 687
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 682
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 9

    .prologue
    .line 375
    const/4 v4, 0x0

    .line 377
    .local v4, "serial":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 378
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 379
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

    .line 383
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getValueSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string v0, ""

    .line 572
    .local v0, "information":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    .line 574
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
    .line 603
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 606
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 608
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
    .line 536
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 538
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 542
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
    .line 524
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
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
    .line 584
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 546
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012b

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
    .line 555
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showROMStorage()Ljava/lang/String;
    .locals 12

    .prologue
    .line 854
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 856
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 857
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 858
    .local v8, "totalBlocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 860
    .local v0, "availableBlocks":J
    const-wide/16 v10, 0x400

    div-long v10, v2, v10

    mul-long v6, v8, v10

    .line 862
    .local v6, "size":J
    const-wide/32 v10, 0x4000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    .line 863
    const-string v10, "128GB"

    .line 876
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :goto_0
    return-object v10

    .line 864
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

    .line 865
    const-string v10, "64GB"

    goto :goto_0

    .line 866
    :cond_1
    const-wide/32 v10, 0x1000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 867
    const-string v10, "32GB"

    goto :goto_0

    .line 869
    :cond_2
    const-string v10, "16GB"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :catch_0
    move-exception v10

    .line 876
    const-string v10, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mActivity:Landroid/app/Activity;

    .line 147
    const v8, 0x7f060038

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 149
    const-string v8, "firmware_version"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v8, "firmware_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    const-string v8, "baseband_version"

    const-string v9, "gsm.version.baseband"

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v8, "device_model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v8, "device_processor"

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getDeviceProcessorInfo()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v8, "fcc_equipment_id"

    const-string v9, "ro.ril.fccid"

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v8, "device_model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_oneplus_modified_devicename"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "modified":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_oneplus_devicename"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "mDeviceName":Ljava/lang/String;
    if-nez v3, :cond_7

    if-eqz v2, :cond_0

    const-string v8, "oneplus"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ONE E1001"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ONE E1003"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ONE E1005"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 163
    :cond_0
    const-string v8, "ro.display.series"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_oneplus_devicename"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_oneplus_modified_devicename"

    const-string v10, "1"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    :cond_1
    :goto_0
    const-string v8, "mobile_device_name"

    invoke-direct {p0, v8, v2}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v8, "system_version_information"

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09009b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v8, "memory_capacity"

    invoke-direct {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->showROMStorage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getRamInfo()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "raminfo":Ljava/lang/String;
    const-string v8, "ddr_memory_capacity"

    invoke-direct {p0, v8, v6}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v8, "about_others_settings"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ui/OPAboutPreference;

    iput-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    .line 195
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceType(Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->showROMStorage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceMemory(Ljava/lang/String;)V

    .line 197
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceDDRMemory(Ljava/lang/String;)V

    .line 198
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    const-string v9, "ro.rom.version"

    invoke-direct {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceSystemVersion(Ljava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceAndroidVersion(Ljava/lang/String;)V

    .line 213
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    const-string v9, "gsm.version.baseband"

    invoke-direct {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceFreqVersion(Ljava/lang/String;)V

    .line 215
    iget-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mAboutPreference:Lcom/android/settings_ex/ui/OPAboutPreference;

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/ui/OPAboutPreference;->setDeviceCoreVersion(Ljava/lang/String;)V

    .line 218
    const-string v8, "build_number"

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v8, "build_number"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    const-string v8, "kernel_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-static {}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 224
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0909c2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "status":Ljava/lang/String;
    const-string v8, "selinux_status"

    invoke-direct {p0, v8, v7}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v7    # "status":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "selinux_status"

    const-string v10, "ro.build.selinux"

    invoke-direct {p0, v8, v9, v10}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "safetylegal"

    const-string v10, "ro.url.safetylegal"

    invoke-direct {p0, v8, v9, v10}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "fcc_equipment_id"

    const-string v10, "ro.ril.fccid"

    invoke-direct {p0, v8, v9, v10}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "baseband_version"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "device_feedback"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "act":Landroid/app/Activity;
    const-string v8, "container"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 266
    .local v4, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v8, "terms"

    invoke-static {v0, v4, v8, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 269
    const-string v8, "license"

    invoke-static {v0, v4, v8, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 272
    const-string v8, "copyright"

    invoke-static {v0, v4, v8, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 275
    const-string v8, "webview_license"

    invoke-static {v0, v4, v8, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 281
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_9

    .line 282
    const-string v8, "system_update_settings"

    invoke-static {v0, v4, v8, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 291
    :goto_2
    const-string v8, "additional_system_update_settings"

    const v9, 0x7f0c0003

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 297
    const-string v8, "regulatory_info"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 298
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_6

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mResources:Landroid/content/res/Resources;

    .line 304
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "device_processor"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "build_number"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "thanks_information_key"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    const-string v8, "container"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 324
    const-string v8, "oneplus_firmware_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mOneplusFirmwarePreference:Landroid/preference/Preference;

    .line 325
    const-string v8, "oneplus_firmware_version"

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v8, "kernel_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 332
    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 333
    const-string v8, "firmware_version"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 334
    const-string v8, "information_settings"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 347
    return-void

    .line 167
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v6    # "raminfo":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-le v8, v9, :cond_1

    .line 168
    const/16 v8, 0x1f

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_oneplus_devicename"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 227
    .restart local v6    # "raminfo":Ljava/lang/String;
    :cond_8
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v8

    if-nez v8, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0909c3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    .restart local v7    # "status":Ljava/lang/String;
    const-string v8, "selinux_status"

    invoke-direct {p0, v8, v7}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    .end local v7    # "status":Ljava/lang/String;
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v4    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_9
    const-string v8, "system_update_settings"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/OPDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 432
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_upgrade_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CheckUpdate"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 519
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 444
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firmware_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v6, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v3, v5, v9, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 446
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 447
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mHits:[J

    aget-wide v4, v3, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 454
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 455
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

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "build_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "about_others_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 461
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 471
    .local v2, "um":Landroid/os/UserManager;
    const-string v4, "no_debugging_features"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 474
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_8

    .line 475
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    .line 476
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-nez v4, :cond_6

    .line 477
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

    .line 483
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_5

    .line 484
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09012c

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 488
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 490
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

    .line 495
    :cond_6
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 497
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_7

    .line 498
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 500
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f100000

    iget v7, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v9

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 506
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 508
    :cond_8
    iget v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitCountdown:I

    if-gez v4, :cond_2

    .line 509
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_9

    .line 510
    iget-object v4, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 512
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09012d

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 514
    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 516
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_a
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    invoke-direct {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 351
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 352
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

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 360
    const-string v0, "mobile_device_name"

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
