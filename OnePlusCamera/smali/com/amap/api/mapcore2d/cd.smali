.class public Lcom/amap/api/mapcore2d/cd;
.super Ljava/lang/Object;
.source "B2GCoordConver.java"


# direct methods
.method private static a(D)D
    .locals 4

    .prologue
    const-wide v0, 0x40a7700000000000L    # 3000.0

    .line 41
    mul-double/2addr v0, p0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DI)D
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(DD)Lcom/amap/api/mapcore2d/ce;
    .locals 12

    .prologue
    const/16 v1, 0x8

    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/ce;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ce;-><init>()V

    .line 63
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/cd;->b(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 64
    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cd;->a(D)D

    move-result-wide v4

    mul-double v6, p0, p0

    mul-double v8, p2, p2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v2, v4

    .line 65
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/cd;->b(D)D

    move-result-wide v4

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 66
    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cd;->a(D)D

    move-result-wide v6

    mul-double v8, p0, p0

    mul-double v10, p2, p2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v4, v6

    .line 67
    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore2d/cd;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/ce;->a:D

    .line 68
    invoke-static {v4, v5, v1}, Lcom/amap/api/mapcore2d/cd;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/ce;->b:D

    .line 69
    return-object v0
.end method

.method private static a(DDDD)Lcom/amap/api/maps2d/model/LatLng;
    .locals 8

    .prologue
    .line 124
    new-instance v0, Lcom/amap/api/mapcore2d/ce;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ce;-><init>()V

    .line 125
    sub-double v2, p0, p4

    .line 126
    sub-double v4, p2, p6

    .line 127
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/cd;->a(DD)Lcom/amap/api/mapcore2d/ce;

    move-result-object v1

    .line 128
    add-double/2addr v2, p0

    iget-wide v6, v1, Lcom/amap/api/mapcore2d/ce;->a:D

    sub-double/2addr v2, v6

    const/16 v6, 0x8

    invoke-static {v2, v3, v6}, Lcom/amap/api/mapcore2d/cd;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/ce;->a:D

    .line 129
    add-double v2, p2, v4

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/ce;->b:D

    sub-double/2addr v2, v4

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore2d/cd;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/ce;->b:D

    .line 130
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/ce;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/ce;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 31
    return-object v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cd;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/amap/api/maps2d/model/LatLng;I)Lcom/amap/api/maps2d/model/LatLng;
    .locals 9

    .prologue
    const-wide v4, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v6, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    .line 106
    :goto_0
    if-lt v8, p1, :cond_0

    .line 111
    return-object v0

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore2d/cd;->a(DDDD)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    .line 108
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double v4, v2, v4

    .line 109
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double v6, v2, v6

    .line 106
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(D)D
    .locals 4

    .prologue
    const-wide v0, 0x40a7700000000000L    # 3000.0

    .line 51
    mul-double/2addr v0, p0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 92
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cd;->a(Lcom/amap/api/maps2d/model/LatLng;I)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method
