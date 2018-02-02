.class Lcom/amap/api/maps2d/model/e;
.super Ljava/lang/Object;
.source "LatLngBoundsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/LatLngBounds;",
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

.method static a(Lcom/amap/api/maps2d/model/LatLngBounds;Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/LatLngBounds;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v3, "createFromParcel"

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v1, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    :goto_0
    new-instance v2, Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-direct {v2, v4, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    .line 28
    return-object v2

    .line 25
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string/jumbo v5, "LatLngBoundsCreator"

    .line 24
    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    .line 25
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    .prologue
    .line 33
    new-array v0, p1, [Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/e;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/e;->a(I)[Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method
