.class Lcom/amap/api/maps2d/model/b;
.super Ljava/lang/Object;
.source "CameraPositionCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/CameraPosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 12

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 16
    new-instance v5, Lcom/amap/api/maps2d/model/CameraPosition;

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    float-to-double v8, v1

    float-to-double v10, v2

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v5, v6, v4, v3, v0}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v5
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/b;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/b;->a(I)[Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method
