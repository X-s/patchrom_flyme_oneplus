.class public final Landroid/bluetooth/BluetoothHidDevice;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "codeaurora.bluetooth.hid.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final ERROR_RSP_NOT_READY:B = 0x1t

.field public static final ERROR_RSP_SUCCESS:B = 0x0t

.field public static final ERROR_RSP_UNKNOWN:B = 0xet

.field public static final ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final SUBCLASS1_COMBO:B = -0x40t

.field public static final SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final SUBCLASS1_MOUSE:B = -0x80t

.field public static final SUBCLASS1_NONE:B = 0x0t

.field public static final SUBCLASS2_CARD_READER:B = 0x6t

.field public static final SUBCLASS2_DIGITIZER_TABLED:B = 0x5t

.field public static final SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final SUBCLASS2_UNCATEGORIZED:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHidDevice;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v2, Landroid/bluetooth/BluetoothHidDevice$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHidDevice$1;-><init>(Landroid/bluetooth/BluetoothHidDevice;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 178
    new-instance v2, Landroid/bluetooth/BluetoothHidDevice$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHidDevice$2;-><init>(Landroid/bluetooth/BluetoothHidDevice;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    .line 203
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothHidDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 207
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 209
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 210
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHidDevice;->doBind()Z

    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHidDevice;

    .prologue
    .line 35
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "close()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 238
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 240
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 247
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_1

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    iput-object v5, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 258
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v4, "close: could not unbind HID Dev service: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public connect()Z
    .locals 4

    .prologue
    .line 463
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "connect()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 469
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHidDevice;->connect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 477
    :goto_0
    return v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 4

    .prologue
    .line 486
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "disconnect()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 492
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHidDevice;->disconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHidDevice;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 224
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth HID Device Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return v2

    .line 230
    :cond_1
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Bound to HID Device Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 274
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicesMatchingConnectionStates(): states="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceCallback;)Z
    .locals 8
    .param p1, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothHidDeviceCallback;

    .prologue
    .line 299
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApp(): sdp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inQos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outQos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v7, 0x0

    .line 304
    .local v7, "result":Z
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 308
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v0, :cond_2

    .line 310
    :try_start_0
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;-><init>()V

    .line 312
    .local v1, "config":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    new-instance v5, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;

    invoke-direct {v5, p4}, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHidDeviceCallback;)V

    .line 314
    .local v5, "cbw":Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .end local v1    # "config":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v5    # "cbw":Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
    :goto_1
    move v0, v7

    .line 322
    goto :goto_0

    .line 315
    :catch_0
    move-exception v6

    .line 316
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public replyReport(BB[B)Z
    .locals 5
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 391
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replyReport(): type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 397
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothHidDevice;->replyReport(BB[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportError(B)Z
    .locals 5
    .param p1, "error"    # B

    .prologue
    .line 416
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportError(): error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 422
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHidDevice;->reportError(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReport(I[B)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 364
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendReport(): id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    .line 368
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 370
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothHidDevice;->sendReport(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unplug()Z
    .locals 4

    .prologue
    .line 439
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unplug()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 445
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHidDevice;->unplug()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 338
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterApp()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v2, :cond_0

    .line 344
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHidDevice;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
