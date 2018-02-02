.class public Lcom/amap/api/mapcore2d/cg;
.super Ljava/lang/Object;
.source "NaviveCoordConver.java"


# direct methods
.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/en;->a(DD)[D

    move-result-object v0

    .line 15
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method
