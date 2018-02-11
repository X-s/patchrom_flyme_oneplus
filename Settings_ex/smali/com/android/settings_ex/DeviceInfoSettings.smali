.class public Lcom/android/settings_ex/DeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DeviceInfoSettings$1;,
        Lcom/android/settings_ex/DeviceInfoSettings$2;,
        Lcom/android/settings_ex/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_DDR_MEMORY_CAPACITY:Ljava/lang/String; = "ddr_memory_capacity"

.field private static final KEY_DEVICE_FEEDBACK:Ljava/lang/String; = "device_feedback"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_MANUAL:Ljava/lang/String; = "manual"

.field private static final KEY_MBN_VERSION:Ljava/lang/String; = "mbn_version"

.field private static final KEY_MEMORY_CAPACITY:Ljava/lang/String; = "memory_capacity"

.field private static final KEY_MOBILE_DEVICE_NAME:Ljava/lang/String; = "mobile_device_name"

.field private static final KEY_ONEPLUS_AUTHENTICATION_INFORMATION:Ljava/lang/String; = "oneplus_authentication_information"

.field private static final KEY_ONEPLUS_OOS_VERSION:Ljava/lang/String; = "oneplus_oos_version"

.field private static final KEY_ONEPLUS_PRE_APPLICATION:Ljava/lang/String; = "oneplus_pre_application"

.field private static final KEY_OP_ELECTRONIC_CARD:Ljava/lang/String; = "op_electronic_card"

.field private static final KEY_QGP_VERSION:Ljava/lang/String; = "qgp_version"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_LEGAL:Ljava/lang/String; = "safetylegal"

.field private static final KEY_SECURITY_PATCH:Ljava/lang/String; = "security_patch"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettings"

.field private static final MBN_VERSION_PATH:Ljava/lang/String; = "/persist/speccfg/mbnversion"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field private static final PROPERTY_MBN_VERSION:Ljava/lang/String; = "persist.mbn.version"

.field private static final PROPERTY_QGP_VERSION:Ljava/lang/String; = "persist.qgp.version"

.field private static final PROPERTY_SELINUX_STATUS:Ljava/lang/String; = "ro.build.selinux"

.field private static final PROPERTY_URL_SAFETYLEGAL:Ljava/lang/String; = "ro.url.safetylegal"

.field private static final QGP_VERSION_PATH:Ljava/lang/String; = "/persist/speccfg/qgpversion"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$1;-><init>()V

    .line 609
    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 622
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$2;-><init>()V

    .line 621
    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 60
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 470
    const-string/jumbo v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    const-string/jumbo v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :cond_0
    const-string/jumbo v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 483
    const-string/jumbo v6, " with extra "

    .line 482
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 483
    const-string/jumbo v6, ", "

    .line 482
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private getMBNVersionValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 530
    const/4 v2, 0x0

    .line 532
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 537
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 538
    return-object v5

    .line 539
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 542
    .end local v2    # "mVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read MBNVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_3
    :goto_0
    return-object v2

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getQGPVersionValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 551
    const/4 v2, 0x0

    .line 553
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 559
    return-object v5

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 563
    .end local v2    # "mVersion":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read QGPVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_3
    :goto_0
    return-object v2

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 505
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 501
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 514
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 511
    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string/jumbo v3, "\' preference"

    .line 495
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
    .line 581
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    return-void

    .line 585
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 574
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f0e0da1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 133
    const v18, 0x7f080026

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 135
    const-string/jumbo v18, "firmware_version"

    sget-object v19, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v18, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 138
    invoke-static {}, Lcom/android/settings_exlib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "patch":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 140
    const-string/jumbo v18, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "op_electronic_card"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 147
    const-string/jumbo v18, "baseband_version"

    const-string/jumbo v19, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v18, "device_model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/settings_exlib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v18, "fcc_equipment_id"

    const-string/jumbo v19, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v18, "device_model"

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v18, "build_number"

    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 155
    const-string/jumbo v19, "oem_oneplus_modified_devicename"

    .line 153
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, "modified":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 156
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "mDeviceName":Ljava/lang/String;
    if-nez v13, :cond_f

    .line 159
    if-eqz v10, :cond_0

    const-string/jumbo v18, "oneplus"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 160
    const-string/jumbo v18, "ONE E1001"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 159
    if-nez v18, :cond_0

    .line 161
    const-string/jumbo v18, "ONE E1003"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 159
    if-nez v18, :cond_0

    .line 162
    const-string/jumbo v18, "ONE E1005"

    .line 161
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 158
    if-eqz v18, :cond_f

    .line 163
    :cond_0
    const-string/jumbo v18, "ro.display.series"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 165
    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 164
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 168
    const-string/jumbo v19, "oem_oneplus_modified_devicename"

    .line 169
    const-string/jumbo v20, "1"

    .line 167
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    :cond_1
    :goto_1
    const-string/jumbo v18, "mobile_device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v18, "ddr_memory_capacity"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v18, "memory_capacity"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getTotalMemory()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v18, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 181
    const-string/jumbo v18, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0051

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 181
    invoke-static/range {v19 .. v19}, Lcom/android/settings_exlib/DeviceInfoUtils;->customizeFormatKernelVersion(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMBNVersionValue()Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "mMbnVersion":Ljava/lang/String;
    const-string/jumbo v18, "mbn_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-nez v11, :cond_2

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "mbn_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    :cond_2
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v18

    if-nez v18, :cond_10

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0d37

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "status":Ljava/lang/String;
    const-string/jumbo v18, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v17    # "status":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "selinux_status"

    .line 199
    const-string/jumbo v20, "ro.build.selinux"

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "safetylegal"

    .line 203
    const-string/jumbo v20, "ro.url.safetylegal"

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "fcc_equipment_id"

    .line 207
    const-string/jumbo v20, "ro.ril.fccid"

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 215
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "device_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 220
    :cond_5
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string/jumbo v19, "oem.authentication_information.support"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 222
    const-string/jumbo v18, "oneplus_authentication_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 223
    .local v5, "authenticationInformation":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 232
    .end local v5    # "authenticationInformation":Landroid/support/v7/preference/Preference;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 244
    .local v4, "act":Landroid/app/Activity;
    const-string/jumbo v18, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 250
    .local v9, "isRJILlayout":Z
    if-eqz v9, :cond_7

    .line 251
    const-string/jumbo v18, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 255
    :cond_7
    const-string/jumbo v18, "additional_system_update_settings"

    .line 256
    const v19, 0x7f0c000f

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 259
    const-string/jumbo v18, "manual"

    const v19, 0x7f0c0011

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 263
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v18, "android.settings.SHOW_REGULATORY_INFO"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "ro.product.model"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "model":Ljava/lang/String;
    const-string/jumbo v18, "ro.rf_version"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "contry":Ljava/lang/String;
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_11

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 269
    const-string/jumbo v18, "A3003"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 267
    if-nez v18, :cond_11

    .line 269
    const-string/jumbo v18, "Am"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 278
    :cond_8
    :goto_3
    const-string/jumbo v18, "regulatory_info"

    const-string/jumbo v19, "android.settings.SHOW_REGULATORY_INFO"

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v18, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 281
    .local v16, "regulatoryinfopref":Landroid/support/v7/preference/Preference;
    const-string/jumbo v18, "oneplus_authentication_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 282
    .local v6, "authenticationinfopref":Landroid/support/v7/preference/Preference;
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 283
    const-string/jumbo v18, "Eu"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string/jumbo v18, "In"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 284
    :cond_9
    if-eqz v16, :cond_a

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 287
    :cond_a
    if-eqz v6, :cond_b

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 301
    :cond_b
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v19, v18, v20

    invoke-static/range {v18 .. v18}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 302
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e04bd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const-string/jumbo v19, "ro.oxygen.version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 304
    const v21, 0x7f0e04f1

    .line 303
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    :goto_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "oneplus_pre_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 317
    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 129
    :cond_d
    return-void

    .line 142
    .end local v4    # "act":Landroid/app/Activity;
    .end local v6    # "authenticationinfopref":Landroid/support/v7/preference/Preference;
    .end local v7    # "contry":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isRJILlayout":Z
    .end local v10    # "mDeviceName":Ljava/lang/String;
    .end local v11    # "mMbnVersion":Ljava/lang/String;
    .end local v12    # "model":Ljava/lang/String;
    .end local v13    # "modified":Ljava/lang/String;
    .end local v16    # "regulatoryinfopref":Landroid/support/v7/preference/Preference;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 170
    .restart local v10    # "mDeviceName":Ljava/lang/String;
    .restart local v13    # "modified":Ljava/lang/String;
    :cond_f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 171
    const/16 v18, 0x0

    const/16 v19, 0x1f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 173
    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 172
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 192
    .restart local v11    # "mMbnVersion":Ljava/lang/String;
    :cond_10
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v18

    if-nez v18, :cond_3

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0d38

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 194
    .restart local v17    # "status":Ljava/lang/String;
    const-string/jumbo v18, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 270
    .end local v17    # "status":Ljava/lang/String;
    .restart local v4    # "act":Landroid/app/Activity;
    .restart local v7    # "contry":Ljava/lang/String;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "isRJILlayout":Z
    .restart local v12    # "model":Ljava/lang/String;
    :cond_11
    const-string/jumbo v18, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 271
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v15, :cond_8

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 290
    .end local v15    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v6    # "authenticationinfopref":Landroid/support/v7/preference/Preference;
    .restart local v16    # "regulatoryinfopref":Landroid/support/v7/preference/Preference;
    :cond_12
    const-string/jumbo v18, "Ch"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 291
    if-eqz v16, :cond_b

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 294
    :cond_13
    const-string/jumbo v18, "Am"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 295
    if-eqz v6, :cond_b

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 307
    :cond_14
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e02b2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "H2"

    const-string/jumbo v21, "H\u2082"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const-string/jumbo v19, "ro.rom.version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 309
    const v21, 0x7f0e04f1

    .line 308
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 309
    const-string/jumbo v20, "H2"

    const-string/jumbo v21, "H\u2082"

    .line 308
    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "op_electronic_card"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, "activty":Landroid/app/Activity;
    const-string/jumbo v5, "key_warranty_time"

    const-wide/16 v8, -0x1

    invoke-static {v5, v8, v9}, Lcom/oneplus/settings/utils/OPPrefUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 349
    .local v6, "warrantyStartTime":J
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->checkNetworkAviliable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 350
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.ONEPLUS_ELECTRONIC_CARD_ACTION"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 463
    .end local v0    # "activty":Landroid/app/Activity;
    .end local v6    # "warrantyStartTime":J
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5

    .line 352
    .restart local v0    # "activty":Landroid/app/Activity;
    .restart local v6    # "warrantyStartTime":J
    :cond_2
    const v5, 0x7f0e03e5

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 354
    .end local v0    # "activty":Landroid/app/Activity;
    .end local v6    # "warrantyStartTime":J
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "firmware_version"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v9, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v5, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 356
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    aput-wide v10, v5, v8

    .line 357
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x1f4

    sub-long/2addr v10, v12

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v8, "no_fun"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 359
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v5, :cond_5

    .line 363
    :cond_4
    :goto_1
    const-string/jumbo v5, "DeviceInfoSettings"

    const-string/jumbo v8, "Sorry, no fun for you!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v5, 0x0

    return v5

    .line 360
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 361
    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 360
    invoke-static {v5, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 367
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android"

    .line 369
    const-class v8, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "oneplus_authentication_information"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 379
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 380
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/oneplus/settings/OPAuthenticationInformationSettings;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 382
    const/4 v5, 0x1

    return v5

    .line 385
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "build_number"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 387
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    return v5

    .line 390
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 391
    const/4 v5, 0x1

    return v5

    .line 394
    :cond_a
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v8, "no_debugging_features"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 395
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_b

    .line 396
    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v5, :cond_c

    .line 400
    :cond_b
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 397
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 398
    iget-object v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 397
    invoke-static {v5, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 403
    :cond_d
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v5, :cond_11

    .line 404
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 405
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v5, :cond_f

    .line 406
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v8, "development"

    .line 407
    const/4 v9, 0x0

    .line 406
    invoke-virtual {v5, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 408
    const-string/jumbo v8, "show"

    const/4 v9, 0x1

    .line 406
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v5, :cond_e

    .line 410
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 412
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0e04f2

    .line 413
    const/4 v9, 0x1

    .line 412
    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 414
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 416
    invoke-static {v5}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v5

    .line 418
    const-class v8, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 416
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 420
    :cond_f
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v5, :cond_1

    .line 421
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v8, 0x5

    if-ge v5, v8, :cond_1

    .line 422
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v5, :cond_10

    .line 423
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 425
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 426
    iget v9, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 425
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 426
    iget v11, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f130002

    .line 425
    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 427
    const/4 v9, 0x0

    .line 425
    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 428
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 430
    :cond_11
    iget v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v5, :cond_1

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v5, :cond_12

    .line 432
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 434
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0e04f3

    .line 435
    const/4 v9, 0x1

    .line 434
    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 436
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 438
    :cond_13
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "security_patch"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 441
    const-string/jumbo v5, "DeviceInfoSettings"

    const-string/jumbo v8, "Stop click action on security_patch: queryIntentActivities() returns empty"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v5, 0x1

    return v5

    .line 445
    :cond_14
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "device_feedback"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 446
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 447
    :cond_15
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "system_update_settings"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 449
    const-string/jumbo v5, "carrier_config"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 450
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 451
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    const-string/jumbo v5, "ci_action_on_sys_update_bool"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_0

    .line 456
    .end local v1    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_16
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "oneplus_pre_application"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 457
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 458
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.oneplus.action.PRE_INSTALLED_APP_LIST"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 460
    const/4 v5, 0x1

    return v5
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    .line 327
    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "show"

    .line 328
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 326
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, -0x1

    .line 326
    :goto_0
    iput v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 330
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 332
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 334
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 336
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 339
    const-string/jumbo v0, "mobile_device_name"

    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_oneplus_devicename"

    .line 339
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
