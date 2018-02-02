.class Lcom/amap/api/maps2d/model/d;
.super Ljava/lang/Object;
.source "GroundOverlayOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/GroundOverlayOptions;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    const-class v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    const-class v0, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 24
    new-instance v0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/amap/api/maps2d/model/LatLng;FFLcom/amap/api/maps2d/model/LatLngBounds;FFZFFF)V

    .line 26
    invoke-virtual {v0, v13}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->image(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;

    .line 27
    return-object v0

    :cond_0
    const/4 v9, 0x1

    .line 20
    goto :goto_0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/amap/api/maps2d/model/GroundOverlayOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/d;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/d;->a(I)[Lcom/amap/api/maps2d/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method
