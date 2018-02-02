.class public final Lcom/amap/api/maps2d/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    .line 98
    invoke-static {p0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/l;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    .line 175
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static scrollBy(FF)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/l;->a(FF)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static zoomBy(F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/l;->b(F)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/l;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static zoomIn()Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {}, Lcom/amap/api/mapcore2d/l;->b()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {}, Lcom/amap/api/mapcore2d/l;->c()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method

.method public static zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/l;->a(F)Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/l;)V

    return-object v0
.end method
