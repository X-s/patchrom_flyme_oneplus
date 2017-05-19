.class public final Landroid/bluetooth/BluetoothAvrcpController;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.acrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAvrcpController"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothAvrcpController;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAvrcpController$1;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 311
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAvrcpController$2;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    .line 107
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 110
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 111
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z

    .line 120
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothAvrcpController;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v0, "BluetoothAvrcpController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method


# virtual methods
.method close()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 135
    iput-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 136
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 137
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 146
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 148
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 149
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothAvrcpController"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothAvrcpController"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 125
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    :cond_0
    const-string v3, "BluetoothAvrcpController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth AVRCP Controller Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    .line 159
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
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
    .line 166
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_1

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAvrcpController;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v2, :cond_0

    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
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
    .line 183
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_1

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getMetaData([I)V
    .locals 4
    .param p1, "attributeIds"    # [I

    .prologue
    .line 228
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMetaData num requested Ids = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getMetaData([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Error talking to BT service in getMetaData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlayStatus([I)V
    .locals 4
    .param p1, "playStatusIds"    # [I

    .prologue
    .line 242
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayStatus num requested Ids  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getPlayStatus([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Error talking to BT service in getPlayStatus()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlayerApplicationSetting()V
    .locals 3

    .prologue
    .line 256
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "getPlayerApplicationSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothAvrcpController;->getPlayerApplicationSetting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Error talking to BT service in getPlayerApplicationSetting()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 298
    const-string v2, "BluetoothAvrcpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedFeatures dev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Error talking to BT service in getSupportedFeatures()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v2, :cond_0

    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedPlayerAppSetting(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpInfo;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 284
    const-string v2, "BluetoothAvrcpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedPlayerAppSetting dev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getSupportedPlayerAppSetting(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Error talking to BT service in getSupportedPlayerAppSetting()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v2, :cond_0

    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .prologue
    .line 214
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPassThroughCmd dev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Error talking to BT service in sendPassThroughCmd()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPlayerApplicationSetting(II)V
    .locals 4
    .param p1, "attributeId"    # I
    .param p2, "attributeVal"    # I

    .prologue
    .line 270
    const-string v1, "BluetoothAvrcpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlayerApplicationSetting attribId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothAvrcpController;->setPlayerApplicationSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Error talking to BT service in setPlayerApplicationSetting()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
