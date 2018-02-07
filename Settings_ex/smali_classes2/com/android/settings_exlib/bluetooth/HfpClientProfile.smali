.class final Lcom/android/settings_exlib/bluetooth/HfpClientProfile;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/HfpClientProfile$HfpClientServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HEADSET_CLIENT"

.field private static final ORDINAL:I = 0x0

.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "HfpClientProfile"

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sput-boolean v2, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->V:Z

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 48
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 49
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

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
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 99
    iput-object p3, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 100
    iput-object p4, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 101
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings_exlib/bluetooth/HfpClientProfile$HfpClientServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/bluetooth/HfpClientProfile$HfpClientServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/HfpClientProfile;Lcom/android/settings_exlib/bluetooth/HfpClientProfile$HfpClientServiceListener;)V

    .line 102
    const/16 v2, 0x10

    .line 101
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 97
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 125
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "srcs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_3

    .line 128
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "src$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .local v0, "src":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const-string/jumbo v3, "HfpClientProfile"

    const-string/jumbo v4, "Ignoring Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x1

    return v3

    .line 137
    .end local v0    # "src":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 138
    .restart local v0    # "src":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 141
    .end local v0    # "src":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "src$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0x64

    .line 146
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 222
    sget-boolean v1, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HfpClientProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v1, :cond_1

    .line 225
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    const/16 v3, 0x10

    .line 225
    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "HfpClientProfile"

    const-string/jumbo v2, "Error cleaning up HfpClient proxy"

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
    .line 116
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 118
    const/4 v1, 0x2

    .line 119
    const/4 v2, 0x1

    .line 120
    const/4 v3, 0x3

    .line 118
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 218
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
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 204
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    .line 206
    :pswitch_1
    sget v1, Lcom/android/settings_exlib/R$string;->bluetooth_headset_profile_summary_use_for:I

    return v1

    .line 209
    :pswitch_2
    sget v1, Lcom/android/settings_exlib/R$string;->bluetooth_headset_profile_summary_connected:I

    return v1

    .line 204
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
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v1, :cond_0

    return v0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

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
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 176
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    if-eqz p2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "HEADSET_CLIENT"

    return-object v0
.end method
