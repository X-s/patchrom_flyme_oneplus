.class Lcom/amap/api/mapcore2d/bg;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ag;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/mapcore2d/w;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/w;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ProjectionDelegateImp"

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bg;->a:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore2d/w;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 32
    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/w;->a(IILcom/amap/api/mapcore2d/r;)V

    .line 24
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public a()Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v6, "getVisibleRegion"

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->c()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/w;->d()I

    move-result v1

    .line 48
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/bg;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 49
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/bg;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 50
    :try_start_2
    new-instance v3, Landroid/graphics/Point;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/bg;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 51
    :try_start_3
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/amap/api/mapcore2d/bg;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 52
    :try_start_4
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v8

    .line 59
    :goto_0
    new-instance v0, Lcom/amap/api/maps2d/model/VisibleRegion;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 57
    :goto_1
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bg;->a:Ljava/lang/String;

    invoke-static {v0, v7, v6}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v8

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v6, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bg;->b:Lcom/amap/api/mapcore2d/w;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore2d/w;->a(DDLcom/amap/api/mapcore2d/r;)V

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    iget-wide v2, v6, Lcom/amap/api/mapcore2d/r;->a:D

    double-to-float v1, v2

    iget-wide v2, v6, Lcom/amap/api/mapcore2d/r;->b:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
