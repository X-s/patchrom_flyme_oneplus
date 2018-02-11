.class public final Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$1;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$UuidChangedHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEventManager"


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_exlib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->setDefaultBtName()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 152
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 81
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 85
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string/jumbo v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 91
    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;)V

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 96
    const-string/jumbo v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceFoundHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string/jumbo v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string/jumbo v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string/jumbo v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$NameChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string/jumbo v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 103
    const-string/jumbo v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$PairingCancelHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 106
    const-string/jumbo v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ClassChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 107
    const-string/jumbo v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$UuidChangedHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 110
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$DockEventHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private dispatchConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 264
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 266
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 263
    return-void
.end method

.method private setDefaultBtName()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    const v2, 0x1040082

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "custom bluetooth name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method dispatchDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 274
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 271
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 426
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 427
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_0

    .line 428
    const/4 v5, 0x0

    return v5

    .line 431
    :cond_0
    const/4 v4, 0x0

    .line 432
    .local v4, "deviceAdded":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 433
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 434
    .local v1, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 435
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;)V

    .line 437
    const/4 v4, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    return v4
.end method

.method public registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method setProfileManager(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 74
    return-void
.end method

.method public setReceiverHandler(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 124
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 120
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
