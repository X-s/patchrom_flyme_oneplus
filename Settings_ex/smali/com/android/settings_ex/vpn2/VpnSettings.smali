.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final LOG_TAG:Ljava/lang/String; = "VpnSettings"

.field private static final RESCAN_INTERVAL_MS:I = 0x3e8

.field private static final RESCAN_MESSAGE:I

.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/ConfigPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManageListener:Landroid/view/View$OnClickListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 84
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 89
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    .line 310
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$2;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/vpn2/VpnSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method private getVpnApps()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2f

    .line 354
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 357
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 358
    .local v3, "currentProfileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 359
    .local v8, "profile":Landroid/os/UserHandle;
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 363
    .end local v8    # "profile":Landroid/os/UserHandle;
    :cond_0
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 364
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v13, v11, v12

    invoke-virtual {v1, v11}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 365
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_4

    .line 366
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 367
    .local v7, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 368
    .local v10, "userId":I
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "allowed":Z
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 375
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v13, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-nez v11, :cond_2

    .line 377
    const/4 v0, 0x1

    goto :goto_2

    .line 380
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_3
    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v0    # "allowed":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "userId":I
    :cond_4
    return-object v9
.end method

.method private static getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
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
    .line 389
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 393
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    :cond_0
    return-object v5

    .line 398
    :cond_1
    const-string v6, "VPN_"

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 399
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 400
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 401
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 350
    const v0, 0x7f0c0b9b

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    .line 208
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 212
    .local v8, "vpnGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 213
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 217
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v10, v13, [I

    invoke-static {v9, v10}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/VpnProfile;

    .line 218
    .local v7, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v5, Lcom/android/settings_ex/vpn2/ConfigPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-direct {v5, v9, v10, v7}, Lcom/android/settings_ex/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 220
    .local v5, "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v10, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 226
    .end local v5    # "pref":Lcom/android/settings_ex/vpn2/ConfigPreference;
    .end local v7    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnApps()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 227
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Lcom/android/settings_ex/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/android/settings_ex/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 230
    .local v5, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 238
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_1
    const/4 v9, 0x0

    :try_start_0
    iput-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 239
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 240
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_2

    .line 241
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v10, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 242
    .local v6, "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    if-eqz v6, :cond_2

    .line 243
    iget v9, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setState(I)V

    .line 244
    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 249
    .end local v6    # "preference":Lcom/android/settings_ex/vpn2/ConfigPreference;
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 250
    .local v7, "profile":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 251
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    iget-object v10, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/settings_ex/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 254
    .local v6, "preference":Lcom/android/settings_ex/vpn2/AppPreference;
    if-eqz v6, :cond_3

    .line 255
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 259
    .end local v0    # "cfg":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "preference":Lcom/android/settings_ex/vpn2/AppPreference;
    .end local v7    # "profile":Landroid/os/UserHandle;
    :catch_0
    move-exception v9

    .line 263
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v13, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    const/4 v9, 0x1

    return v9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    .line 111
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 119
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 125
    const v0, 0x7f140007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 143
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    .local v0, "millis":J
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_1

    .line 147
    :cond_0
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_0

    .line 152
    .end local v0    # "millis":J
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f120305
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 204
    :goto_0
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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 269
    instance-of v10, p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v10, :cond_1

    .line 270
    check-cast p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 271
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_0

    iget-object v10, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_0

    .line 274
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_0
    return v8

    .line 276
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v10

    .line 280
    :cond_0
    invoke-static {p0, v5, v9, v8}, Lcom/android/settings_ex/vpn2/ConfigDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_0

    .line 282
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v10, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v10, :cond_4

    move-object v4, p1

    .line 283
    check-cast v4, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 284
    .local v4, "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v10

    if-ne v10, v12, :cond_3

    move v1, v8

    .line 286
    .local v1, "connected":Z
    :goto_1
    if-nez v1, :cond_2

    .line 288
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v6, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 289
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 291
    .local v7, "userContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 292
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, "appIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v7, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 297
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v10

    .line 303
    :cond_2
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 304
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v2, v10, v9, v1}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    .end local v1    # "connected":Z
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    move v1, v9

    .line 284
    goto :goto_1

    .end local v4    # "pref":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_4
    move v8, v9

    .line 307
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 133
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const v0, 0x7f120306

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 163
    iget-boolean v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const v2, 0x7f0c0838

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 175
    .local v1, "pickLockdown":Z
    if-eqz v1, :cond_2

    .line 176
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/settings_ex/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 184
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
