.class public Landroid/net/wifi/WifiDevice;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiDevice$1;
    }
.end annotation


# static fields
.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final BLACKLISTED:I = 0x2

.field public static final CONNECTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I


# instance fields
.field public connectedTime:J

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Landroid/net/wifi/WifiDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice$1;-><init>()V

    .line 131
    sput-object v0, Landroid/net/wifi/WifiDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 53
    iput v4, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 60
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 85
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 91
    :cond_0
    aget-object v1, v0, v4

    const-string/jumbo v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 92
    iput v6, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    .line 99
    :goto_0
    aget-object v1, v0, v6

    iput-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 84
    return-void

    .line 93
    :cond_1
    aget-object v1, v0, v4

    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 94
    iput v4, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_0

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/net/wifi/WifiDevice;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 108
    nop

    nop

    .line 110
    .local v0, "other":Landroid/net/wifi/WifiDevice;
    iget-object v2, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 111
    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 105
    .end local v0    # "other":Landroid/net/wifi/WifiDevice;
    :cond_1
    return v1

    .line 113
    .restart local v0    # "other":Landroid/net/wifi/WifiDevice;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-wide v0, p0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    return-void
.end method
