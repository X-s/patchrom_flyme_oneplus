.class Lcom/amap/api/mapcore2d/q;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# direct methods
.method public static a(J)D
    .locals 4

    .prologue
    .line 21
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(D)J
    .locals 2

    .prologue
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 17
    mul-double/2addr v0, p0

    double-to-long v0, v0

    return-wide v0
.end method
