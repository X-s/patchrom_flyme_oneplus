.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private byteLength([B)I
    .locals 1
    .param p1, "array"    # [B

    .prologue
    .line 228
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .prologue
    .line 376
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 386
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 8
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;
    .param p2, "isFlagsIncluded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 178
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v5

    .line 180
    :cond_1
    if-eqz p2, :cond_2

    const/4 v5, 0x3

    .line 181
    .local v5, "size":I
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "num16BitUuids":I
    const/4 v4, 0x0

    .line 184
    .local v4, "num32BitUuids":I
    const/4 v2, 0x0

    .line 185
    .local v2, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 186
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :cond_3
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    if-eqz v3, :cond_6

    .line 196
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 200
    :cond_6
    if-eqz v4, :cond_7

    .line 201
    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 205
    :cond_7
    if-eqz v2, :cond_8

    .line 206
    mul-int/lit8 v7, v2, 0x10

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 210
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "num128BitUuids":I
    .end local v3    # "num16BitUuids":I
    .end local v4    # "num32BitUuids":I
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 211
    .restart local v6    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 213
    goto :goto_2

    .line 214
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 215
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 219
    add-int/lit8 v5, v5, 0x3

    .line 221
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 222
    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 94
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 10
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/16 v2, 0x1f

    .line 112
    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v9

    .line 113
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 114
    if-nez p4, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    const/4 v1, 0x5

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 121
    monitor-exit v9

    .line 146
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v8

    .line 124
    .local v8, "isConnectable":Z
    invoke-direct {p0, p2, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 126
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 127
    monitor-exit v9

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const/4 v1, 0x3

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 131
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 142
    .local v6, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_3
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V

    .line 144
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V

    .line 145
    monitor-exit v9

    goto :goto_0

    .line 137
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    .end local v6    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 140
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 157
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v2

    .line 158
    if-nez p1, :cond_0

    .line 159
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 161
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .line 162
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_1

    monitor-exit v2

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
