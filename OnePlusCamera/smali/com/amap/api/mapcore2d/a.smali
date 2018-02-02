.class Lcom/amap/api/mapcore2d/a;
.super Ljava/lang/Object;
.source "AMapCallback.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    .line 65
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->h:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_4

    .line 70
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->b:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_5

    .line 72
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->e:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_6

    .line 74
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->f:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_7

    .line 77
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->g:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_8

    .line 87
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->i:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_a

    .line 93
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->c:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_b

    .line 99
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->j:Lcom/amap/api/mapcore2d/l$a;

    if-ne v1, v2, :cond_c

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/l;ZJ)V

    .line 106
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/a;->b:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    .line 107
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 113
    :cond_3
    :goto_1
    return-void

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ap;

    iget v2, p1, Lcom/amap/api/mapcore2d/l;->b:F

    float-to-int v2, v2

    iget v3, p1, Lcom/amap/api/mapcore2d/l;->c:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    .line 69
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapCallback"

    const-string/jumbo v2, "runCameraUpdate"

    .line 111
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ap;->c()Z

    goto :goto_0

    .line 73
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ap;->d()Z

    goto :goto_0

    .line 75
    :cond_7
    iget v1, p1, Lcom/amap/api/mapcore2d/l;->d:F

    .line 76
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    goto :goto_0

    .line 78
    :cond_8
    iget v1, p1, Lcom/amap/api/mapcore2d/l;->e:F

    .line 79
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    add-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v1

    .line 80
    iget-object v2, p1, Lcom/amap/api/mapcore2d/l;->k:Landroid/graphics/Point;

    .line 81
    sub-float v3, v1, v0

    .line 82
    if-nez v2, :cond_9

    .line 85
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    goto :goto_0

    .line 83
    :cond_9
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_0

    .line 88
    :cond_a
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 89
    iget-object v2, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 90
    iget-object v3, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 91
    iget-object v4, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v4

    new-instance v5, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v5, v2, v3}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    iget v1, v1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {v4, v5, v1}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;F)V

    goto/16 :goto_0

    .line 94
    :cond_b
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 95
    iget-object v2, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 96
    iget-object v1, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 97
    iget-object v3, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/ap;

    move-result-object v3

    new-instance v4, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v4, v2, v1}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 98
    invoke-static {}, Lcom/amap/api/mapcore2d/k;->a()Lcom/amap/api/mapcore2d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/k;->b()V

    goto/16 :goto_0

    .line 99
    :cond_c
    iget-object v1, p1, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l$a;

    sget-object v2, Lcom/amap/api/mapcore2d/l$a;->k:Lcom/amap/api/mapcore2d/l$a;

    if-eq v1, v2, :cond_2

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/l;->l:Z

    goto/16 :goto_0

    .line 108
    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->N()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
