.class Lcom/amap/api/maps2d/model/h;
.super Ljava/lang/Object;
.source "PolygonOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/PolygonOptions;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 14
    new-instance v2, Lcom/amap/api/maps2d/model/PolygonOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/model/PolygonOptions;-><init>()V

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v1, Lcom/amap/api/maps2d/model/LatLng;->CREATOR:Lcom/amap/api/maps2d/model/f;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 22
    if-eqz v1, :cond_0

    move v1, v0

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/maps2d/model/LatLng;

    check-cast v0, [Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/PolygonOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 32
    invoke-virtual {v2, v4}, Lcom/amap/api/maps2d/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 33
    invoke-virtual {v2, v5}, Lcom/amap/api/maps2d/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 34
    invoke-virtual {v2, v6}, Lcom/amap/api/maps2d/model/PolygonOptions;->fillColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 35
    invoke-virtual {v2, v7}, Lcom/amap/api/maps2d/model/PolygonOptions;->zIndex(F)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 36
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/PolygonOptions;->visible(Z)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amap/api/maps2d/model/PolygonOptions;->a:Ljava/lang/String;

    .line 38
    return-object v2

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 22
    goto :goto_0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 1

    .prologue
    .line 42
    new-array v0, p1, [Lcom/amap/api/maps2d/model/PolygonOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/h;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/h;->a(I)[Lcom/amap/api/maps2d/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method
