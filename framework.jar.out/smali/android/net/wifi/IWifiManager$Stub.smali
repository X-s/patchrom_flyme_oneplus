.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x22

.field static final TRANSACTION_acquireWifiLock:I = 0x1d

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x6

.field static final TRANSACTION_addToBlacklist:I = 0x2b

.field static final TRANSACTION_blockClient:I = 0x48

.field static final TRANSACTION_buildWifiConfig:I = 0x27

.field static final TRANSACTION_clearBlacklist:I = 0x2c

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x42

.field static final TRANSACTION_disableNetwork:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xf

.field static final TRANSACTION_enableAggressiveHandover:I = 0x39

.field static final TRANSACTION_enableAutoJoinWhenAssociated:I = 0x3f

.field static final TRANSACTION_enableNetwork:I = 0x8

.field static final TRANSACTION_enableTdls:I = 0x2f

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x30

.field static final TRANSACTION_enableVerboseLogging:I = 0x37

.field static final TRANSACTION_factoryReset:I = 0x43

.field static final TRANSACTION_getAggressiveHandover:I = 0x3a

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_getBatchedScanResults:I = 0x33

.field static final TRANSACTION_getChannelList:I = 0xb

.field static final TRANSACTION_getConfigFile:I = 0x2e

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x12

.field static final TRANSACTION_getConnectionStatistics:I = 0x41

.field static final TRANSACTION_getCountryCode:I = 0x16

.field static final TRANSACTION_getCurrentNetwork:I = 0x44

.field static final TRANSACTION_getDhcpInfo:I = 0x1b

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x40

.field static final TRANSACTION_getFrequencyBand:I = 0x18

.field static final TRANSACTION_getHalBasedAutojoinOffload:I = 0x3e

.field static final TRANSACTION_getHotspotClients:I = 0x47

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x5

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x38

.field static final TRANSACTION_getWifiApConfiguration:I = 0x26

.field static final TRANSACTION_getWifiApEnabledState:I = 0x25

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2d

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x36

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x20

.field static final TRANSACTION_isBatchedScanSupported:I = 0x34

.field static final TRANSACTION_isDualBandSupported:I = 0x19

.field static final TRANSACTION_isMulticastEnabled:I = 0x21

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1c

.field static final TRANSACTION_loadFtmDriver:I = 0x45

.field static final TRANSACTION_pingSupplicant:I = 0xa

.field static final TRANSACTION_pollBatchedScan:I = 0x35

.field static final TRANSACTION_reassociate:I = 0x11

.field static final TRANSACTION_reconnect:I = 0x10

.field static final TRANSACTION_releaseMulticastLock:I = 0x23

.field static final TRANSACTION_releaseWifiLock:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x7

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x31

.field static final TRANSACTION_saveConfiguration:I = 0x1a

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_setCountryCode:I = 0x15

.field static final TRANSACTION_setFrequencyBand:I = 0x17

.field static final TRANSACTION_setHalBasedAutojoinOffload:I = 0x3d

.field static final TRANSACTION_setWifiApConfiguration:I = 0x28

.field static final TRANSACTION_setWifiApEnabled:I = 0x24

.field static final TRANSACTION_setWifiEnabled:I = 0x13

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xd

.field static final TRANSACTION_startScan:I = 0xc

.field static final TRANSACTION_startWifi:I = 0x29

.field static final TRANSACTION_stopBatchedScan:I = 0x32

.field static final TRANSACTION_stopWifi:I = 0x2a

.field static final TRANSACTION_unblockClient:I = 0x49

.field static final TRANSACTION_unloadFtmDriver:I = 0x46

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 831
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 48
    :sswitch_0
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v10, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v10, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "_result":I
    :sswitch_2
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 63
    .local v4, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v4, :cond_0

    .line 65
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v4    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 77
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v10, 0x1

    goto :goto_0

    .line 83
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 85
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v10, 0x1

    goto :goto_0

    .line 91
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 94
    sget-object v10, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 99
    .local v0, "_arg0":Landroid/net/wifi/ScanResult;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 100
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_2

    .line 102
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 106
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 112
    .end local v0    # "_arg0":Landroid/net/wifi/ScanResult;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 115
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 120
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 121
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 118
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 127
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 131
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_4

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 132
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 137
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    .line 142
    .local v1, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 143
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_6

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 141
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 144
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_7

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 153
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v4, :cond_7

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 154
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 159
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 161
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v4, :cond_8

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 162
    :cond_8
    const/4 v10, 0x0

    goto :goto_9

    .line 167
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v8

    .line 169
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 175
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    .line 178
    sget-object v10, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    .line 184
    .local v0, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    .line 185
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 190
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_a

    .line 188
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_b

    .line 196
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    .line 199
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 204
    .local v0, "_arg0":Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    .line 210
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :sswitch_e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 214
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 216
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 227
    :sswitch_10
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 234
    :sswitch_11
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 241
    :sswitch_12
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 243
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v4, :cond_c

    .line 245
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 249
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 255
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_13
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    const/4 v0, 0x1

    .line 258
    .local v0, "_arg0":Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 259
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v4, :cond_e

    const/4 v10, 0x1

    :goto_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 257
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 260
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_f

    .line 265
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 267
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 273
    .end local v4    # "_result":I
    :sswitch_15
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    const/4 v1, 0x1

    .line 278
    .local v1, "_arg1":Z
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 277
    .end local v1    # "_arg1":Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 292
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v1, 0x1

    .line 297
    .restart local v1    # "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 296
    .end local v1    # "_arg1":Z
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 303
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 305
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 311
    .end local v4    # "_result":I
    :sswitch_19
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 313
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v4, :cond_11

    const/4 v10, 0x1

    :goto_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 314
    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .line 319
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 321
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v4, :cond_12

    const/4 v10, 0x1

    :goto_13
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 322
    :cond_12
    const/4 v10, 0x0

    goto :goto_13

    .line 327
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 329
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v4, :cond_13

    .line 331
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    :goto_14
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 335
    :cond_13
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 341
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 343
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_14

    const/4 v10, 0x1

    :goto_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 344
    :cond_14
    const/4 v10, 0x0

    goto :goto_15

    .line 349
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 353
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15

    .line 358
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 363
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_16
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 364
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v4, :cond_16

    const/4 v10, 0x1

    :goto_17
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 361
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_16

    .line 365
    .restart local v4    # "_result":Z
    :cond_16
    const/4 v10, 0x0

    goto :goto_17

    .line 370
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 374
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 375
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 380
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_18
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 378
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_18

    .line 386
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 389
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 390
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v4, :cond_18

    const/4 v10, 0x1

    :goto_19
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 391
    :cond_18
    const/4 v10, 0x0

    goto :goto_19

    .line 396
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 403
    :sswitch_21
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 405
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v4, :cond_19

    const/4 v10, 0x1

    :goto_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 406
    :cond_19
    const/4 v10, 0x0

    goto :goto_1a

    .line 411
    .end local v4    # "_result":Z
    :sswitch_22
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 422
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 429
    :sswitch_24
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 432
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 438
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v1, 0x1

    .line 439
    .local v1, "_arg1":Z
    :goto_1c
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 435
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 438
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 445
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 447
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 453
    .end local v4    # "_result":I
    :sswitch_26
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 455
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v4, :cond_1c

    .line 457
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_1d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 461
    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 467
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 474
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 475
    .restart local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v4, :cond_1d

    .line 477
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 483
    :goto_1e
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 481
    :cond_1d
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e

    .line 490
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 495
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .line 501
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_29
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 508
    :sswitch_2a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 515
    :sswitch_2b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 524
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 531
    :sswitch_2d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 533
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v4, :cond_1f

    .line 535
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    :goto_20
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 539
    :cond_1f
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 545
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_2e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 553
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    const/4 v1, 0x1

    .line 558
    .local v1, "_arg1":Z
    :goto_21
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 557
    .end local v1    # "_arg1":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 564
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21

    const/4 v1, 0x1

    .line 569
    .restart local v1    # "_arg1":Z
    :goto_22
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 568
    .end local v1    # "_arg1":Z
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_31
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    .line 578
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 584
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 586
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    .line 587
    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 592
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_24
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 593
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v4, :cond_24

    const/4 v10, 0x1

    :goto_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 590
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_24

    .line 594
    .restart local v4    # "_result":Z
    :cond_24
    const/4 v10, 0x0

    goto :goto_25

    .line 599
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_32
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    .line 602
    sget-object v10, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 607
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_26
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_26

    .line 613
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_33
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 617
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 619
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_34
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 625
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v4, :cond_26

    const/4 v10, 0x1

    :goto_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 626
    :cond_26
    const/4 v10, 0x0

    goto :goto_27

    .line 631
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 638
    :sswitch_36
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":I
    :sswitch_38
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    .line 659
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 665
    .end local v4    # "_result":I
    :sswitch_39
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 674
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    .line 676
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 682
    .end local v4    # "_result":I
    :sswitch_3b
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 691
    .end local v0    # "_arg0":I
    :sswitch_3c
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    .line 693
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 699
    .end local v4    # "_result":I
    :sswitch_3d
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 702
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHalBasedAutojoinOffload(I)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":I
    :sswitch_3e
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHalBasedAutojoinOffload()I

    move-result v4

    .line 710
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 716
    .end local v4    # "_result":I
    :sswitch_3f
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27

    const/4 v0, 0x1

    .line 719
    .local v0, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoJoinWhenAssociated(Z)Z

    move-result v4

    .line 720
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v4, :cond_28

    const/4 v10, 0x1

    :goto_29
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 718
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 721
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_28
    const/4 v10, 0x0

    goto :goto_29

    .line 726
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_40
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v4

    .line 728
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v4, :cond_29

    const/4 v10, 0x1

    :goto_2a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 729
    :cond_29
    const/4 v10, 0x0

    goto :goto_2a

    .line 734
    .end local v4    # "_result":Z
    :sswitch_41
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    .line 736
    .local v4, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v4, :cond_2a

    .line 738
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 744
    :goto_2b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 742
    :cond_2a
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 748
    .end local v4    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_42
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 757
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 764
    :sswitch_44
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v4

    .line 766
    .local v4, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v4, :cond_2b

    .line 768
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v10, 0x1

    invoke-virtual {v4, p3, v10}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    :goto_2c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 772
    :cond_2b
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 778
    .end local v4    # "_result":Landroid/net/Network;
    :sswitch_45
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->loadFtmDriver()Z

    move-result v4

    .line 780
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    if-eqz v4, :cond_2c

    const/4 v10, 0x1

    :goto_2d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 781
    :cond_2c
    const/4 v10, 0x0

    goto :goto_2d

    .line 786
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->unloadFtmDriver()Z

    move-result v4

    .line 788
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    if-eqz v4, :cond_2d

    const/4 v10, 0x1

    :goto_2e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 789
    :cond_2d
    const/4 v10, 0x0

    goto :goto_2e

    .line 794
    .end local v4    # "_result":Z
    :sswitch_47
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v6

    .line 796
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 798
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 802
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_48
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2e

    .line 805
    sget-object v10, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 810
    .local v0, "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v4

    .line 811
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    if-eqz v4, :cond_2f

    const/4 v10, 0x1

    :goto_30
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 808
    .end local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v4    # "_result":Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2f

    .line 812
    .restart local v4    # "_result":Z
    :cond_2f
    const/4 v10, 0x0

    goto :goto_30

    .line 817
    .end local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v4    # "_result":Z
    :sswitch_49
    const-string v10, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_30

    .line 820
    sget-object v10, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 825
    .restart local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_31
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v4

    .line 826
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v4, :cond_31

    const/4 v10, 0x1

    :goto_32
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 823
    .end local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v4    # "_result":Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_31

    .line 827
    .restart local v4    # "_result":Z
    :cond_31
    const/4 v10, 0x0

    goto :goto_32

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
