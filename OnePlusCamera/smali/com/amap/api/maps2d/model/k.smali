.class Lcom/amap/api/maps2d/model/k;
.super Ljava/lang/Object;
.source "TileOverlayOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/TileOverlayOptions;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const-class v0, Lcom/amap/api/maps2d/model/TileProvider;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/TileProvider;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    .line 19
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-nez v10, :cond_2

    .line 20
    :goto_2
    new-instance v3, Lcom/amap/api/maps2d/model/TileOverlayOptions;

    invoke-direct {v3, v5, v11, v1, v6}, Lcom/amap/api/maps2d/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZF)V

    .line 21
    if-nez v0, :cond_3

    .line 24
    :goto_3
    invoke-virtual {v3, v7}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 25
    invoke-virtual {v3, v8}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 26
    invoke-virtual {v3, v9}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 27
    invoke-virtual {v3, v4}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->memoryCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 28
    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 29
    return-object v3

    :cond_0
    move v1, v3

    .line 13
    goto :goto_0

    :cond_1
    move v4, v3

    .line 18
    goto :goto_1

    :cond_2
    move v2, v3

    .line 19
    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps2d/model/TileProvider;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    goto :goto_3
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 1

    .prologue
    .line 33
    new-array v0, p1, [Lcom/amap/api/maps2d/model/TileOverlayOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/k;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/k;->a(I)[Lcom/amap/api/maps2d/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method
