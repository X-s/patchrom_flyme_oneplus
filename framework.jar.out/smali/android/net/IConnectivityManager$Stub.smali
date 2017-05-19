.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x3d

.field static final TRANSACTION_checkMobileProvisioning:I = 0x2d

.field static final TRANSACTION_establishVpn:I = 0x27

.field static final TRANSACTION_factoryReset:I = 0x40

.field static final TRANSACTION_getActiveLinkProperties:I = 0xb

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x3

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x10

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xf

.field static final TRANSACTION_getAllNetworks:I = 0x8

.field static final TRANSACTION_getAllVpnInfo:I = 0x2b

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0x9

.field static final TRANSACTION_getGlobalProxy:I = 0x22

.field static final TRANSACTION_getLastTetherError:I = 0x15

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2a

.field static final TRANSACTION_getLinkProperties:I = 0xd

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xc

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x2e

.field static final TRANSACTION_getNetworkCapabilities:I = 0xe

.field static final TRANSACTION_getNetworkForType:I = 0x7

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x5

.field static final TRANSACTION_getProxyForNetwork:I = 0x24

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x3c

.field static final TRANSACTION_getTetherConnectedSta:I = 0x1f

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1b

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1c

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1a

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_getVpnConfig:I = 0x28

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x11

.field static final TRANSACTION_isNetworkSupported:I = 0xa

.field static final TRANSACTION_isTetheringSupported:I = 0x16

.field static final TRANSACTION_listenForNetwork:I = 0x38

.field static final TRANSACTION_pendingListenForNetwork:I = 0x39

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x36

.field static final TRANSACTION_prepareVpn:I = 0x25

.field static final TRANSACTION_registerNetworkAgent:I = 0x34

.field static final TRANSACTION_registerNetworkFactory:I = 0x31

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3a

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x37

.field static final TRANSACTION_removeVpnAddress:I = 0x3e

.field static final TRANSACTION_reportInetCondition:I = 0x20

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x21

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x32

.field static final TRANSACTION_requestNetwork:I = 0x35

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x3b

.field static final TRANSACTION_setAirplaneMode:I = 0x30

.field static final TRANSACTION_setGlobalProxy:I = 0x23

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x2f

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x3f

.field static final TRANSACTION_setUsbTethering:I = 0x1e

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x26

.field static final TRANSACTION_startLegacyVpn:I = 0x29

.field static final TRANSACTION_startNattKeepalive:I = 0x41

.field static final TRANSACTION_stopKeepalive:I = 0x42

.field static final TRANSACTION_tether:I = 0x13

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x33

.field static final TRANSACTION_untether:I = 0x14

.field static final TRANSACTION_updateLockdownVpn:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 982
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v8

    .line 53
    .local v8, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v8, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 65
    .end local v8    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 67
    .local v8, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v8, :cond_1

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 79
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 83
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v8, :cond_2

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 95
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 99
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v8, :cond_3

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 111
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 119
    .local v1, "_arg0":Landroid/net/Network;
    :goto_5
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 120
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v8, :cond_5

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_5

    .line 126
    .restart local v8    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 132
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v8

    .line 134
    .local v8, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    .end local v8    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v8

    .line 144
    .local v8, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v8, :cond_6

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 156
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/Network;
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v8

    .line 158
    .local v8, "_result":[Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    .end local v8    # "_result":[Landroid/net/Network;
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 168
    .local v8, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 174
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v8

    .line 178
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 184
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 186
    .local v8, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v8, :cond_8

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 192
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 198
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v8

    .line 202
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v8, :cond_9

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 214
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 217
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 222
    .local v1, "_arg0":Landroid/net/Network;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 223
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v8, :cond_b

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_b

    .line 229
    .restart local v8    # "_result":Landroid/net/LinkProperties;
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 235
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 243
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 244
    .local v8, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v8, :cond_d

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 241
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_d

    .line 250
    .restart local v8    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 256
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v8

    .line 258
    .local v8, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v8    # "_result":[Landroid/net/NetworkState;
    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v8

    .line 266
    .local v8, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v8, :cond_e

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 274
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 278
    .end local v8    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v8

    .line 280
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 286
    .end local v8    # "_result":Z
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 291
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v8

    .line 292
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 293
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v8    # "_result":Z
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v8

    .line 302
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v8

    .line 312
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    .line 322
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v8

    .line 330
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 331
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 336
    .end local v8    # "_result":Z
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 344
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 346
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 354
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 360
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v8

    .line 362
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 368
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 370
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 376
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 378
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 384
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 386
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 392
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    .line 395
    .local v1, "_arg0":Z
    :goto_13
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v8

    .line 396
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":I
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 402
    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v9

    .line 404
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 410
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 414
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 421
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 424
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 430
    .local v1, "_arg0":Landroid/net/Network;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    .line 431
    .local v2, "_arg1":Z
    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 427
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_14

    .line 430
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 437
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_22
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    .line 439
    .local v8, "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v8, :cond_15

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 447
    :goto_16
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 445
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 451
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 454
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .line 459
    .local v1, "_arg0":Landroid/net/ProxyInfo;
    :goto_17
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 457
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/ProxyInfo;
    goto :goto_17

    .line 465
    .end local v1    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 468
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 473
    .local v1, "_arg0":Landroid/net/Network;
    :goto_18
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v8

    .line 474
    .restart local v8    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v8, :cond_18

    .line 476
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 482
    :goto_19
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 471
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_18

    .line 480
    .restart local v8    # "_result":Landroid/net/ProxyInfo;
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 486
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 494
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 495
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 500
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_26
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 506
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v3, 0x1

    .line 507
    .local v3, "_arg2":Z
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 506
    .end local v3    # "_arg2":Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 513
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_27
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 516
    sget-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 521
    .local v1, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 522
    .local v8, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v8, :cond_1c

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 530
    :goto_1d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 519
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_1c

    .line 528
    .restart local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 534
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_28
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    .line 538
    .local v8, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v8, :cond_1d

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 546
    :goto_1e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 544
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 550
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_29
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 553
    sget-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 558
    .local v1, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 556
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_1f

    .line 564
    .end local v1    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v8

    .line 568
    .local v8, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v8, :cond_1f

    .line 570
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 576
    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 574
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 580
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v8

    .line 582
    .local v8, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    .end local v8    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v8

    .line 590
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v8, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 591
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 596
    .end local v8    # "_result":Z
    :sswitch_2d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 599
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v8

    .line 600
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 606
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_2e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 614
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    .line 618
    .local v1, "_arg0":Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 616
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 627
    :sswitch_30
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 630
    .restart local v1    # "_arg0":Z
    :goto_23
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    .end local v1    # "_arg0":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 636
    :sswitch_31
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 639
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 645
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 642
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_24

    .line 652
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_32
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 655
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 660
    .local v1, "_arg0":Landroid/net/Network;
    :goto_25
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v8

    .line 661
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v8, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 658
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Z
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_25

    .line 662
    .restart local v8    # "_result":Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 667
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v8    # "_result":Z
    :sswitch_33
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 670
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 675
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_27
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 673
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_27

    .line 681
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_34
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 684
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 690
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 691
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 697
    .local v2, "_arg1":Landroid/net/NetworkInfo;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 698
    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 704
    .local v3, "_arg2":Landroid/net/LinkProperties;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 705
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 711
    .local v4, "_arg3":Landroid/net/NetworkCapabilities;
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 713
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 714
    sget-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkMisc;

    .local v6, "_arg5":Landroid/net/NetworkMisc;
    :goto_2c
    move-object v0, p0

    .line 719
    invoke-virtual/range {v0 .. v6}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v8

    .line 720
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 687
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    .end local v8    # "_result":I
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_28

    .line 694
    :cond_28
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_29

    .line 701
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/net/LinkProperties;
    goto :goto_2a

    .line 708
    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_2b

    .line 717
    .restart local v5    # "_arg4":I
    :cond_2b
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/net/NetworkMisc;
    goto :goto_2c

    .line 726
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v2    # "_arg1":Landroid/net/NetworkInfo;
    .end local v3    # "_arg2":Landroid/net/LinkProperties;
    .end local v4    # "_arg3":Landroid/net/NetworkCapabilities;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_35
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 729
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 735
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 736
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 742
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 746
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 747
    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 748
    .local v8, "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    if-eqz v8, :cond_2e

    .line 750
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    :goto_2f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 732
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_2d

    .line 739
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_2e

    .line 754
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":Landroid/os/IBinder;
    .restart local v5    # "_arg4":I
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 760
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_36
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 763
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 769
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    .line 770
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 775
    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_31
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 776
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v8, :cond_31

    .line 778
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 784
    :goto_32
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 766
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_2f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_30

    .line 773
    :cond_30
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_31

    .line 782
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 788
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_37
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 791
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 796
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_33
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 794
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_33

    .line 802
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_38
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 805
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 811
    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    .line 812
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 818
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 819
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v8

    .line 820
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    if-eqz v8, :cond_35

    .line 822
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    :goto_36
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 808
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_33
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_34

    .line 815
    :cond_34
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_35

    .line 826
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    .restart local v8    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 832
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_result":Landroid/net/NetworkRequest;
    :sswitch_39
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    .line 835
    sget-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 841
    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 842
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 847
    .local v2, "_arg1":Landroid/app/PendingIntent;
    :goto_38
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 838
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_37

    .line 845
    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_38

    .line 853
    .end local v1    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 856
    sget-object v0, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 861
    .local v1, "_arg0":Landroid/net/NetworkRequest;
    :goto_39
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 859
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :cond_38
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_39

    .line 867
    .end local v1    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 870
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 876
    .local v1, "_arg0":Landroid/net/Network;
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    .line 878
    .local v2, "_arg1":Z
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v3, 0x1

    .line 879
    .local v3, "_arg2":Z
    :goto_3c
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 873
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_3a

    .line 876
    :cond_3a
    const/4 v2, 0x0

    goto :goto_3b

    .line 878
    .restart local v2    # "_arg1":Z
    :cond_3b
    const/4 v3, 0x0

    goto :goto_3c

    .line 885
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":Z
    :sswitch_3c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 888
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v8

    .line 889
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 895
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_3d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 900
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v8

    .line 901
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v8, :cond_3c

    const/4 v0, 0x1

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 902
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3d

    .line 907
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_3e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 911
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 912
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v8

    .line 913
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    if-eqz v8, :cond_3d

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 914
    :cond_3d
    const/4 v0, 0x0

    goto :goto_3e

    .line 919
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_3f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    .line 922
    .local v1, "_arg0":[Landroid/net/Network;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v8

    .line 923
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    if-eqz v8, :cond_3e

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 924
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3f

    .line 929
    .end local v1    # "_arg0":[Landroid/net/Network;
    .end local v8    # "_result":Z
    :sswitch_40
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 936
    :sswitch_41
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 939
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 945
    .local v1, "_arg0":Landroid/net/Network;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 947
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    .line 948
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 954
    .local v3, "_arg2":Landroid/os/Messenger;
    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 956
    .restart local v4    # "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 958
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 960
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    move-object v0, p0

    .line 961
    invoke-virtual/range {v0 .. v7}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 942
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Messenger;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    :cond_3f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_40

    .line 951
    .restart local v2    # "_arg1":I
    :cond_40
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Messenger;
    goto :goto_41

    .line 967
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Messenger;
    :sswitch_42
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 970
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 976
    .restart local v1    # "_arg0":Landroid/net/Network;
    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 977
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 973
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_42

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
