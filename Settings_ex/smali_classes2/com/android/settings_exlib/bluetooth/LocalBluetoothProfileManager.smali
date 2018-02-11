.class public final Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;,
        Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;


# instance fields
.field private mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mDunProfile:Lcom/android/settings_exlib/bluetooth/DunServerProfile;

.field private final mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

.field private mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

.field private final mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

.field private mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

.field private final mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsePbapPce:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "eventManager"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 105
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 108
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 109
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .line 110
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings_exlib/R$bool;->enable_pbap_pce_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    .line 112
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    .line 115
    invoke-virtual {p2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 118
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 123
    :cond_0
    new-instance v1, Lcom/android/settings_exlib/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

    .line 124
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

    const-string/jumbo v2, "HID"

    .line 125
    const-string/jumbo v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 124
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/android/settings_exlib/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/settings_exlib/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

    .line 128
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

    const-string/jumbo v2, "PAN"

    .line 129
    const-string/jumbo v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 128
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Lcom/android/settings_exlib/bluetooth/MapProfile;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 133
    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 132
    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/settings_exlib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    .line 134
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    const-string/jumbo v2, "MAP"

    .line 135
    const-string/jumbo v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    .line 134
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "ro.bluetooth.dun"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Lcom/android/settings_exlib/bluetooth/DunServerProfile;

    invoke-direct {v1, p1}, Lcom/android/settings_exlib/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settings_exlib/bluetooth/DunServerProfile;

    .line 140
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settings_exlib/bluetooth/DunServerProfile;

    const-string/jumbo v2, "DUN Server"

    .line 141
    const-string/jumbo v3, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    .line 140
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    new-instance v1, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    .line 146
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    const-string/jumbo v2, "PBAP Server"

    .line 147
    const-string/jumbo v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    .line 146
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private addPanProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .line 257
    new-instance v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    .line 256
    invoke-virtual {v0, p3, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 332
    .local v0, "l":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 330
    .end local v0    # "l":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 339
    .local v0, "listener":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 337
    .end local v0    # "listener":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method public getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    return-object v0
.end method

.method public getA2dpSinkProfile()Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    return-object v0

    .line 370
    :cond_0
    return-object v1
.end method

.method public getHeadsetProfile()Lcom/android/settings_exlib/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method public getHfpClientProfile()Lcom/android/settings_exlib/bluetooth/HfpClientProfile;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    return-object v0

    .line 382
    :cond_0
    return-object v1
.end method

.method public getMapProfile()Lcom/android/settings_exlib/bluetooth/MapProfile;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    return-object v0
.end method

.method public getPbapClientProfile()Lcom/android/settings_exlib/bluetooth/PbapClientProfile;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    return-object v0
.end method

.method public getPbapProfile()Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    .line 348
    .local v0, "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 351
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    .line 352
    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 355
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    .line 356
    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 359
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .end local v0    # "profile":Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeServiceListener(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 268
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 266
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 161
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    .line 165
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    const-string/jumbo v1, "A2DP"

    .line 166
    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 165
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    .line 175
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    .line 177
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    const-string/jumbo v1, "A2DPSink"

    .line 178
    const-string/jumbo v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 177
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 185
    if-eqz v0, :cond_9

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    .line 188
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 190
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 189
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    .line 191
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    const-string/jumbo v1, "HEADSET"

    .line 192
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 191
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    if-nez v0, :cond_4

    .line 201
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local HfpClient profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    .line 202
    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    .line 204
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    const-string/jumbo v1, "HEADSET_CLIENT"

    .line 205
    const-string/jumbo v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 204
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_4
    :goto_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 216
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    if-nez v0, :cond_5

    .line 217
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/android/settings_exlib/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings_exlib/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    .line 220
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string/jumbo v1, "OPP"

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz v0, :cond_d

    .line 228
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    if-nez v0, :cond_6

    .line 229
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local PBAP Client profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    .line 232
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    const-string/jumbo v1, "PbapClient"

    .line 233
    const-string/jumbo v2, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    .line 232
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 159
    return-void

    .line 168
    :cond_7
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    :cond_9
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 195
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_b

    .line 208
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    .line 209
    const-string/jumbo v1, "Warning: Hfp Client profile was previously added but the UUID is now missing."

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 211
    :cond_b
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Handsfree Uuid not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    if-eqz v0, :cond_5

    .line 223
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 235
    :cond_d
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    if-eqz v0, :cond_6

    .line 236
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    .line 237
    const-string/jumbo v1, "Warning: PBAP Client profile was previously added but the UUID is now missing."

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .param p5, "isPanNapConnected"    # Z
    .param p6, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v3, 0x2

    monitor-enter p0

    .line 412
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 413
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 415
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-nez p1, :cond_0

    monitor-exit p0

    .line 420
    return-void

    .line 423
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 424
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 424
    if-nez v0, :cond_2

    .line 426
    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 424
    if-eqz v0, :cond_3

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_exlib/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_4

    .line 434
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 433
    if-eqz v0, :cond_4

    .line 435
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 433
    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settings_exlib/bluetooth/HfpClientProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 440
    :cond_4
    sget-object v0, Lcom/android/settings_exlib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 442
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 446
    :cond_5
    sget-object v0, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 452
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_exlib/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 458
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 459
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 458
    if-eqz v0, :cond_9

    .line 460
    :cond_8
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    .line 461
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_exlib/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 465
    :cond_9
    if-eqz p5, :cond_a

    .line 466
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 468
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

    if-eqz v0, :cond_f

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_exlib/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 473
    :cond_b
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    if-eqz v0, :cond_c

    .line 474
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/settings_exlib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 475
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settings_exlib/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/settings_exlib/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 480
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz v0, :cond_d

    .line 481
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_d
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_e

    .line 488
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-virtual {v0, p6}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_e

    .line 489
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_exlib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 495
    :cond_e
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    .line 467
    :cond_f
    if-eqz p5, :cond_b

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
