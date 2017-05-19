.class public Landroid/net/wifi/HotspotClient;
.super Ljava/lang/Object;
.source "HotspotClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectedTime:J

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Landroid/net/wifi/HotspotClient$1;

    invoke-direct {v0}, Landroid/net/wifi/HotspotClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/HotspotClient;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/HotspotClient;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p1, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 81
    iget-boolean v0, p1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 82
    iget-wide v0, p1, Landroid/net/wifi/HotspotClient;->connectedTime:J

    iput-wide v0, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 83
    iget-object v0, p1, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "time"    # J

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 62
    iput-wide p3, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "time"    # J
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 70
    iput-boolean p2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 71
    iput-wide p3, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    .line 72
    iput-object p5, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " isBlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, " connectedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, " deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    iget-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-wide v0, p0, Landroid/net/wifi/HotspotClient;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-object v0, p0, Landroid/net/wifi/HotspotClient;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
