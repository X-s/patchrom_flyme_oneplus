.class public final Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;
    }
.end annotation


# static fields
.field private static final CHANGE_ALL:I = -0x1

.field private static final CHANGE_ROUTES:I = 0x2

.field private static final CHANGE_SETTINGS:I = 0x1

.field private static final CHANGE_WIFI_DISPLAY_STATUS:I = 0x4

.field private static final DEBUG:Z = false

.field private static final MENU_ID_ENABLE_WIFI_DISPLAY:I = 0x1

.field private static final ORDER_AVAILABLE:I = 0x3

.field private static final ORDER_CERTIFICATION:I = 0x1

.field private static final ORDER_CONNECTED:I = 0x2

.field private static final ORDER_UNAVAILABLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDisplaySettings"


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "changes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p1, "changes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 593
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 602
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 612
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 619
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method private buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 311
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 312
    new-instance v9, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 313
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v10, 0x7f0e06cd

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 314
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 318
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 321
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 322
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 323
    .local v5, "p":Landroid/support/v7/preference/Preference;
    const v9, 0x7f0e06ce

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 324
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 328
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 329
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v10, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 353
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v10, 0x7f0401f0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 358
    .end local v5    # "p":Landroid/support/v7/preference/Preference;
    :cond_0
    new-instance v6, Lcom/android/settings_ex/wfd/WifiDisplaySettings$6;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 366
    .local v6, "pref":Landroid/support/v14/preference/SwitchPreference;
    const v9, 0x7f0e06cf

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 367
    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 368
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 371
    new-instance v6, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;

    .end local v6    # "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 383
    .restart local v6    # "pref":Landroid/support/v14/preference/SwitchPreference;
    const v9, 0x7f0e06d0

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 384
    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 385
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 388
    new-instance v2, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 389
    .local v2, "lp":Landroid/support/v7/preference/ListPreference;
    new-instance v9, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 403
    const-string/jumbo v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    .line 402
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 404
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Default"

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const-string/jumbo v9, "PBC"

    const/4 v10, 0x1

    aput-object v9, v7, v10

    const-string/jumbo v9, "KEYPAD"

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const-string/jumbo v9, "DISPLAY"

    const/4 v10, 0x3

    aput-object v9, v7, v10

    .line 405
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    .line 406
    const-string/jumbo v9, "4"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 407
    const-string/jumbo v9, "0"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 408
    const-string/jumbo v9, "2"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 409
    const-string/jumbo v9, "1"

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 410
    .local v8, "wpsValues":[Ljava/lang/String;
    const-string/jumbo v9, "wps"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 411
    const v9, 0x7f0e06d3

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 412
    invoke-virtual {v2, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v2, v8}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 414
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 419
    new-instance v2, Landroid/support/v7/preference/ListPreference;

    .end local v2    # "lp":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 420
    .restart local v2    # "lp":Landroid/support/v7/preference/ListPreference;
    new-instance v9, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 432
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Auto"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v0, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v0, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v0, v10

    .line 433
    .local v0, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v9, "0"

    const/4 v10, 0x0

    aput-object v9, v1, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v1, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v1, v10

    .line 434
    .local v1, "lcValues":[Ljava/lang/String;
    const-string/jumbo v9, "listening_channel"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 435
    const v9, 0x7f0e06d4

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 436
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 438
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 443
    new-instance v2, Landroid/support/v7/preference/ListPreference;

    .end local v2    # "lp":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 444
    .restart local v2    # "lp":Landroid/support/v7/preference/ListPreference;
    new-instance v9, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 456
    const/4 v9, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Auto"

    const/4 v10, 0x0

    aput-object v9, v3, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v3, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v3, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v3, v10

    const-string/jumbo v9, "36"

    const/4 v10, 0x4

    aput-object v9, v3, v10

    .line 457
    .local v3, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v9, "0"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "1"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const-string/jumbo v9, "6"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string/jumbo v9, "11"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    const-string/jumbo v9, "36"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    .line 458
    .local v4, "ocValues":[Ljava/lang/String;
    const-string/jumbo v9, "operating_channel"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 459
    const v9, 0x7f0e06d5

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 460
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 463
    const-string/jumbo v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 310
    return-void

    .line 316
    .end local v0    # "lcEntries":[Ljava/lang/String;
    .end local v1    # "lcValues":[Ljava/lang/String;
    .end local v2    # "lp":Landroid/support/v7/preference/ListPreference;
    .end local v3    # "ocEntries":[Ljava/lang/String;
    .end local v4    # "ocValues":[Ljava/lang/String;
    .end local v6    # "pref":Landroid/support/v14/preference/SwitchPreference;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 292
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 295
    :cond_0
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v1
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 302
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    return-object v0

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_1
    return-object v5
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 556
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 215
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 213
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 505
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 531
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    .line 530
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 526
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04020e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 563
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 564
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 576
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 583
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    const/4 v6, 0x1

    .line 583
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 585
    const v6, 0x7f0e06c9

    .line 583
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 587
    const v6, 0x7f0e06cb

    .line 583
    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 588
    const v6, 0x7f0e06ca

    .line 583
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 590
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 561
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 467
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 486
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 547
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 549
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 548
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 546
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 224
    iput v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 11
    .param p1, "changes"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 230
    const/4 v2, 0x0

    .line 233
    .local v2, "invalidateOptions":Z
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 235
    const-string/jumbo v9, "wifi_display_on"

    .line 234
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 237
    const-string/jumbo v9, "wifi_display_certification_on"

    .line 236
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    iput-boolean v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 239
    const-string/jumbo v7, "wifi_display_wps_config"

    .line 238
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 242
    const/4 v2, 0x1

    .line 246
    :cond_0
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_1

    .line 247
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 250
    const/4 v2, 0x1

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 255
    .local v3, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 258
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    .line 259
    .local v5, "routeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 260
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 261
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4, v10}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 262
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 259
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "routeCount":I
    :cond_3
    move v6, v8

    .line 234
    goto :goto_0

    :cond_4
    move v7, v8

    .line 236
    goto :goto_1

    .line 267
    .restart local v1    # "i":I
    .restart local v3    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    .restart local v5    # "routeCount":I
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v6, :cond_9

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 270
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v0, v6, v8

    .line 271
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 270
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 273
    :cond_7
    new-instance v9, Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    .line 273
    invoke-direct {v9, p0, v10, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v3, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 279
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_8
    iget-boolean v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v6, :cond_9

    .line 280
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 285
    :cond_9
    if-eqz v2, :cond_a

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 229
    :cond_a
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f0e0d86

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x66

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0e06c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setEmptyView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 128
    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 129
    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 132
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const v1, 0x7f0e06c2

    .line 192
    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 195
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 197
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 204
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 205
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    const-string/jumbo v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 206
    :cond_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    return v2

    :cond_1
    move v0, v2

    .line 204
    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 153
    iput-boolean v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    const-string/jumbo v3, "wifi_display_on"

    .line 160
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 161
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 160
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 163
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 162
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 162
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 165
    const-string/jumbo v3, "wifi_display_wps_config"

    .line 164
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 164
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3, v6}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 170
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->update(I)V

    .line 151
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 174
    return-void
.end method
