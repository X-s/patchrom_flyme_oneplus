.class Lcom/amap/api/maps2d/model/i;
.super Ljava/lang/Object;
.source "PolylineOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/PolylineOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 15
    new-instance v3, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v0, Lcom/amap/api/maps2d/model/LatLng;->CREATOR:Lcom/amap/api/maps2d/model/f;

    invoke-virtual {p1, v4, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 23
    if-eq v0, v2, :cond_0

    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {v3, v4}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 25
    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 26
    invoke-virtual {v3, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 27
    invoke-virtual {v3, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 28
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amap/api/maps2d/model/PolylineOptions;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 31
    if-eq v0, v2, :cond_1

    move v0, v1

    .line 32
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 33
    if-eq v4, v2, :cond_2

    .line 34
    :goto_2
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->geodesic(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 35
    invoke-virtual {v3, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 36
    return-object v3

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0

    :cond_1
    move v0, v2

    .line 31
    goto :goto_1

    :cond_2
    move v1, v2

    .line 33
    goto :goto_2
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 1

    .prologue
    .line 41
    new-array v0, p1, [Lcom/amap/api/maps2d/model/PolylineOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/i;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/i;->a(I)[Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method
