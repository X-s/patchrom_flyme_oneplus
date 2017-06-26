.class public final Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;
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

.field private mCertCategory:Landroid/preference/PreferenceGroup;

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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 597
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 623
    new-instance v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 313
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 314
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 315
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f0c04b2

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 316
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 320
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 323
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 324
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 325
    .local v5, "p":Landroid/preference/Preference;
    const v9, 0x7f0c04b3

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 326
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 331
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    .end local v5    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v6, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 376
    .local v6, "pref":Landroid/preference/SwitchPreference;
    const v9, 0x7f0c04b4

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 377
    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 378
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    new-instance v6, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;

    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 393
    .restart local v6    # "pref":Landroid/preference/SwitchPreference;
    const v9, 0x7f0c04b5

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 394
    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 395
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 398
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 411
    .local v2, "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 413
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Default"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "PBC"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "KEYPAD"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "DISPLAY"

    aput-object v10, v7, v9

    .line 414
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 419
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f0c04b8

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 420
    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 423
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;

    .end local v2    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 439
    .restart local v2    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v0, v9

    .line 440
    .local v0, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v1, v9

    .line 441
    .local v1, "lcValues":[Ljava/lang/String;
    const v9, 0x7f0c04b9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 442
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 445
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 449
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$6;

    .end local v2    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, p0, v9}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 461
    .restart local v2    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v3, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v3, v9

    .line 462
    .local v3, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v4, v9

    .line 463
    .local v4, "ocValues":[Ljava/lang/String;
    const v9, 0x7f0c04ba

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 464
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 467
    const-string v9, "%1$s"

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    return-void

    .line 318
    .end local v0    # "lcEntries":[Ljava/lang/String;
    .end local v1    # "lcValues":[Ljava/lang/String;
    .end local v2    # "lp":Landroid/preference/ListPreference;
    .end local v3    # "ocEntries":[Ljava/lang/String;
    .end local v4    # "ocValues":[Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/SwitchPreference;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 294
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 295
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 297
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 303
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 304
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 303
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 217
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 222
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 528
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 548
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040153

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 567
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f120029

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 568
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$11;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 580
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 587
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c04ae

    invoke-virtual {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c04b0

    invoke-virtual {v5, v6, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c04af

    invoke-virtual {v5, v6, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    .line 594
    .local v0, "dialog":Lcom/oneplus/app/OPAlertDialog;
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 595
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 488
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 507
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 14
    .param p1, "changes"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 232
    const/4 v4, 0x0

    .line 235
    .local v4, "invalidateOptions":Z
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_display_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_display_certification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    iput-boolean v10, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 244
    const/4 v4, 0x1

    .line 248
    :cond_0
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_1

    .line 249
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 252
    const/4 v4, 0x1

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 257
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 260
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v9}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v8

    .line 261
    .local v8, "routeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_5

    .line 262
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v9, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 263
    .local v7, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v7, v13}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 264
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v8    # "routeCount":I
    :cond_3
    move v9, v11

    .line 236
    goto :goto_0

    :cond_4
    move v10, v11

    .line 238
    goto :goto_1

    .line 269
    .restart local v2    # "i":I
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v8    # "routeCount":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v5, :cond_7

    aget-object v1, v0, v3

    .line 273
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 275
    new-instance v9, Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 281
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_7
    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v9, :cond_8

    .line 282
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 287
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_8
    if-eqz v4, :cond_9

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 290
    :cond_9
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f0c0bd6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x66

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c04a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 130
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 131
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 134
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const v1, 0x7f0c04a7

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 196
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 197
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 199
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 206
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 207
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 206
    goto :goto_1

    .line 204
    nop

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

    .line 154
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 155
    iput-boolean v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_wps_config"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 172
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->update(I)V

    .line 173
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mStarted:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 188
    return-void
.end method
