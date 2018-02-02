.class public Lcom/amap/api/maps2d/model/TextOptionsCreator;
.super Ljava/lang/Object;
.source "TextOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/model/TextOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 30
    new-instance v1, Lcom/amap/api/maps2d/model/TextOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/TextOptions;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    const-string/jumbo v4, "lat"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string/jumbo v6, "lng"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/TextOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->text(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->rotate(F)Lcom/amap/api/maps2d/model/TextOptions;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps2d/model/TextOptions;->align(II)Lcom/amap/api/maps2d/model/TextOptions;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->backgroundColor(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->fontColor(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->fontSize(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->zIndex(F)Lcom/amap/api/maps2d/model/TextOptions;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/model/TextOptions;->visible(Z)Lcom/amap/api/maps2d/model/TextOptions;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "obj"

    .line 47
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 55
    :goto_0
    return-object v1

    .line 49
    :cond_1
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/model/TextOptions;->setObject(Ljava/lang/Object;)Lcom/amap/api/maps2d/model/TextOptions;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    const-string/jumbo v2, "TextOptionsCreator"

    const-string/jumbo v3, "createFromParcel"

    .line 53
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/TextOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TextOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps2d/model/TextOptions;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lcom/amap/api/maps2d/model/TextOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/TextOptionsCreator;->newArray(I)[Lcom/amap/api/maps2d/model/TextOptions;

    move-result-object v0

    return-object v0
.end method
