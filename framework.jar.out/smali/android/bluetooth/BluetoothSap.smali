.class public final Landroid/bluetooth/BluetoothSap;
.super Ljava/lang/Object;
.source "BluetoothSap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothSap"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothSap;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v2, Landroid/bluetooth/BluetoothSap$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothSap$1;-><init>(Landroid/bluetooth/BluetoothSap;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 393
    new-instance v2, Landroid/bluetooth/BluetoothSap$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothSap$2;-><init>(Landroid/bluetooth/BluetoothSap;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    .line 125
    const-string v2, "BluetoothSap"

    const-string v3, "Create BluetoothSap proxy object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 129
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 130
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->doBind()Z

    .line 138
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSap;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSap;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSap;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothSap;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothSap;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSap;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothSap;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 417
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 418
    const/4 v1, 0x1

    .line 420
    :goto_0
    return v1

    .line 419
    :cond_0
    const-string v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 424
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "BluetoothSap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 169
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 180
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    .line 181
    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "BluetoothSap"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 182
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    .line 183
    .local v2, "re":Ljava/lang/Exception;
    :try_start_8
    const-string v3, "BluetoothSap"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 186
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "not supported for SAPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    :cond_0
    const-string v3, "BluetoothSap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth SAP Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 223
    :cond_0
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 288
    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSap;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v1, :cond_1

    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 308
    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v1, :cond_1

    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 203
    :cond_0
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 237
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_0
    const-string v1, "BluetoothSap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    if-eqz p2, :cond_1

    const/16 v2, 0x64

    if-eq p2, v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothSap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "BluetoothSap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
