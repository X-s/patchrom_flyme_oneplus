.class public final Lcom/android/settings_exlib/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/HeadsetProfile$HeadsetServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HEADSET"

.field private static final ORDINAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HeadsetProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    sput-boolean v3, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->V:Z

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 49
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 48
    sput-object v0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 99
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 100
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 101
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings_exlib/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/HeadsetProfile;Lcom/android/settings_exlib/bluetooth/HeadsetProfile$HeadsetServiceListener;)V

    .line 102
    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 97
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    .line 117
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sink$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .local v0, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    const-string/jumbo v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not disconnecting device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v3, 0x1

    return v3

    .line 125
    .end local v0    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "sink$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 129
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_0

    return v4

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dev$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 133
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-boolean v3, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->V:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "HeadsetProfile"

    const-string/jumbo v4, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-le v3, v5, :cond_3

    .line 138
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1, v5}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3

    .line 144
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "dev$iterator":Ljava/util/Iterator;
    :cond_4
    return v4
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 220
    sget-boolean v1, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HeadsetProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 223
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "HeadsetProfile"

    const-string/jumbo v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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
    .line 182
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    .line 184
    const/4 v1, 0x2

    .line 185
    const/4 v2, 0x1

    .line 186
    const/4 v3, 0x3

    .line 184
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_0

    return v4

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dev$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 152
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    return v3

    .line 157
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "dev$iterator":Ljava/util/Iterator;
    :cond_2
    return v4
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 216
    sget v0, Lcom/android/settings_exlib/R$drawable;->ic_bt_headset_hfp:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 198
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_profile_headset:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 203
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 211
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    .line 205
    :pswitch_1
    sget v1, Lcom/android/settings_exlib/R$string;->bluetooth_headset_profile_summary_use_for:I

    return v1

    .line 208
    :pswitch_2
    sget v1, Lcom/android/settings_exlib/R$string;->bluetooth_headset_profile_summary_connected:I

    return v1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_0

    return v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 171
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    if-eqz p2, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "HEADSET"

    return-object v0
.end method
