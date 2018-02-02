.class Lcom/amap/api/maps2d/model/f;
.super Ljava/lang/Object;
.source "LatLngCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/LatLng;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 13
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v4
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 18
    new-array v0, p1, [Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/f;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/f;->a(I)[Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method
