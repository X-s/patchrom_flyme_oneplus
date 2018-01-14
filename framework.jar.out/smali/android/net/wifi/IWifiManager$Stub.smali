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

.field static final TRANSACTION_acquireMulticastLock:I = 0x26

.field static final TRANSACTION_acquireWifiLock:I = 0x21

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addPasspointManagementObject:I = 0x8

.field static final TRANSACTION_addToBlacklist:I = 0x2d

.field static final TRANSACTION_buildWifiConfig:I = 0x2b

.field static final TRANSACTION_clearBlacklist:I = 0x2e

.field static final TRANSACTION_deauthenticateNetwork:I = 0xc

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3e

.field static final TRANSACTION_disableNetwork:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x13

.field static final TRANSACTION_enableAggressiveHandover:I = 0x36

.field static final TRANSACTION_enableNetwork:I = 0xe

.field static final TRANSACTION_enableTdls:I = 0x31

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x32

.field static final TRANSACTION_enableVerboseLogging:I = 0x34

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3c

.field static final TRANSACTION_factoryReset:I = 0x3f

.field static final TRANSACTION_getAggressiveHandover:I = 0x37

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x39

.field static final TRANSACTION_getConfigFile:I = 0x30

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x16

.field static final TRANSACTION_getConnectionStatistics:I = 0x3d

.field static final TRANSACTION_getCountryCode:I = 0x1a

.field static final TRANSACTION_getCurrentNetwork:I = 0x40

.field static final TRANSACTION_getDhcpInfo:I = 0x1f

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3b

.field static final TRANSACTION_getFrequencyBand:I = 0x1c

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x12

.field static final TRANSACTION_getSoftApInterfaceName:I = 0x44

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x35

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2a

.field static final TRANSACTION_getWifiApEnabledState:I = 0x29

.field static final TRANSACTION_getWifiEnabledState:I = 0x18

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2f

.field static final TRANSACTION_getWifiStaSapConcurrency:I = 0x41

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x33

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x24

.field static final TRANSACTION_isDualBandSupported:I = 0x1d

.field static final TRANSACTION_isMulticastEnabled:I = 0x25

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x20

.field static final TRANSACTION_loadFtmDriver:I = 0x42

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xb

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0x9

.field static final TRANSACTION_pingSupplicant:I = 0x10

.field static final TRANSACTION_queryPasspointIcon:I = 0xa

.field static final TRANSACTION_reassociate:I = 0x15

.field static final TRANSACTION_reconnect:I = 0x14

.field static final TRANSACTION_releaseMulticastLock:I = 0x27

.field static final TRANSACTION_releaseWifiLock:I = 0x23

.field static final TRANSACTION_removeNetwork:I = 0xd

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x1e

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x38

.field static final TRANSACTION_setCountryCode:I = 0x19

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3a

.field static final TRANSACTION_setFrequencyBand:I = 0x1b

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_setWifiApEnabled:I = 0x28

.field static final TRANSACTION_setWifiEnabled:I = 0x17

.field static final TRANSACTION_startScan:I = 0x11

.field static final TRANSACTION_unloadFtmDriver:I = 0x43

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 768
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v34

    return v34

    .line 47
    :sswitch_0
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v34, 0x1

    return v34

    .line 52
    :sswitch_1
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v22

    .line 54
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v34, 0x1

    return v34

    .line 60
    .end local v22    # "_result":I
    :sswitch_2
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v25

    .line 62
    .local v25, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v25, :cond_0

    .line 64
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v34, 0x1

    return v34

    .line 68
    :cond_0
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v25    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1

    .line 77
    sget-object v34, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v34, 0x1

    return v34

    .line 80
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v11    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v32

    .line 89
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    const/16 v34, 0x1

    return v34

    .line 95
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v32

    .line 97
    .restart local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    const/16 v34, 0x1

    return v34

    .line 103
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_6
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_2

    .line 106
    sget-object v34, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 111
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 112
    .local v26, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v26, :cond_3

    .line 114
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_3
    const/16 v34, 0x1

    return v34

    .line 109
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 118
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 124
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_4

    .line 127
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 132
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    .line 133
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v34, 0x1

    return v34

    .line 130
    .end local v22    # "_result":I
    :cond_4
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 139
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v22

    .line 143
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/16 v34, 0x1

    return v34

    .line 149
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_9
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 153
    .restart local v12    # "_arg0":Ljava/lang/String;
    sget-object v34, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 154
    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    move-result v22

    .line 155
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/16 v34, 0x1

    return v34

    .line 161
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v22    # "_result":I
    :sswitch_a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 165
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/16 v34, 0x1

    return v34

    .line 172
    .end local v6    # "_arg0":J
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 175
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v22

    .line 176
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/16 v34, 0x1

    return v34

    .line 182
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 186
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_5

    const/16 v18, 0x1

    .line 187
    .local v18, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/16 v34, 0x1

    return v34

    .line 186
    .end local v18    # "_arg1":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 193
    .end local v6    # "_arg0":J
    :sswitch_d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v33

    .line 197
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v33, :cond_6

    const/16 v34, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/16 v34, 0x1

    return v34

    .line 198
    :cond_6
    const/16 v34, 0x0

    goto :goto_6

    .line 203
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_7

    const/16 v18, 0x1

    .line 208
    .restart local v18    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v33

    .line 209
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v33, :cond_8

    const/16 v34, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/16 v34, 0x1

    return v34

    .line 207
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    .line 210
    .restart local v18    # "_arg1":Z
    .restart local v33    # "_result":Z
    :cond_8
    const/16 v34, 0x0

    goto :goto_8

    .line 215
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :sswitch_f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v33

    .line 219
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v33, :cond_9

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v34, 0x1

    return v34

    .line 220
    :cond_9
    const/16 v34, 0x0

    goto :goto_9

    .line 225
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_10
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v33

    .line 227
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v33, :cond_a

    const/16 v34, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v34, 0x1

    return v34

    .line 228
    :cond_a
    const/16 v34, 0x0

    goto :goto_a

    .line 233
    .end local v33    # "_result":Z
    :sswitch_11
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_b

    .line 236
    sget-object v34, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    .line 242
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_c

    .line 243
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 248
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/16 v34, 0x1

    return v34

    .line 239
    :cond_b
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_b

    .line 246
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_c
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/os/WorkSource;
    goto :goto_c

    .line 254
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_12
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 258
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 260
    const/16 v34, 0x1

    return v34

    .line 264
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_13
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/16 v34, 0x1

    return v34

    .line 271
    :sswitch_14
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/16 v34, 0x1

    return v34

    .line 278
    :sswitch_15
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/16 v34, 0x1

    return v34

    .line 285
    :sswitch_16
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v28

    .line 287
    .local v28, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v28, :cond_d

    .line 289
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    :goto_d
    const/16 v34, 0x1

    return v34

    .line 293
    :cond_d
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 299
    .end local v28    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_17
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_e

    const/4 v13, 0x1

    .line 302
    .local v13, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v33

    .line 303
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v33, :cond_f

    const/16 v34, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/16 v34, 0x1

    return v34

    .line 301
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_e

    .line 304
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_f
    const/16 v34, 0x0

    goto :goto_f

    .line 309
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_18
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v22

    .line 311
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/16 v34, 0x1

    return v34

    .line 317
    .end local v22    # "_result":I
    :sswitch_19
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 321
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_10

    const/16 v18, 0x1

    .line 322
    .restart local v18    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/16 v34, 0x1

    return v34

    .line 321
    .end local v18    # "_arg1":Z
    :cond_10
    const/16 v18, 0x0

    goto :goto_10

    .line 328
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v30

    .line 330
    .local v30, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    const/16 v34, 0x1

    return v34

    .line 336
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 340
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_11

    const/16 v18, 0x1

    .line 341
    .restart local v18    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/16 v34, 0x1

    return v34

    .line 340
    .end local v18    # "_arg1":Z
    :cond_11
    const/16 v18, 0x0

    goto :goto_11

    .line 347
    .end local v4    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v22

    .line 349
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/16 v34, 0x1

    return v34

    .line 355
    .end local v22    # "_result":I
    :sswitch_1d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v33

    .line 357
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v33, :cond_12

    const/16 v34, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/16 v34, 0x1

    return v34

    .line 358
    :cond_12
    const/16 v34, 0x0

    goto :goto_12

    .line 363
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v33

    .line 365
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v33, :cond_13

    const/16 v34, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/16 v34, 0x1

    return v34

    .line 366
    :cond_13
    const/16 v34, 0x0

    goto :goto_13

    .line 371
    .end local v33    # "_result":Z
    :sswitch_1f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v23

    .line 373
    .local v23, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v23, :cond_14

    .line 375
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_14
    const/16 v34, 0x1

    return v34

    .line 379
    :cond_14
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 385
    .end local v23    # "_result":Landroid/net/DhcpInfo;
    :sswitch_20
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v33

    .line 387
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v33, :cond_15

    const/16 v34, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/16 v34, 0x1

    return v34

    .line 388
    :cond_15
    const/16 v34, 0x0

    goto :goto_15

    .line 393
    .end local v33    # "_result":Z
    :sswitch_21
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 397
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 399
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 401
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_16

    .line 402
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/WorkSource;

    .line 407
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v33

    .line 408
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v33, :cond_17

    const/16 v34, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/16 v34, 0x1

    return v34

    .line 405
    .end local v33    # "_result":Z
    :cond_16
    const/16 v21, 0x0

    .local v21, "_arg3":Landroid/os/WorkSource;
    goto :goto_16

    .line 409
    .end local v21    # "_arg3":Landroid/os/WorkSource;
    .restart local v33    # "_result":Z
    :cond_17
    const/16 v34, 0x0

    goto :goto_17

    .line 414
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 418
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_18

    .line 419
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 424
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/16 v34, 0x1

    return v34

    .line 422
    :cond_18
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Landroid/os/WorkSource;
    goto :goto_18

    .line 430
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_23
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 433
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v33

    .line 434
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v33, :cond_19

    const/16 v34, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/16 v34, 0x1

    return v34

    .line 435
    :cond_19
    const/16 v34, 0x0

    goto :goto_19

    .line 440
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_result":Z
    :sswitch_24
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/16 v34, 0x1

    return v34

    .line 447
    :sswitch_25
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v33

    .line 449
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v33, :cond_1a

    const/16 v34, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/16 v34, 0x1

    return v34

    .line 450
    :cond_1a
    const/16 v34, 0x0

    goto :goto_1a

    .line 455
    .end local v33    # "_result":Z
    :sswitch_26
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 459
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 460
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/16 v34, 0x1

    return v34

    .line 466
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/16 v34, 0x1

    return v34

    .line 473
    :sswitch_28
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1b

    .line 476
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 482
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1c

    const/16 v18, 0x1

    .line 483
    .restart local v18    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/16 v34, 0x1

    return v34

    .line 479
    .end local v18    # "_arg1":Z
    :cond_1b
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 482
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    const/16 v18, 0x0

    goto :goto_1c

    .line 489
    :sswitch_29
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v22

    .line 491
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/16 v34, 0x1

    return v34

    .line 497
    .end local v22    # "_result":I
    :sswitch_2a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 499
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v26, :cond_1d

    .line 501
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    :goto_1d
    const/16 v34, 0x1

    return v34

    .line 505
    :cond_1d
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 511
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 515
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 517
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 518
    .local v20, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 519
    .restart local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v26, :cond_1e

    .line 521
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    :goto_1e
    const/16 v34, 0x1

    return v34

    .line 525
    :cond_1e
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 531
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":[B
    .end local v26    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1f

    .line 534
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 539
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/16 v34, 0x1

    return v34

    .line 537
    :cond_1f
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .line 545
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 548
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/16 v34, 0x1

    return v34

    .line 554
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/16 v34, 0x1

    return v34

    .line 561
    :sswitch_2f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v29

    .line 563
    .local v29, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v29, :cond_20

    .line 565
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    :goto_20
    const/16 v34, 0x1

    return v34

    .line 569
    :cond_20
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 575
    .end local v29    # "_result":Landroid/os/Messenger;
    :sswitch_30
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v30

    .line 577
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    const/16 v34, 0x1

    return v34

    .line 583
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 587
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_21

    const/16 v18, 0x1

    .line 588
    .restart local v18    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/16 v34, 0x1

    return v34

    .line 587
    .end local v18    # "_arg1":Z
    :cond_21
    const/16 v18, 0x0

    goto :goto_21

    .line 594
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 598
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_22

    const/16 v18, 0x1

    .line 599
    .restart local v18    # "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/16 v34, 0x1

    return v34

    .line 598
    .end local v18    # "_arg1":Z
    :cond_22
    const/16 v18, 0x0

    goto :goto_22

    .line 605
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 608
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v30

    .line 609
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    const/16 v34, 0x1

    return v34

    .line 615
    .end local v4    # "_arg0":I
    .end local v30    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/16 v34, 0x1

    return v34

    .line 624
    .end local v4    # "_arg0":I
    :sswitch_35
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v22

    .line 626
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    const/16 v34, 0x1

    return v34

    .line 632
    .end local v22    # "_result":I
    :sswitch_36
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 635
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/16 v34, 0x1

    return v34

    .line 641
    .end local v4    # "_arg0":I
    :sswitch_37
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v22

    .line 643
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/16 v34, 0x1

    return v34

    .line 649
    .end local v22    # "_result":I
    :sswitch_38
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 652
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    const/16 v34, 0x1

    return v34

    .line 658
    .end local v4    # "_arg0":I
    :sswitch_39
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v22

    .line 660
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/16 v34, 0x1

    return v34

    .line 666
    .end local v22    # "_result":I
    :sswitch_3a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_23

    const/4 v13, 0x1

    .line 669
    .restart local v13    # "_arg0":Z
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v33

    .line 670
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v33, :cond_24

    const/16 v34, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/16 v34, 0x1

    return v34

    .line 668
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_23
    const/4 v13, 0x0

    goto :goto_23

    .line 671
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_24
    const/16 v34, 0x0

    goto :goto_24

    .line 676
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_3b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v33

    .line 678
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v33, :cond_25

    const/16 v34, 0x1

    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/16 v34, 0x1

    return v34

    .line 679
    :cond_25
    const/16 v34, 0x0

    goto :goto_25

    .line 684
    .end local v33    # "_result":Z
    :sswitch_3c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_26

    const/4 v13, 0x1

    .line 687
    .restart local v13    # "_arg0":Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/16 v34, 0x1

    return v34

    .line 686
    .end local v13    # "_arg0":Z
    :cond_26
    const/4 v13, 0x0

    goto :goto_26

    .line 693
    :sswitch_3d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v27

    .line 695
    .local v27, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v27, :cond_27

    .line 697
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 703
    :goto_27
    const/16 v34, 0x1

    return v34

    .line 701
    :cond_27
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 707
    .end local v27    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 710
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    const/16 v34, 0x1

    return v34

    .line 716
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/16 v34, 0x1

    return v34

    .line 723
    :sswitch_40
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v24

    .line 725
    .local v24, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    if-eqz v24, :cond_28

    .line 727
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    :goto_28
    const/16 v34, 0x1

    return v34

    .line 731
    :cond_28
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 737
    .end local v24    # "_result":Landroid/net/Network;
    :sswitch_41
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStaSapConcurrency()Z

    move-result v33

    .line 739
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v33, :cond_29

    const/16 v34, 0x1

    :goto_29
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/16 v34, 0x1

    return v34

    .line 740
    :cond_29
    const/16 v34, 0x0

    goto :goto_29

    .line 745
    .end local v33    # "_result":Z
    :sswitch_42
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->loadFtmDriver()Z

    move-result v33

    .line 747
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v33, :cond_2a

    const/16 v34, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/16 v34, 0x1

    return v34

    .line 748
    :cond_2a
    const/16 v34, 0x0

    goto :goto_2a

    .line 753
    .end local v33    # "_result":Z
    :sswitch_43
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->unloadFtmDriver()Z

    move-result v33

    .line 755
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v33, :cond_2b

    const/16 v34, 0x1

    :goto_2b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const/16 v34, 0x1

    return v34

    .line 756
    :cond_2b
    const/16 v34, 0x0

    goto :goto_2b

    .line 761
    .end local v33    # "_result":Z
    :sswitch_44
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSoftApInterfaceName()Ljava/lang/String;

    move-result-object v30

    .line 763
    .restart local v30    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    const/16 v34, 0x1

    return v34

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
