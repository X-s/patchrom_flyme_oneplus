.class Lcom/amap/api/maps2d/model/l;
.super Ljava/lang/Object;
.source "VisibleRegionCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/VisibleRegion;",
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

.method static a(Lcom/amap/api/maps2d/model/VisibleRegion;Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/VisibleRegion;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v7, "createFromParcel"

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v2, Lcom/amap/api/maps2d/model/LatLng;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-class v3, Lcom/amap/api/maps2d/model/LatLng;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-class v4, Lcom/amap/api/maps2d/model/LatLng;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_3
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-class v5, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 28
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .line 33
    :goto_0
    new-instance v0, Lcom/amap/api/maps2d/model/VisibleRegion;

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    move-object v4, v6

    move-object v3, v6

    move-object v2, v6

    move-object v5, v6

    :goto_1
    const-string/jumbo v8, "VisibleRegionCreator"

    .line 31
    invoke-static {v0, v8, v7}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, v9

    goto :goto_0

    .line 32
    :catch_1
    move-exception v2

    move-object v4, v6

    move-object v3, v6

    move-object v5, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v6

    move-object v5, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    move-object v4, v6

    goto :goto_1

    :catch_4
    move-exception v5

    move-object v9, v5

    move-object v5, v0

    move-object v0, v9

    goto :goto_1
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/amap/api/maps2d/model/VisibleRegion;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/l;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/l;->a(I)[Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object v0

    return-object v0
.end method
