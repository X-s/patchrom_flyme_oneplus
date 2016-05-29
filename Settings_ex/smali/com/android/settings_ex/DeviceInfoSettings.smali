.class public Lcom/android/settings_ex/DeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_CPUINFO:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

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

.field private mActivity:Landroid/app/Activity;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceNameEdit:Landroid/widget/EditText;

.field mHits:[J

.field private mResources:Landroid/content/res/Resources;

.field private mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 577
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method private CreateDeviceDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 797
    const-string v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "devicename":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    .line 800
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040081

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mView:Landroid/view/View;

    .line 802
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0f0139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    .line 803
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelected(Z)V

    .line 805
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 808
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 810
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 811
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 813
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    .line 815
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b94

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/DeviceInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DeviceInfoSettings$2;-><init>(Lcom/android/settings_ex/DeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 827
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b95

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/DeviceInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DeviceInfoSettings$3;-><init>(Lcom/android/settings_ex/DeviceInfoSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 838
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DeviceInfoSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DeviceInfoSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DeviceInfoSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private fileSize(J)[Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .prologue
    const-wide/16 v6, 0x400

    .line 755
    :try_start_0
    const-string v2, ""

    .line 756
    .local v2, "str":Ljava/lang/String;
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 757
    const-string v2, "KB"

    .line 758
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 759
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 760
    const-string v2, "MB"

    .line 761
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 762
    cmp-long v3, p1, v6

    if-ltz v3, :cond_0

    .line 763
    const-string v2, "GB"

    .line 764
    const-wide/16 v4, 0x400

    div-long/2addr p1, v4

    .line 769
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 771
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 772
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 773
    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0    # "formatter":Ljava/text/DecimalFormat;
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 776
    :catch_0
    move-exception v3

    .line 780
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 496
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 504
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 505
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
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

    .line 507
    const-string v2, "Unavailable"

    .line 513
    :goto_0
    return-object v2

    .line 508
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 509
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

    .line 511
    const-string v2, "Unavailable"

    goto :goto_0

    .line 513
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDeviceProcessorInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 660
    const-string v0, "Hardware\\s*:\\s*(.*)$"

    .line 663
    .local v0, "PROC_HARDWARE_REGEX":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "cpuinfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 668
    const-string v5, "Hardware"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    const-string v5, "Hardware\\s*:\\s*(.*)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 670
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 671
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 677
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 684
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 675
    .restart local v1    # "cpuinfo":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v5, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 677
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 679
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting cpuinfo for Device Info screen"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const-string v5, "Unknown"

    goto :goto_0

    .line 677
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
    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090afa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 571
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 548
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 551
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 553
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

    .line 554
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 555
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 557
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 558
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 560
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 571
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 565
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 481
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 482
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMobileType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 300
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 302
    const-string v2, ""

    .line 323
    :goto_0
    return-object v2

    .line 306
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 308
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

    .line 310
    if-eqz v0, :cond_4

    .line 311
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

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 314
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 323
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 526
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 529
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 533
    :catch_0
    move-exception v1

    .line 536
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 531
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 9

    .prologue
    .line 285
    const/4 v4, 0x0

    .line 287
    .local v4, "serial":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 288
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 289
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

    .line 293
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 469
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 471
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 473
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
    .line 425
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 427
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 431
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
    .line 413
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
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
    .line 453
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 435
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

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
    .line 444
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showROMStorage()Ljava/lang/String;
    .locals 12

    .prologue
    .line 695
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 697
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 698
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 699
    .local v8, "totalBlocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 710
    .local v0, "availableBlocks":J
    const-wide/16 v10, 0x400

    div-long v10, v2, v10

    mul-long v6, v8, v10

    .line 712
    .local v6, "size":J
    const-wide/32 v10, 0x4000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    .line 713
    const-string v10, "128 GB"

    .line 748
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :goto_0
    return-object v10

    .line 714
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

    .line 715
    const-string v10, "64 GB"

    goto :goto_0

    .line 716
    :cond_1
    const-wide/32 v10, 0x1000000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 717
    const-string v10, "32 GB"

    goto :goto_0

    .line 719
    :cond_2
    const-string v10, "16 GB"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "statFs":Landroid/os/StatFs;
    .end local v6    # "size":J
    .end local v8    # "totalBlocks":J
    :catch_0
    move-exception v10

    .line 748
    const-string v10, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;

    .line 134
    const v7, 0x7f06001f

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 136
    const-string v7, "firmware_version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v7, "firmware_version"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 139
    .local v3, "patch":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 140
    const-string v7, "security_patch"

    invoke-direct {p0, v7, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    const-string v7, "baseband_version"

    const-string v8, "gsm.version.baseband"

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v7, "device_model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v7, "device_processor"

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getDeviceProcessorInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v7, "fcc_equipment_id"

    const-string v8, "ro.ril.fccid"

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v7, "device_model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v7, "mobile_device_name"

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v7, "system_version_information"

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v7, "memory_capacity"

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->showROMStorage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/oneplus/settings/utils/DeviceInfoUtils;->getRamInfo()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "raminfo":Ljava/lang/String;
    const-string v7, "ddr_memory_capacity"

    invoke-direct {p0, v7, v5}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v7, "build_number"

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v7, "build_number"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    const-string v7, "kernel_version"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0909c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "status":Ljava/lang/String;
    const-string v7, "selinux_status"

    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "selinux_status"

    const-string v9, "ro.build.selinux"

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "safetylegal"

    const-string v9, "ro.url.safetylegal"

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "fcc_equipment_id"

    const-string v9, "ro.ril.fccid"

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "device_feedback"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 208
    .local v0, "act":Landroid/app/Activity;
    const-string v7, "container"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 209
    .local v2, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v7, "terms"

    invoke-static {v0, v2, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 211
    const-string v7, "license"

    invoke-static {v0, v2, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 213
    const-string v7, "copyright"

    invoke-static {v0, v2, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 215
    const-string v7, "webview_license"

    invoke-static {v0, v2, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 220
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_7

    .line 221
    const-string v7, "system_update_settings"

    invoke-static {v0, v2, v7, v10}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 230
    :goto_2
    const-string v7, "additional_system_update_settings"

    const v8, 0x7f0c0003

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 236
    const-string v7, "regulatory_info"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 237
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mResources:Landroid/content/res/Resources;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "device_processor"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "thanks_information_key"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    const-string v7, "container"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 262
    return-void

    .line 142
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v5    # "raminfo":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "security_patch"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 174
    .restart local v5    # "raminfo":Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v7

    if-nez v7, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0909c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "status":Ljava/lang/String;
    const-string v7, "selinux_status"

    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    .end local v6    # "status":Ljava/lang/String;
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string v7, "system_update_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 340
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "system_upgrade_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CheckUpdate"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 408
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 363
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "build_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 365
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    .line 367
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 368
    .local v1, "um":Landroid/os/UserManager;
    const-string v3, "no_debugging_features"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_6

    .line 371
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 372
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v3, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 376
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09012c

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 381
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 408
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 387
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 389
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_5

    .line 390
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f100000

    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 395
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 397
    :cond_6
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    .line 399
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 401
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09012d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 403
    iget-object v2, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 405
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_feedback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->sendFeedback()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/SettingsUtils;->getMemoryStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "values":[Ljava/lang/String;
    const-string v1, "memory_capacity"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 267
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method
