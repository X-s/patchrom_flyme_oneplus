.class Lcom/amap/api/maps2d/model/g;
.super Ljava/lang/Object;
.source "MarkerOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/MarkerOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12
    new-instance v3, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    const-class v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 14
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 17
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 22
    if-eq v0, v2, :cond_0

    move v0, v1

    .line 23
    :goto_0
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 25
    if-eq v0, v2, :cond_1

    move v0, v1

    .line 26
    :goto_1
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    :goto_2
    invoke-virtual {v3, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->setGps(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/amap/api/maps2d/model/MarkerOptions;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 32
    sget-object v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->a:Lcom/amap/api/maps2d/model/a;

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->icons(Ljava/util/ArrayList;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 35
    return-object v3

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    :cond_1
    move v0, v2

    .line 25
    goto :goto_1

    :cond_2
    move v1, v2

    .line 28
    goto :goto_2
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/amap/api/maps2d/model/MarkerOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/g;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/g;->a(I)[Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method
