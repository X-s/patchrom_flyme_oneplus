.class public Lcom/amap/api/mapcore2d/cf;
.super Ljava/lang/Object;
.source "MapbarCoordConver.java"


# static fields
.field static a:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 7
    sput-wide v0, Lcom/amap/api/mapcore2d/cf;->a:D

    return-void
.end method

.method public static a(DD)D
    .locals 6

    .prologue
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    .line 15
    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 4

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cf;->c(DD)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cg;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static b(DD)D
    .locals 6

    .prologue
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    .line 19
    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static c(DD)Lcom/amap/api/maps2d/model/LatLng;
    .locals 10

    .prologue
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    .line 48
    mul-double/2addr v0, p0

    double-to-long v0, v0

    const-wide/32 v2, 0x2255100

    rem-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    .line 49
    mul-double/2addr v2, p2

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cf;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    .line 51
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cf;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    .line 52
    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/mapcore2d/cf;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    .line 53
    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/mapcore2d/cf;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 54
    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    .line 55
    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    .line 56
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v4

    :cond_0
    const/4 v0, -0x1

    .line 52
    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 53
    goto :goto_1
.end method
