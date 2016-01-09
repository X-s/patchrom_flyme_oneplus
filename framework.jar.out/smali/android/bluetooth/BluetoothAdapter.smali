.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final ACTIVITY_ENERGY_INFO_CACHED:I = 0x0

.field public static final ACTIVITY_ENERGY_INFO_REFRESHED:I = 0x1

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z = true

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# instance fields
.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 1590
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1767
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 425
    return-void

    .line 422
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0
.end method

.method static synthetic access$500()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 1740
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return v2

    .line 1743
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1744
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1745
    .local v0, "c":C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_0

    .line 1743
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1748
    :pswitch_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_3
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x46

    if-gt v0, v3, :cond_0

    goto :goto_2

    .line 1754
    :pswitch_1
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 1760
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewL2capSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x3

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v2, p3, p4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 1350
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 1351
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1352
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1356
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    :cond_0
    return-object v1
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v2, p3, p4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 1334
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 1335
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1336
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1340
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1342
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 5

    .prologue
    .line 400
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 401
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 402
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 403
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 404
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 409
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 406
    :cond_1
    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1413
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1415
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1416
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 1421
    :cond_0
    return-object v1
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .param p1, "devices"    # [Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1717
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1718
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 917
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 923
    :goto_0
    return v1

    .line 919
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 921
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 922
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    const/4 v0, 0x0

    .line 1679
    if-nez p2, :cond_0

    .line 1689
    :cond_0
    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 14
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 1529
    if-nez p2, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1531
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object/from16 v6, p2

    .line 1533
    check-cast v6, Landroid/bluetooth/BluetoothHeadset;

    .line 1534
    .local v6, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_0

    .end local v6    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :pswitch_2
    move-object/from16 v0, p2

    .line 1537
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 1538
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_3
    move-object/from16 v1, p2

    .line 1541
    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    .line 1542
    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    goto :goto_0

    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :pswitch_4
    move-object/from16 v2, p2

    .line 1545
    check-cast v2, Landroid/bluetooth/BluetoothAvrcpController;

    .line 1546
    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    goto :goto_0

    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :pswitch_5
    move-object/from16 v10, p2

    .line 1549
    check-cast v10, Landroid/bluetooth/BluetoothInputDevice;

    .line 1550
    .local v10, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_0

    .end local v10    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_6
    move-object/from16 v12, p2

    .line 1553
    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .line 1554
    .local v12, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    .end local v12    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_7
    move-object/from16 v3, p2

    .line 1557
    check-cast v3, Landroid/bluetooth/BluetoothDun;

    .line 1558
    .local v3, "dun":Landroid/bluetooth/BluetoothDun;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDun;->close()V

    .end local v3    # "dun":Landroid/bluetooth/BluetoothDun;
    :pswitch_8
    move-object/from16 v13, p2

    .line 1560
    check-cast v13, Landroid/bluetooth/BluetoothSap;

    .line 1561
    .local v13, "sap":Landroid/bluetooth/BluetoothSap;
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothSap;->close()V

    goto :goto_0

    .end local v13    # "sap":Landroid/bluetooth/BluetoothSap;
    :pswitch_9
    move-object/from16 v8, p2

    .line 1564
    check-cast v8, Landroid/bluetooth/BluetoothHealth;

    .line 1565
    .local v8, "health":Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    .end local v8    # "health":Landroid/bluetooth/BluetoothHealth;
    :pswitch_a
    move-object/from16 v4, p2

    .line 1568
    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    .line 1569
    .local v4, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .end local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_b
    move-object/from16 v5, p2

    .line 1572
    check-cast v5, Landroid/bluetooth/BluetoothGattServer;

    .line 1573
    .local v5, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    .end local v5    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_c
    move-object/from16 v11, p2

    .line 1576
    check-cast v11, Landroid/bluetooth/BluetoothMap;

    .line 1577
    .local v11, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    .end local v11    # "map":Landroid/bluetooth/BluetoothMap;
    :pswitch_d
    move-object/from16 v7, p2

    .line 1580
    check-cast v7, Landroid/bluetooth/BluetoothHeadsetClient;

    .line 1581
    .local v7, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    goto :goto_0

    .end local v7    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :pswitch_e
    move-object/from16 v9, p2

    .line 1584
    check-cast v9, Landroid/bluetooth/BluetoothHidDevice;

    .line 1585
    .local v9, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 711
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v1

    monitor-exit v2

    .line 715
    :goto_0
    return v1

    .line 713
    :cond_0
    monitor-exit v2

    .line 715
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public disable()Z
    .locals 4

    .prologue
    .line 636
    const-string v2, "android.bluetooth.BluetoothAdapter"

    const-string v3, "disable"

    invoke-static {v2, v3}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    const-string v1, "android.bluetooth.BluetoothAdapter|disable|--end"

    .line 638
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 642
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 644
    :goto_0
    return v2

    .line 643
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 4
    .param p1, "persist"    # Z

    .prologue
    .line 659
    const-string v2, "android.bluetooth.BluetoothAdapter"

    const-string v3, "disable"

    invoke-static {v2, v3}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    const-string v1, "android.bluetooth.BluetoothAdapter|disable|--end"

    .line 661
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 666
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 668
    :goto_0
    return v2

    .line 667
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 595
    const-string v3, "android.bluetooth.BluetoothAdapter"

    const-string v4, "enable"

    invoke-static {v3, v4}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    const-string v1, "android.bluetooth.BluetoothAdapter|enable|--end"

    .line 597
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 600
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 601
    const-string v3, "BluetoothAdapter"

    const-string v4, "enable(): BT is already enabled..!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return v2

    .line 605
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->enable(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1638
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1639
    const-string v2, "BluetoothAdapter"

    const-string v3, "enableNoAutoConnect(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :goto_0
    return v1

    .line 1643
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1644
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1723
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1729
    :goto_0
    return-void

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 680
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 682
    :goto_0
    return-object v1

    .line 681
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 496
    :goto_0
    return-object v0

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    const-string v1, "BluetoothAdapter"

    const-string v2, "bluetooth le advertising not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_2

    .line 493
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 495
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    .line 506
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    .line 508
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 510
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1770
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1771
    if-nez p1, :cond_1

    .line 1772
    :try_start_0
    const-string v0, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    .line 1773
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1776
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1065
    const-string v2, "android.bluetooth.BluetoothAdapter"

    const-string v3, "getBondedDevices"

    invoke-static {v2, v3}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    const-string v1, "android.bluetooth.BluetoothAdapter|getBondedDevices|--end"

    .line 1067
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 1070
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1071
    new-array v2, v4, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v2

    .line 1079
    :goto_0
    return-object v2

    .line 1074
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 1076
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1078
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    const/4 v2, 0x0

    goto :goto_0

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    const/4 v2, 0x0

    :try_start_4
    new-array v2, v2, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public getConnectionState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1096
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1102
    :goto_0
    return v1

    .line 1098
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1100
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1101
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 6
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1026
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    move-object v1, v2

    .line 1049
    :goto_0
    return-object v1

    .line 1029
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isActivityAndEnergyReportingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1030
    goto :goto_0

    .line 1032
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1033
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1034
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getActivityEnergyInfoFromController()V

    .line 1035
    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1037
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 1038
    .local v1, "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1039
    monitor-exit p0

    goto :goto_0

    .line 1043
    .end local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback wait interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    move-object v1, v2

    .line 1049
    goto :goto_0

    .line 1041
    .restart local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 1046
    .end local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catch_1
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 834
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 840
    :goto_0
    return v1

    .line 836
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 838
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 839
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 696
    :goto_0
    return-object v1

    .line 695
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 5
    .param p1, "profile"    # I

    .prologue
    const/4 v2, 0x0

    .line 1122
    const-string v3, "android.bluetooth.BluetoothAdapter"

    const-string v4, "getProfileConnectionState"

    invoke-static {v3, v4}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    const-string v1, "android.bluetooth.BluetoothAdapter|getProfileConnectionState|--end"

    .line 1124
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 1127
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 1135
    :goto_0
    return v2

    .line 1129
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result v3

    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 1131
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, "getProfileConnectionState:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 1474
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v13, 0x0

    .line 1513
    :goto_0
    return v13

    .line 1476
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    .line 1477
    new-instance v5, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p2

    invoke-direct {v5, p1, v0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1478
    .local v5, "headset":Landroid/bluetooth/BluetoothHeadset;
    const/4 v13, 0x1

    goto :goto_0

    .line 1479
    .end local v5    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 1480
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p2

    invoke-direct {v1, p1, v0}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1481
    .local v1, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v13, 0x1

    goto :goto_0

    .line 1482
    .end local v1    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_3
    const/16 v13, 0xa

    move/from16 v0, p3

    if-ne v0, v13, :cond_4

    .line 1483
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink;

    move-object/from16 v0, p2

    invoke-direct {v2, p1, v0}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1484
    .local v2, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    const/4 v13, 0x1

    goto :goto_0

    .line 1485
    .end local v2    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :cond_4
    const/16 v13, 0xb

    move/from16 v0, p3

    if-ne v0, v13, :cond_5

    .line 1486
    new-instance v3, Landroid/bluetooth/BluetoothAvrcpController;

    move-object/from16 v0, p2

    invoke-direct {v3, p1, v0}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1487
    .local v3, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    const/4 v13, 0x1

    goto :goto_0

    .line 1488
    .end local v3    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :cond_5
    const/4 v13, 0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_6

    .line 1489
    new-instance v9, Landroid/bluetooth/BluetoothInputDevice;

    move-object/from16 v0, p2

    invoke-direct {v9, p1, v0}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1490
    .local v9, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    const/4 v13, 0x1

    goto :goto_0

    .line 1491
    .end local v9    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :cond_6
    const/4 v13, 0x5

    move/from16 v0, p3

    if-ne v0, v13, :cond_7

    .line 1492
    new-instance v11, Landroid/bluetooth/BluetoothPan;

    move-object/from16 v0, p2

    invoke-direct {v11, p1, v0}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1493
    .local v11, "pan":Landroid/bluetooth/BluetoothPan;
    const/4 v13, 0x1

    goto :goto_0

    .line 1494
    .end local v11    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_7
    const/16 v13, 0x15

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    .line 1495
    new-instance v4, Landroid/bluetooth/BluetoothDun;

    move-object/from16 v0, p2

    invoke-direct {v4, p1, v0}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1496
    .local v4, "dun":Landroid/bluetooth/BluetoothDun;
    const/4 v13, 0x1

    goto :goto_0

    .line 1497
    .end local v4    # "dun":Landroid/bluetooth/BluetoothDun;
    :cond_8
    const/16 v13, 0x14

    move/from16 v0, p3

    if-ne v0, v13, :cond_9

    .line 1498
    new-instance v12, Landroid/bluetooth/BluetoothSap;

    move-object/from16 v0, p2

    invoke-direct {v12, p1, v0}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1499
    .local v12, "sap":Landroid/bluetooth/BluetoothSap;
    const/4 v13, 0x1

    goto :goto_0

    .line 1500
    .end local v12    # "sap":Landroid/bluetooth/BluetoothSap;
    :cond_9
    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_a

    .line 1501
    new-instance v7, Landroid/bluetooth/BluetoothHealth;

    move-object/from16 v0, p2

    invoke-direct {v7, p1, v0}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1502
    .local v7, "health":Landroid/bluetooth/BluetoothHealth;
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v7    # "health":Landroid/bluetooth/BluetoothHealth;
    :cond_a
    const/16 v13, 0x9

    move/from16 v0, p3

    if-ne v0, v13, :cond_b

    .line 1504
    new-instance v10, Landroid/bluetooth/BluetoothMap;

    move-object/from16 v0, p2

    invoke-direct {v10, p1, v0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1505
    .local v10, "map":Landroid/bluetooth/BluetoothMap;
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1506
    .end local v10    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_b
    const/16 v13, 0x10

    move/from16 v0, p3

    if-ne v0, v13, :cond_c

    .line 1507
    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, p2

    invoke-direct {v6, p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1508
    .local v6, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1509
    .end local v6    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :cond_c
    const/16 v13, 0x11

    move/from16 v0, p3

    if-ne v0, v13, :cond_d

    .line 1510
    new-instance v8, Landroid/bluetooth/BluetoothHidDevice;

    move-object/from16 v0, p2

    invoke-direct {v8, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1511
    .local v8, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1513
    .end local v8    # "hidd":Landroid/bluetooth/BluetoothHidDevice;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v1, "android.bluetooth.BluetoothAdapter"

    const-string v2, "getRemoteDevice"

    invoke-static {v1, v2}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.BluetoothAdapter|getRemoteDevice|address,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|--end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "paras":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 447
    .end local v0    # "paras":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    move-object v1, p1

    .line 442
    goto :goto_0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 11
    .param p1, "address"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 463
    const-string v1, "android.bluetooth.BluetoothAdapter"

    const-string v2, "getRemoteDevice"

    invoke-static {v1, v2}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v0, "android.bluetooth.BluetoothAdapter|getRemoteDevice|--end"

    .line 465
    .local v0, "paras":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 468
    .end local v0    # "paras":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 469
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bluetooth address must have 6 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_2
    new-instance v1, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    aget-byte v5, p1, v7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    aget-byte v5, p1, v8

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    aget-byte v5, p1, v9

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v9

    aget-byte v5, p1, v10

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-byte v6, p1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 778
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 784
    :goto_0
    return v1

    .line 780
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 782
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 783
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 6

    .prologue
    .line 545
    const-string v3, "android.bluetooth.BluetoothAdapter"

    const-string v4, "getState"

    invoke-static {v3, v4}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    const-string v1, "android.bluetooth.BluetoothAdapter|getState|--end"

    .line 547
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 551
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_1

    .line 554
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2

    .line 556
    .local v2, "state":I
    monitor-exit v4

    .line 563
    .end local v2    # "state":I
    :goto_0
    return v2

    .line 560
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :goto_1
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": getState() :  mService = null. Returning STATE_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v2, 0xa

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 561
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 733
    :goto_0
    return-object v1

    .line 729
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 731
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 732
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 946
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 952
    :goto_0
    return v1

    .line 948
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 950
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 951
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 525
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v1

    monitor-exit v2

    .line 529
    :goto_0
    return v1

    .line 527
    :cond_0
    monitor-exit v2

    .line 529
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 961
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 967
    :goto_0
    return v1

    .line 963
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isMultipleAdvertisementSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 997
    :goto_0
    return v1

    .line 993
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isOffloadedFilteringSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1006
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1012
    :goto_0
    return v1

    .line 1008
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isOffloadedScanBatchingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPeripheralModeSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 976
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 982
    :goto_0
    return v1

    .line 978
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isPeripheralModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get peripheral mode capability: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1392
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1394
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1395
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 1399
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1401
    :cond_0
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureL2capWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1287
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewL2capSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1370
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1372
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1373
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1377
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1379
    :cond_0
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1249
    const-string v1, "android.bluetooth.BluetoothAdapter"

    const-string v2, "listenUsingInsecureRfcommWithServiceRecord"

    invoke-static {v1, v2}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.BluetoothAdapter|listenUsingInsecureRfcommWithServiceRecord|name,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|--end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "paras":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 1255
    .end local v0    # "paras":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2, v3, v3}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    return-object v1

    :cond_1
    move-object v1, p1

    .line 1250
    goto :goto_0
.end method

.method public listenUsingL2capWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1217
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewL2capSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1153
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v2, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1155
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1156
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1160
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1162
    :cond_0
    return-object v1
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1189
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1433
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1454
    :cond_0
    return-object v2
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1781
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1783
    monitor-exit v1

    .line 1784
    return-void

    .line 1783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 851
    :goto_0
    return-void

    .line 847
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z

    .line 849
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 850
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 758
    :goto_0
    return v1

    .line 754
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 756
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 757
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 829
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 822
    :goto_0
    return v1

    .line 818
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 820
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 821
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 885
    const-string v3, "android.bluetooth.BluetoothAdapter"

    const-string/jumbo v4, "startDiscovery"

    invoke-static {v3, v4}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    const-string v1, "android.bluetooth.BluetoothAdapter|startDiscovery|--end"

    .line 887
    .local v1, "paras":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 890
    .end local v1    # "paras":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 896
    :goto_0
    return v2

    .line 892
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    move-result v3

    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 894
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 895
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1821
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 13
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1842
    const-string v9, "BluetoothAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startLeScan(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    if-nez p2, :cond_0

    .line 1844
    const-string v8, "BluetoothAdapter"

    const-string/jumbo v9, "startLeScan: null callback"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :goto_0
    return v7

    .line 1847
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    .line 1848
    .local v5, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v5, :cond_1

    .line 1849
    const-string v8, "BluetoothAdapter"

    const-string/jumbo v9, "startLeScan: cannot get BluetoothLeScanner"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v9, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v9

    .line 1854
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1855
    const-string v8, "BluetoothAdapter"

    const-string v10, "LE Scan has already started"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    monitor-exit v9

    goto :goto_0

    .line 1913
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1860
    :cond_2
    :try_start_1
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v10}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1861
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_3

    .line 1863
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1866
    :cond_3
    :try_start_3
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 1893
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v10, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v6

    .line 1897
    .local v6, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_4

    array-length v10, p1

    if-lez v10, :cond_4

    .line 1901
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v11, Landroid/os/ParcelUuid;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v11, v12}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .line 1903
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1905
    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_4
    invoke-virtual {v5, v2, v6, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1907
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v10, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1908
    :try_start_4
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 1910
    .end local v2    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothAdapter"

    const-string v10, ""

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1928
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "stopLeScan()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 1931
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-eqz v1, :cond_0

    .line 1934
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v3

    .line 1935
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    .line 1936
    .local v0, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v0, :cond_2

    .line 1937
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v4, "scan not started yet"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    monitor-exit v3

    goto :goto_0

    .line 1941
    .end local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1940
    .restart local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 1941
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
