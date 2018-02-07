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

.field private static final KEY_ONEPLUS_PRODUCT_INFO:Ljava/lang/String; = "oneplus_product_info"

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
    .line 598
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$1;-><init>()V

    .line 597
    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 610
    new-instance v0, Lcom/android/settings_ex/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceInfoSettings$2;-><init>()V

    .line 609
    sput-object v0, Lcom/android/settings_ex/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 58
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 458
    const-string/jumbo v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    const-string/jumbo v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_0
    const-string/jumbo v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 471
    const-string/jumbo v6, " with extra "

    .line 470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 471
    const-string/jumbo v6, ", "

    .line 470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
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

    .line 518
    const/4 v2, 0x0

    .line 520
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 523
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 525
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 526
    return-object v5

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/mbnversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 528
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

    .line 530
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

    .line 535
    :cond_3
    :goto_0
    return-object v2

    .line 531
    :catch_0
    move-exception v1

    .line 532
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

    .line 539
    const/4 v2, 0x0

    .line 541
    .local v2, "mVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v3, :cond_3

    .line 546
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    invoke-interface {v3, v4}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    return-object v5

    .line 548
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v4, "/persist/speccfg/qgpversion"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 549
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

    .line 551
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

    .line 556
    :cond_3
    :goto_0
    return-object v2

    .line 552
    :catch_0
    move-exception v1

    .line 553
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
    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 493
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 489
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 502
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 499
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
    .line 478
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
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

    .line 484
    const-string/jumbo v3, "\' preference"

    .line 483
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
    .line 569
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    return-void

    .line 573
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 568
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 510
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 560
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0e0d73

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 131
    const v18, 0x7f080026

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 133
    const-string/jumbo v18, "firmware_version"

    sget-object v19, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v18, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 136
    invoke-static {}, Lcom/android/settings_exlib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v14

    .line 137
    .local v14, "patch":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 138
    const-string/jumbo v18, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    const-string/jumbo v18, "baseband_version"

    const-string/jumbo v19, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
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

    .line 145
    const-string/jumbo v18, "fcc_equipment_id"

    const-string/jumbo v19, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v18, "device_model"

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v18, "build_number"

    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 151
    const-string/jumbo v19, "oem_oneplus_modified_devicename"

    .line 149
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, "modified":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 152
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "mDeviceName":Ljava/lang/String;
    if-nez v13, :cond_e

    .line 155
    if-eqz v10, :cond_0

    const-string/jumbo v18, "oneplus"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 156
    const-string/jumbo v18, "ONE E1001"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 155
    if-nez v18, :cond_0

    .line 157
    const-string/jumbo v18, "ONE E1003"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 155
    if-nez v18, :cond_0

    .line 158
    const-string/jumbo v18, "ONE E1005"

    .line 157
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 154
    if-eqz v18, :cond_e

    .line 159
    :cond_0
    const-string/jumbo v18, "ro.display.series"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 161
    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 160
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 164
    const-string/jumbo v19, "oem_oneplus_modified_devicename"

    .line 165
    const-string/jumbo v20, "1"

    .line 163
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    :cond_1
    :goto_1
    const-string/jumbo v18, "mobile_device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v18, "ddr_memory_capacity"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v18, "memory_capacity"

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getTotalMemory()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v18, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 177
    const-string/jumbo v18, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0051

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 177
    invoke-static/range {v19 .. v19}, Lcom/android/settings_exlib/DeviceInfoUtils;->customizeFormatKernelVersion(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMBNVersionValue()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "mMbnVersion":Ljava/lang/String;
    const-string/jumbo v18, "mbn_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-nez v11, :cond_2

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "mbn_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_2
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v18

    if-nez v18, :cond_f

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0d09

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 187
    .local v17, "status":Ljava/lang/String;
    const-string/jumbo v18, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v17    # "status":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "selinux_status"

    .line 195
    const-string/jumbo v20, "ro.build.selinux"

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "safetylegal"

    .line 199
    const-string/jumbo v20, "ro.url.safetylegal"

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "fcc_equipment_id"

    .line 203
    const-string/jumbo v20, "ro.ril.fccid"

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 211
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_exlib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "device_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 216
    :cond_5
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string/jumbo v19, "oem.authentication_information.support"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 218
    const-string/jumbo v18, "oneplus_authentication_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 219
    .local v5, "authenticationInformation":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 228
    .end local v5    # "authenticationInformation":Landroid/support/v7/preference/Preference;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 240
    .local v4, "act":Landroid/app/Activity;
    const-string/jumbo v18, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 246
    .local v9, "isRJILlayout":Z
    if-eqz v9, :cond_7

    .line 247
    const-string/jumbo v18, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 251
    :cond_7
    const-string/jumbo v18, "additional_system_update_settings"

    .line 252
    const v19, 0x7f0c000f

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v18, "manual"

    const v19, 0x7f0c0011

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 259
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v18, "android.settings.SHOW_REGULATORY_INFO"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "ro.product.model"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "model":Ljava/lang/String;
    const-string/jumbo v18, "ro.rf_version"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "contry":Ljava/lang/String;
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_10

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 265
    const-string/jumbo v18, "A3003"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 263
    if-nez v18, :cond_10

    .line 265
    const-string/jumbo v18, "Am"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 274
    :cond_8
    :goto_3
    const-string/jumbo v18, "regulatory_info"

    const-string/jumbo v19, "android.settings.SHOW_REGULATORY_INFO"

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfActivityMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v18, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 277
    .local v16, "regulatoryinfopref":Landroid/support/v7/preference/Preference;
    const-string/jumbo v18, "oneplus_authentication_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 278
    .local v6, "authenticationinfopref":Landroid/support/v7/preference/Preference;
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v19, "ONEPLUS A5000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 279
    const-string/jumbo v18, "Eu"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string/jumbo v18, "In"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 280
    :cond_9
    if-eqz v16, :cond_a

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 283
    :cond_a
    if-eqz v6, :cond_b

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 297
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

    if-eqz v18, :cond_13

    .line 298
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e048e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const-string/jumbo v19, "ro.oxygen.version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 300
    const v21, 0x7f0e04c3

    .line 299
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    :goto_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v18

    if-nez v18, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 313
    :goto_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 127
    :cond_c
    return-void

    .line 140
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
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "security_patch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 166
    .restart local v10    # "mDeviceName":Ljava/lang/String;
    .restart local v13    # "modified":Ljava/lang/String;
    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 167
    const/16 v18, 0x0

    const/16 v19, 0x1f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 169
    const-string/jumbo v19, "oem_oneplus_devicename"

    .line 168
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 188
    .restart local v11    # "mMbnVersion":Ljava/lang/String;
    :cond_f
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v18

    if-nez v18, :cond_3

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0d0a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 190
    .restart local v17    # "status":Ljava/lang/String;
    const-string/jumbo v18, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 266
    .end local v17    # "status":Ljava/lang/String;
    .restart local v4    # "act":Landroid/app/Activity;
    .restart local v7    # "contry":Ljava/lang/String;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "isRJILlayout":Z
    .restart local v12    # "model":Ljava/lang/String;
    :cond_10
    const-string/jumbo v18, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v15

    .line 267
    .local v15, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v15, :cond_8

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 286
    .end local v15    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v6    # "authenticationinfopref":Landroid/support/v7/preference/Preference;
    .restart local v16    # "regulatoryinfopref":Landroid/support/v7/preference/Preference;
    :cond_11
    const-string/jumbo v18, "Ch"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 287
    if-eqz v16, :cond_b

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 290
    :cond_12
    const-string/jumbo v18, "Am"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 291
    if-eqz v6, :cond_b

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 303
    :cond_13
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

    .line 304
    const-string/jumbo v18, "oneplus_oos_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    const-string/jumbo v19, "ro.rom.version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 305
    const v21, 0x7f0e04c3

    .line 304
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 305
    const-string/jumbo v20, "H2"

    const-string/jumbo v21, "H\u2082"

    .line 304
    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 309
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "oneplus_product_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 342
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "firmware_version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v7, v5, v10, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 344
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 345
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    aget-wide v4, v4, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 346
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v5, "no_fun"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    :goto_0
    const-string/jumbo v4, "DeviceInfoSettings"

    const-string/jumbo v5, "Sorry, no fun for you!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v10

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 349
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 348
    invoke-static {v4, v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 355
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    .line 357
    const-class v5, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4

    .line 360
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oneplus_authentication_information"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 367
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 368
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/oneplus/settings/OPAuthenticationInformationSettings;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 370
    return v7

    .line 373
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "build_number"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 375
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-nez v4, :cond_6

    return v7

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 379
    return v7

    .line 382
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 383
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v4, :cond_8

    .line 384
    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v4, :cond_9

    .line 388
    :cond_8
    :goto_2
    return v7

    .line 385
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 386
    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 385
    invoke-static {v4, v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 391
    :cond_a
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_e

    .line 392
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 393
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v4, :cond_c

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "development"

    invoke-virtual {v4, v5, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 396
    const-string/jumbo v5, "show"

    .line 394
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_b

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 400
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e04c4

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 402
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 404
    invoke-static {v4}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v4

    .line 406
    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v4, v5, v7, v7}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 408
    :cond_c
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v4, :cond_3

    .line 409
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_d

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 413
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 414
    iget v6, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 413
    new-array v7, v7, [Ljava/lang/Object;

    .line 414
    iget v8, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f130002

    .line 413
    invoke-virtual {v5, v8, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 416
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 418
    :cond_e
    iget v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v4, :cond_3

    .line 419
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_f

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 422
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e04c5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 424
    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 426
    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "security_patch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    const-string/jumbo v4, "DeviceInfoSettings"

    const-string/jumbo v5, "Stop click action on security_patch: queryIntentActivities() returns empty"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v7

    .line 433
    :cond_11
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "device_feedback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 434
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1

    .line 435
    :cond_12
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "system_update_settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 437
    const-string/jumbo v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 438
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 439
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceInfoSettings;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    goto/16 :goto_1

    .line 444
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_13
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oneplus_pre_application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 446
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.oneplus.action.PRE_INSTALLED_APP_LIST"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 448
    return v7
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    .line 323
    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "show"

    .line 324
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 322
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, -0x1

    .line 322
    :goto_0
    iput v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 326
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 328
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 330
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 332
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 335
    const-string/jumbo v0, "mobile_device_name"

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_oneplus_devicename"

    .line 335
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
