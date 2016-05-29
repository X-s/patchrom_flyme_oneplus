.class public Lcom/android/settings_ex/system/DeviceInfoDetailSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoDetailSettings.java"

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

.field private static final KEY_DEVICE_FEEDBACK:Ljava/lang/String; = "device_feedback"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_DEVICE_PROCESSOR:Ljava/lang/String; = "device_processor"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_MOBILE_DEVICE_NAME:Ljava/lang/String; = "mobile_device_name"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_LEGAL:Ljava/lang/String; = "safetylegal"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettings"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field private static final PROPERTY_SELINUX_STATUS:Ljava/lang/String; = "ro.build.selinux"

.field private static final PROPERTY_URL_SAFETYLEGAL:Ljava/lang/String; = "ro.url.safetylegal"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 360
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 368
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 369
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
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

    .line 371
    const-string v2, "Unavailable"

    .line 377
    :goto_0
    return-object v2

    .line 372
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 373
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

    .line 375
    const-string v2, "Unavailable"

    goto :goto_0

    .line 377
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
    .line 521
    const-string v0, "Hardware\\s*:\\s*(.*)$"

    .line 524
    .local v0, "PROC_HARDWARE_REGEX":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "cpuinfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 529
    const-string v5, "Hardware"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    const-string v5, "Hardware\\s*:\\s*(.*)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 531
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 538
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 545
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 536
    .restart local v1    # "cpuinfo":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v5, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 538
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 540
    .end local v1    # "cpuinfo":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting cpuinfo for Device Info screen"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    const-string v5, "Unknown"

    goto :goto_0

    .line 538
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
    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090afa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 412
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 415
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 417
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

    .line 418
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 419
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 421
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 422
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 424
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 435
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 429
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 345
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 346
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 390
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 393
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v1

    .line 400
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 395
    :catch_1
    move-exception v1

    goto :goto_1
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
    .line 333
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 335
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 337
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
    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 291
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
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
    .line 277
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
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
    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

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
    .line 308
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getMobileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "hd":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v5, 0x7f06001b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->addPreferencesFromResource(I)V

    .line 104
    const-string v5, "firmware_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "firmware_version"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 106
    const-string v5, "baseband_version"

    const-string v6, "gsm.version.baseband"

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "device_model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v5, "device_processor"

    invoke-static {}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getDeviceProcessorInfo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v5, "fcc_equipment_id"

    const-string v6, "ro.ril.fccid"

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "build_number"

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v5, "build_number"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 113
    const-string v5, "kernel_version"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    const-string v5, "mobile_device_name"

    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getMobileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0909c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "status":Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "selinux_status"

    const-string v7, "ro.build.selinux"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "safetylegal"

    const-string v7, "ro.url.safetylegal"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "fcc_equipment_id"

    const-string v7, "ro.ril.fccid"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_feedback"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, "act":Landroid/app/Activity;
    const-string v5, "container"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 155
    .local v2, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v5, "terms"

    invoke-static {v0, v2, v5, v8}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 157
    const-string v5, "license"

    invoke-static {v0, v2, v5, v8}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 159
    const-string v5, "copyright"

    invoke-static {v0, v2, v5, v8}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_6

    .line 165
    const-string v5, "system_update_settings"

    invoke-static {v0, v2, v5, v8}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 174
    :goto_1
    const-string v5, "additional_system_update_settings"

    const v6, 0x7f0c0003

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    const-string v5, "regulatory_info"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 181
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_model"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_processor"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "firmware_version"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "kernel_version"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "build_number"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    return-void

    .line 120
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0909c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    .restart local v4    # "status":Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v4    # "status":Ljava/lang/String;
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_6
    const-string v5, "system_update_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 214
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firmware_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    iget-object v6, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v3, v5, v9, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 216
    iget-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 217
    iget-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mHits:[J

    aget-wide v4, v3, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_1
    return v3

    .line 223
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 224
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

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "build_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_1

    .line 231
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 232
    .local v2, "um":Landroid/os/UserManager;
    const-string v4, "no_debugging_features"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    if-lez v4, :cond_6

    .line 235
    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    .line 236
    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    if-nez v4, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

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

    .line 240
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09012c

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v3}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 251
    :cond_4
    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 253
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_5

    .line 254
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 256
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f100000

    iget v7, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v9

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 259
    iget-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 261
    :cond_6
    iget v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    if-gez v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_7

    .line 263
    iget-object v4, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09012d

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 267
    iget-object v3, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 269
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->sendFeedback()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->getActivity()Landroid/app/Activity;

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
    iput v0, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitCountdown:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/system/DeviceInfoDetailSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 210
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
