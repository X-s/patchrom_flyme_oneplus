.class public final Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/PbapServerProfile$1;,
        Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "PBAP Server"

.field private static final ORDINAL:I = 0x6

.field static final PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "PbapServerProfile"

.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    sput-boolean v3, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->V:Z

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Lcom/android/settings_exlib/bluetooth/PbapServerProfile$1;)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    .line 74
    .local v0, "pbap":Landroid/bluetooth/BluetoothPbap;
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_exlib/bluetooth/PbapServerProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/bluetooth/PbapServerProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "PbapServerProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pbap server not connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 143
    sget-boolean v1, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "PbapServerProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_1

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PbapServerProfile"

    const-string v2, "Error cleaning up PBAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 139
    sget v0, Lcom/android/settings_exlib/R$drawable;->ic_bt_cellphone:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 131
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_profile_pbap:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x6

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 135
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_profile_pbap_summary:I

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings_exlib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "PBAP Server"

    return-object v0
.end method
