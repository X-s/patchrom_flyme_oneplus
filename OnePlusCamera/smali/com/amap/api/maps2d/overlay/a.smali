.class Lcom/amap/api/maps2d/overlay/a;
.super Ljava/lang/Object;
.source "AMapServicesUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 19
    sput v0, Lcom/amap/api/maps2d/overlay/a;->a:I

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 65
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    return-object v0

    .line 60
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 44
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-object v1

    .line 52
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 53
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
