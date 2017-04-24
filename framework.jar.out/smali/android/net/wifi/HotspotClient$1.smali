.class final Landroid/net/wifi/HotspotClient$1;
.super Ljava/lang/Object;
.source "HotspotClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/HotspotClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/HotspotClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HotspotClient;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 120
    new-instance v1, Landroid/net/wifi/HotspotClient;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;ZJLjava/lang/String;)V

    .line 121
    .local v1, "result":Landroid/net/wifi/HotspotClient;
    return-object v1

    .line 120
    .end local v1    # "result":Landroid/net/wifi/HotspotClient;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/net/wifi/HotspotClient$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HotspotClient;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/HotspotClient;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    new-array v0, p1, [Landroid/net/wifi/HotspotClient;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/net/wifi/HotspotClient$1;->newArray(I)[Landroid/net/wifi/HotspotClient;

    move-result-object v0

    return-object v0
.end method
