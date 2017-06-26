.class public Lcom/android/settings_ex/DeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_DEVICE_FEEDBACK:Ljava/lang/String; = "device_feedback"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_LEGAL:Ljava/lang/String; = "safetylegal"

.field private static final KEY_SECURITY_PATCH:Ljava/lang/String; = "security_patch"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

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
    .line 467
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 283
    const-string v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    const-string v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "extra":Ljava/lang/String;
    const-string v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_0
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with extra "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 386
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 394
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 395
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
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

    .line 397
    const-string v2, "Unavailable"

    .line 403
    :goto_0
    return-object v2

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 399
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

    .line 401
    const-string v2, "Unavailable"

    goto :goto_0

    .line 403
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

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0cd0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 461
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 438
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 441
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 443
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

    .line 444
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 445
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 447
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 448
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 450
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 461
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 455
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 376
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 416
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 419
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v1

    .line 426
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 421
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
    .line 359
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 361
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 363
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
    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 317
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
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
    .line 303
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
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
    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

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
    .line 334
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0c0bc5

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v9, 0x7f08001a

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string v9, "firmware_version"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v9, "firmware_version"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 109
    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 110
    .local v4, "patch":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 112
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v8, "template":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 114
    .local v5, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "dMMMMyyyy"

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 119
    .end local v1    # "format":Ljava/lang/String;
    .end local v5    # "patchDate":Ljava/util/Date;
    .end local v8    # "template":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v9, "security_patch"

    invoke-direct {p0, v9, v4}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_1
    const-string v9, "baseband_version"

    const-string v10, "gsm.version.baseband"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v9, "device_model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v9, "fcc_equipment_id"

    const-string v10, "ro.ril.fccid"

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v9, "device_model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v9, "build_number"

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v9, "build_number"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    const-string v9, "kernel_version"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-static {}, Lcom/android/settings_ex/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0b5a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "status":Ljava/lang/String;
    const-string v9, "selinux_status"

    invoke-direct {p0, v9, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "selinux_status"

    const-string v11, "ro.build.selinux"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "safetylegal"

    const-string v11, "ro.url.safetylegal"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "fcc_equipment_id"

    const-string v11, "ro.ril.fccid"

    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "baseband_version"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "device_feedback"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 170
    .local v3, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_7

    .line 171
    const-string v9, "system_update_settings"

    invoke-static {v0, v3, v9, v12}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 180
    :goto_3
    const-string v9, "additional_system_update_settings"

    const v10, 0x7f100004

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 184
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 187
    :cond_3
    const-string v9, "regulatory_info"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 188
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_4
    return-void

    .line 121
    .end local v0    # "act":Landroid/app/Activity;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "security_patch"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 135
    :cond_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v9

    if-nez v9, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0b5b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 137
    .restart local v7    # "status":Ljava/lang/String;
    const-string v9, "selinux_status"

    invoke-direct {p0, v9, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    .end local v7    # "status":Ljava/lang/String;
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string v9, "system_update_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .line 116
    .end local v0    # "act":Landroid/app/Activity;
    .end local v3    # "parentPreference":Landroid/preference/PreferenceGroup;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 205
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "firmware_version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    iget-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v9, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v7, v6, v8, v5, v9}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 207
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 208
    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    aget-wide v6, v6, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 210
    .local v4, "um":Landroid/os/UserManager;
    const-string v6, "no_fun"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    const-string v6, "DeviceInfoSettings"

    const-string v7, "Sorry, no fun for you!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v4    # "um":Landroid/os/UserManager;
    :goto_0
    return v5

    .line 215
    .restart local v4    # "um":Landroid/os/UserManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android"

    const-class v6, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0

    .line 220
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "build_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 228
    :cond_3
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 229
    .restart local v4    # "um":Landroid/os/UserManager;
    const-string v7, "no_debugging_features"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    goto :goto_0

    .line 231
    :cond_4
    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v7, :cond_8

    .line 232
    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 233
    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v7, :cond_6

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "development"

    invoke-virtual {v7, v8, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "show"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v5, :cond_5

    .line 238
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0c02de

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 242
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v5

    const-class v7, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6, v6}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 248
    :cond_6
    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_1

    .line 250
    iget-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v7, :cond_7

    .line 251
    iget-object v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->cancel()V

    .line 253
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f130000

    iget v10, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v6, v6, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v5

    invoke-virtual {v8, v9, v10, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 256
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 258
    :cond_8
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v5, :cond_1

    .line 259
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v5, :cond_9

    .line 260
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 262
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0c02df

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 264
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 266
    .end local v4    # "um":Landroid/os/UserManager;
    :cond_a
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_feedback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 267
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1

    .line 268
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system_update_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const-string v5, "carrier_config"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 271
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 272
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string v5, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

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
    iput v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 201
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
