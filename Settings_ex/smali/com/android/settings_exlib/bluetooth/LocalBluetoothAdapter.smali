.class public final Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static final SCAN_EXPIRATION_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothAdapter"

.field private static sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 55
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 56
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 3

    .prologue
    .line 69
    const-class v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 76
    :cond_0
    sget-object v1, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 83
    return-void
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 186
    iget v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1
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
    .line 99
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 96
    return-void
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 221
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 222
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 233
    :goto_2
    return-void

    .line 217
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 222
    .restart local v0    # "success":Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method setBluetoothStateInt(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-ne v0, p1, :cond_1

    .line 192
    monitor-exit p0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 136
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 140
    return-void
.end method

.method setProfileManager(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 60
    return-void
.end method

.method public setScanMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 144
    return-void
.end method

.method public setScanMode(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public startScanning(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    if-nez p1, :cond_3

    .line 156
    iget-wide v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_exlib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 162
    .local v0, "a2dp":Lcom/android/settings_exlib/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->getA2dpSinkProfile()Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;

    move-result-object v1

    .line 166
    .local v1, "a2dpSink":Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;->isA2dpPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    .end local v0    # "a2dp":Lcom/android/settings_exlib/bluetooth/A2dpProfile;
    .end local v1    # "a2dpSink":Lcom/android/settings_exlib/bluetooth/A2dpSinkProfile;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    goto :goto_0
.end method

.method public stopScanning()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 181
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 209
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
