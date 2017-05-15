.class public Lcom/oneplus/settings/OPDashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "OPDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field private static final EXTRA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.EXTRA_SETTINGS"

.field private static final GOOGLE_GMS_SETTINGS_LINK:Ljava/lang/String; = "com.google.android.gms"

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final KEY_ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field private static final KEY_BUTTONS_SETTINGS:Ljava/lang/String; = "buttons_settings"

.field private static final KEY_CLOUD_SERVICE_SETTINGS:Ljava/lang/String; = "cloud_service_settings"

.field private static final KEY_DEVELOPMENT:Ljava/lang/String; = "development_settings"

.field private static final KEY_DEVICE_SECTION:Ljava/lang/String; = "device_section"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "fingerprint_settings"

.field private static final KEY_GESTURES_SETTINGS:Ljava/lang/String; = "gestures_settings"

.field private static final KEY_GOOGLE_GMS_SETTINGS_LINK:Ljava/lang/String; = "google_gms"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_ONEPLUS_LAB_FEATURE_ACTIVITY:Ljava/lang/String; = "oneplus_lab"

.field private static final KEY_PASSWORD_MANAGE:Ljava/lang/String; = "password_manage_settings"

.field private static final KEY_PERSONAL_SECTION:Ljava/lang/String; = "personal_section"

.field private static final KEY_PRIVACY_SETTINGS:Ljava/lang/String; = "privacy_settings"

.field private static final KEY_SIM_SETTINGS_AND_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "sim_settings_and_mobile_network_settings"

.field private static final KEY_STORAGE_SETTINGS:Ljava/lang/String; = "storage_settings"

.field private static final KEY_SYSTEM_SECTION:Ljava/lang/String; = "system_section"

.field private static final KEY_SYSTEM_UPDATE:Ljava/lang/String; = "system_updates"

.field private static final KEY_WIRELESS_SECTION:Ljava/lang/String; = "wireless_section"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final LOG_TAG:Ljava/lang/String; = "OPDashboardSummary"

.field public static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field public static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field public static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field private static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field private static final ONEPLUS_LAB_FEATURE_ACTIVITY:Ljava/lang/String; = "com.oneplus.settings.laboratory.OPLabFeatureActivity"

.field private static final REFRESH_UI:I = 0x0

.field private static final REFRESH_UI_DELAY:I = 0x12c

.field private static final TUNER_ACTIVITY:Ljava/lang/String; = "com.android.systemui.tuner.TunerActivity"


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private mAdvancedSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

.field private mButtonsSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

.field private mContext:Landroid/content/Context;

.field private mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDeviceSection:Landroid/preference/PreferenceCategory;

.field private mGesturesSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

.field private mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mHandler:Landroid/os/Handler;

.field private mMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mPersonalSection:Landroid/preference/PreferenceCategory;

.field private mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimSettingsAndMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mStorageSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

.field private mSystemSection:Landroid/preference/PreferenceCategory;

.field private mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

.field private mWirelessSection:Landroid/preference/PreferenceCategory;

.field private mZenModeDashboard:Lcom/oneplus/settings/OPDashboardPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 80
    const-string v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 124
    new-instance v0, Lcom/oneplus/settings/OPDashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardSummary$1;-><init>(Lcom/oneplus/settings/OPDashboardSummary;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mHandler:Landroid/os/Handler;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->delayRefreshUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateDevelopMent()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateSystemUpdateSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addExternalTiles(Landroid/os/UserHandle;)V
    .locals 17
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 355
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, "intent":Landroid/content/Intent;
    const/16 v13, 0x80

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v7, v5, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 358
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 359
    .local v9, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v13, v9, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v13, :cond_0

    .line 363
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 364
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 365
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v13, "com.android.settings.category"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 366
    :cond_1
    const-string v14, "OPDashboardSummary"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " for action "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " missing metadata "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_2

    const-string v13, ""

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v13, "com.android.settings.category"

    goto :goto_1

    .line 371
    :cond_3
    const/4 v2, 0x0

    .line 372
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 373
    .local v4, "icon":I
    const/4 v12, 0x0

    .line 374
    .local v12, "title":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 377
    .local v11, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 380
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    .line 381
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 382
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 384
    :cond_4
    const-string v13, "com.android.settings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 385
    const-string v13, "com.android.settings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 387
    :cond_5
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 388
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 393
    :cond_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 394
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 396
    :cond_7
    if-nez v4, :cond_8

    .line 397
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v13, Landroid/content/pm/ActivityInfo;->icon:I

    .line 399
    :cond_8
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 403
    .end local v8    # "res":Landroid/content/res/Resources;
    :goto_2
    const-string v13, "com.google.android.gms"

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v12}, Lcom/oneplus/settings/OPDashboardPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v2}, Lcom/oneplus/settings/OPDashboardPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/oneplus/settings/OPDashboardPreference;->setIntent(Landroid/content/Intent;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mPersonalSection:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_9
    const-string v13, "com.android.systemui.tuner.TunerActivity"

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "com.oneplus.settings.laboratory.OPLabFeatureActivity"

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 411
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v12}, Lcom/oneplus/settings/OPDashboardPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v2}, Lcom/oneplus/settings/OPDashboardPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/oneplus/settings/OPDashboardPreference;->setIntent(Landroid/content/Intent;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 418
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "icon":I
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_b
    return-void

    .line 400
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "icon":I
    .restart local v6    # "metaData":Landroid/os/Bundle;
    .restart local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    goto/16 :goto_2

    :catch_1
    move-exception v13

    goto/16 :goto_2
.end method

.method private checkShowUpdateIconNeeded()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "has_new_version_to_update"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 250
    .local v1, "systemHasUpdate":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDashboardSummary;->getNeedUpdateAppCount(Landroid/content/ContentResolver;)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v2

    .line 251
    .local v0, "appHasUpdate":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "appHasUpdate":Z
    .end local v1    # "systemHasUpdate":Z
    :cond_2
    move v1, v3

    .line 249
    goto :goto_0

    .restart local v1    # "systemHasUpdate":Z
    :cond_3
    move v0, v3

    .line 250
    goto :goto_1
.end method

.method private delayRefreshUI()V
    .locals 5

    .prologue
    .line 166
    const-string v3, "development_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 167
    const-string v3, "google_gms"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 168
    const-string v3, "privacy_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    .line 169
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    const v4, 0x7f0c09e1

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/OPDashboardPreference;->setTitle(I)V

    .line 171
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    const v4, 0x7f020128

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/OPDashboardPreference;->setIcon(I)V

    .line 176
    :goto_0
    const-string v3, "oneplus_lab"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 177
    const-string v3, "personal_section"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPersonalSection:Landroid/preference/PreferenceCategory;

    .line 178
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPersonalSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mGoogleDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const-string v3, "system_section"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    .line 180
    const-string v3, "wireless_section"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mWirelessSection:Landroid/preference/PreferenceCategory;

    .line 181
    const-string v3, "device_section"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDeviceSection:Landroid/preference/PreferenceCategory;

    .line 182
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mOneplusLabDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    const-string v4, "com.oneplus.cloud"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPersonalSection:Landroid/preference/PreferenceCategory;

    const-string v4, "cloud_service_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateDevelopMent()V

    .line 190
    const-string v3, "system_updates"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 191
    const-string v3, "sim_settings_and_mobile_network_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSimSettingsAndMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 192
    const-string v3, "mobile_network_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 193
    const-string v3, "zen_mode"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mZenModeDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    .line 194
    const-string v3, "buttons_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mButtonsSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    .line 195
    const-string v3, "gestures_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mGesturesSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    .line 196
    const-string v3, "storage_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mStorageSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    .line 197
    const-string v3, "advanced_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mAdvancedSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    .line 199
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->showUpdateIcon()V

    .line 201
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 202
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 203
    .local v1, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPDashboardSummary;->addExternalTiles(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    const v4, 0x7f0c06b7

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/OPDashboardPreference;->setTitle(I)V

    .line 174
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    const v4, 0x7f02012b

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/OPDashboardPreference;->setIcon(I)V

    goto/16 :goto_0

    .line 205
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "userManager":Landroid/os/UserManager;
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 206
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSimSettingsAndMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_4

    .line 210
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mWirelessSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSimSettingsAndMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_5

    .line 213
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mWirelessSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mMobileNetworkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mZenModeDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_6

    .line 216
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDeviceSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mZenModeDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mButtonsSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_7

    .line 219
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDeviceSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mButtonsSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mGesturesSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_8

    .line 222
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDeviceSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mGesturesSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_8
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mStorageSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_9

    .line 225
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDeviceSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mStorageSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_a

    .line 228
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mPrivacyPreference:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    :cond_a
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mAdvancedSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_b

    .line 231
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mAdvancedSettingsDashboard:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_b
    return-void
.end method

.method private showUpdateIcon()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->checkShowUpdateIconNeeded()Z

    move-result v1

    const-string v2, "system_updates"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/OPDashboardPreference;->showRightIcon(ZLjava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->notifyDependencyChange(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method private updateDevelopMent()V
    .locals 7

    .prologue
    .line 317
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v4, "show"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 324
    .local v1, "showDev":Z
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 326
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 328
    .local v0, "isEng":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 329
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemSection:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateSystemUpdateSettings()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->showUpdateIcon()V

    .line 246
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x23

    return v0
.end method

.method public getNeedUpdateAppCount(Landroid/content/ContentResolver;)I
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 262
    const/4 v6, 0x0

    .line 263
    .local v6, "count":I
    const/4 v7, 0x0

    .line 265
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "canInstall =?"

    .line 266
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 267
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    if-eqz v7, :cond_0

    .line 269
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 272
    :catch_0
    move-exception v8

    .line 273
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDashboardSummary;->addPreferencesFromResource(I)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mResolver:Landroid/content/ContentResolver;

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 151
    new-instance v0, Lcom/oneplus/settings/OPDashboardSummary$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardSummary$2;-><init>(Lcom/oneplus/settings/OPDashboardSummary;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 160
    new-instance v0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/OPDashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 349
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 350
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 351
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 239
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 339
    .local v0, "listview":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 342
    :cond_0
    return-void
.end method
