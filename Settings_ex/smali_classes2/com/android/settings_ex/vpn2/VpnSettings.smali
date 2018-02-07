.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/VpnSettings$1;,
        Lcom/android/settings_ex/vpn2/VpnSettings$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VpnSettings"

.field private static final RESCAN_INTERVAL_MS:I = 0x3e8

.field private static final RESCAN_MESSAGE:I

.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings_ex/vpn2/AppVpnInfo;",
            "Lcom/android/settings_ex/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private mGearListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLegacyVpnPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/LegacyVpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/settings_ex/vpn2/AppVpnInfo;)Lcom/android/settings_ex/vpn2/AppPreference;
    .locals 1
    .param p1, "app"    # Lcom/android/settings_ex/vpn2/AppVpnInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings_ex/vpn2/AppVpnInfo;)Lcom/android/settings_ex/vpn2/AppPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;)Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;)Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 84
    const/16 v1, 0xf

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 85
    const/16 v1, 0xd

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 86
    const/16 v1, 0xe

    .line 83
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 94
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    .line 327
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mGearListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    .line 341
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$2;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 104
    return-void
.end method

.method private findOrCreatePreference(Lcom/android/settings_ex/vpn2/AppVpnInfo;)Lcom/android/settings_ex/vpn2/AppPreference;
    .locals 4
    .param p1, "app"    # Lcom/android/settings_ex/vpn2/AppVpnInfo;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 374
    .local v0, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .end local v0    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/settings_ex/vpn2/AppVpnInfo;->userId:I

    iget-object v3, p1, Lcom/android/settings_ex/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 376
    .restart local v0    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mGearListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/vpn2/AppPreference;->setOnGearClickListener(Lcom/android/settings_ex/GearPreference$OnGearClickListener;)V

    .line 377
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 378
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    return-object v0
.end method

.method private findOrCreatePreference(Lcom/android/internal/net/VpnProfile;)Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    .line 360
    .local v0, "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    .end local v0    # "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0    # "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mGearListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->setOnGearClickListener(Lcom/android/settings_ex/GearPreference$OnGearClickListener;)V

    .line 363
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 368
    return-object v0
.end method

.method private getAlwaysOnAppVpnInfos()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 416
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 417
    .local v1, "profile":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 418
    .local v3, "profileId":I
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 420
    new-instance v5, Lcom/android/settings_ex/vpn2/AppVpnInfo;

    invoke-direct {v5, v3, v0}, Lcom/android/settings_ex/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "profile":Landroid/os/UserHandle;
    .end local v3    # "profileId":I
    :cond_1
    return-object v4
.end method

.method private getConnectedAppVpns()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 401
    .local v1, "connections":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 402
    .local v3, "profile":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 403
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v5, :cond_0

    .line 404
    new-instance v5, Lcom/android/settings_ex/vpn2/AppVpnInfo;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/settings_ex/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v0    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v3    # "profile":Landroid/os/UserHandle;
    .end local v4    # "profile$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "VpnSettings"

    const-string/jumbo v6, "Failure updating VPN list with connected app VPNs"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method private getConnectedLegacyVpns()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 387
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VpnSettings"

    const-string/jumbo v2, "Failure updating VPN list with connected legacy VPNs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method static getVpnApps(Landroid/content/Context;Z)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeProfiles"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 429
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    if-nez p0, :cond_0

    .line 430
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    .line 435
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 436
    .local v9, "profileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 437
    .local v7, "profile":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    .end local v7    # "profile":Landroid/os/UserHandle;
    .end local v8    # "profile$iterator":Ljava/util/Iterator;
    .end local v9    # "profileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 444
    .restart local v9    # "profileIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    const-string/jumbo v12, "appops"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 445
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/4 v12, 0x1

    new-array v12, v12, [I

    const/16 v13, 0x2f

    const/4 v14, 0x0

    aput v13, v12, v14

    invoke-virtual {v1, v12}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 446
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_6

    .line 447
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 448
    .local v5, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 449
    .local v11, "userId":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "allowed":Z
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "op$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 456
    .local v3, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_4

    .line 457
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-nez v12, :cond_4

    .line 458
    const/4 v0, 0x1

    goto :goto_2

    .line 461
    .end local v3    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_5
    if-eqz v0, :cond_3

    .line 462
    new-instance v12, Lcom/android/settings_ex/vpn2/AppVpnInfo;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lcom/android/settings_ex/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    .end local v0    # "allowed":Z
    .end local v4    # "op$iterator":Ljava/util/Iterator;
    .end local v5    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    .end local v11    # "userId":I
    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 468
    return-object v10
.end method

.method static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 8
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 474
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string/jumbo v3, "VPN_"

    invoke-virtual {p0, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 475
    .local v0, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 476
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v1, :cond_0

    iget v6, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 480
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 324
    const v0, 0x7f0e0d7a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v1, v10, [I

    invoke-static {v0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 214
    .local v5, "vpnApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getConnectedLegacyVpns()Ljava/util/Map;

    move-result-object v3

    .line 215
    .local v3, "connectedLegacyVpns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/net/LegacyVpnInfo;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getConnectedAppVpns()Ljava/util/Set;

    move-result-object v6

    .line 217
    .local v6, "connectedAppVpns":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getAlwaysOnAppVpnInfos()Ljava/util/Set;

    move-result-object v7

    .line 218
    .local v7, "alwaysOnAppVpnInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings_ex/vpn2/AppVpnInfo;>;"
    invoke-static {}, Lcom/android/settings_ex/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "lockdownVpnKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/vpn2/VpnSettings$3;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    return v11
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 118
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 123
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 114
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 129
    const v0, 0x7f140007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 152
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "millis":J
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 156
    :cond_0
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v3, 0x0

    invoke-static {p0, v2, v6, v3}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 158
    return v6

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f110417
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 193
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 280
    instance-of v11, p1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    if-eqz v11, :cond_1

    move-object v7, p1

    .line 281
    check-cast v7, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    .line 282
    .local v7, "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    .line 283
    .local v8, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v11, :cond_0

    iget-object v11, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v12, v12, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 284
    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 286
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    const/4 v11, 0x1

    return v11

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "VpnSettings"

    const-string/jumbo v12, "Starting config intent failed"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {p0, v8, v11, v12}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 293
    const/4 v11, 0x1

    return v11

    .line 294
    .end local v7    # "pref":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    .end local v8    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    instance-of v11, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v11, :cond_4

    move-object v6, p1

    .line 295
    check-cast v6, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 296
    .local v6, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    const/4 v1, 0x1

    .line 298
    .local v1, "connected":Z
    :goto_0
    if-nez v1, :cond_3

    .line 300
    :try_start_1
    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getUserId()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 301
    .local v9, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 301
    invoke-virtual {v11, v12, v13, v9}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 303
    .local v10, "userContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 304
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "appIntent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {v10, v0, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    const/4 v11, 0x1

    return v11

    .line 296
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v1    # "connected":Z
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "user":Landroid/os/UserHandle;
    .end local v10    # "userContext":Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 309
    .restart local v1    # "connected":Z
    :catch_1
    move-exception v3

    .line 310
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "VpnSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "VPN provider does not exist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 316
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p0, v4, v11, v12, v1}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 317
    const/4 v11, 0x1

    return v11

    .line 319
    .end local v1    # "connected":Z
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_4
    const/4 v11, 0x0

    return v11
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 140
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getRestrictionEnforcedAdmin()Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 139
    invoke-static {v1, v2, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 137
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    .line 133
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 168
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 174
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0cec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method
