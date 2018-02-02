.class public Lcom/amap/api/location/core/CoordinateConvert;
.super Ljava/lang/Object;
.source "CoordinateConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGpsToAMap(DD)Lcom/amap/api/location/core/GeoPoint;
    .locals 8

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 9
    :try_start_0
    invoke-static {p2, p3, p0, p1}, Lcom/aps/u;->a(DD)[D

    move-result-object v0

    .line 10
    new-instance v1, Lcom/amap/api/location/core/GeoPoint;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v1, v2, v0}, Lcom/amap/api/location/core/GeoPoint;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static fromSeveralGpsToAMap(Ljava/lang/String;)[D
    .locals 8

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, ","

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    new-array v3, v2, [D

    .line 22
    :goto_0
    div-int/lit8 v4, v2, 0x2

    if-lt v0, v4, :cond_0

    .line 28
    return-object v3

    .line 23
    :cond_0
    mul-int/lit8 v4, v0, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/aps/u;->a(DD)[D

    move-result-object v4

    .line 25
    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    aput-wide v6, v3, v5

    .line 26
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    aput-wide v6, v3, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public static fromSeveralGpsToAMap([D)[D
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 37
    :try_start_0
    array-length v1, p0

    .line 38
    new-array v2, v1, [D

    .line 39
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_0

    .line 44
    return-object v2

    .line 40
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    aget-wide v4, p0, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, p0, v3

    invoke-static {v4, v5, v6, v7}, Lcom/aps/u;->a(DD)[D

    move-result-object v3

    .line 41
    mul-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    aput-wide v6, v2, v4

    .line 42
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v3, v5

    aput-wide v6, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 47
    return-object v0
.end method
