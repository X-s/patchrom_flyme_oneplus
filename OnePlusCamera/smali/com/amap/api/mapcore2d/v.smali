.class Lcom/amap/api/mapcore2d/v;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/y;


# instance fields
.field private final a:D

.field private final b:D

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 23
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/v;->a:D

    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    .line 24
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/v;->b:D

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/amap/api/mapcore2d/v;->l:F

    .line 35
    iput v2, p0, Lcom/amap/api/mapcore2d/v;->m:F

    .line 36
    iput v2, p0, Lcom/amap/api/mapcore2d/v;->n:F

    const-string/jumbo v1, "GroundOverlayDelegateImp"

    .line 42
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlayDelegateImp"

    .line 46
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 323
    if-eqz p1, :cond_0

    .line 326
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 327
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 328
    new-instance v2, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v2, v0, v1}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 329
    return-object v2

    .line 324
    :cond_0
    return-object v0
.end method

.method private o()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 109
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    .line 111
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->g:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    .line 113
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/v;->n:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    iget-object v8, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/v;->m:F

    float-to-double v10, v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/v;->n:F

    float-to-double v10, v7

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    iget-object v7, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/v;->m:F

    sub-float v7, v12, v7

    float-to-double v10, v7

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 118
    return-void
.end method

.method private p()V
    .locals 14

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 122
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 124
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v3, p0, Lcom/amap/api/mapcore2d/v;->n:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    float-to-double v6, v3

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v3, p0, Lcom/amap/api/mapcore2d/v;->m:F

    float-to-double v8, v3

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 129
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 131
    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double v0, v2, v0

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    mul-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 132
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->j:F

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 67
    return-void
.end method

.method public a(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "GroundOverlayDelegateImp"

    const-string/jumbo v1, "Width and Height must be non-negative"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 205
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 206
    iput p2, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 212
    :goto_1
    return-void

    .line 201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :cond_3
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 210
    iput p2, p0, Lcom/amap/api/mapcore2d/v;->g:F

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->g()V

    .line 290
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 291
    return-void

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v0, :cond_2

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    .line 294
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 319
    :cond_5
    :goto_1
    return-void

    .line 294
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 297
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 298
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 299
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 300
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 301
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/v;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    .line 302
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 303
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 304
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 305
    iget-object v6, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 307
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 308
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 309
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 310
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->l:F

    mul-float/2addr v2, v8

    sub-float v2, v8, v2

    float-to-int v2, v2

    .line 311
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 312
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    iget v2, p0, Lcom/amap/api/mapcore2d/v;->i:F

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 315
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->p:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v7, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method public a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 274
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 172
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->o()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 228
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 230
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->p()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 78
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->x()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_2

    .line 164
    iget-object v3, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 158
    :cond_1
    return v0

    .line 162
    :cond_2
    return v1

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 165
    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/ac;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return v2
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    .line 53
    return-void
.end method

.method public b(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "GroundOverlayDelegateImp"

    const-string/jumbo v1, "Width must be non-negative"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 190
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 191
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->g:F

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->f:F

    .line 195
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->g:F

    goto :goto_0
.end method

.method public b(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->m:F

    .line 279
    iput p2, p0, Lcom/amap/api/mapcore2d/v;->n:F

    .line 280
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "GroundOverlay"

    .line 58
    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 243
    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 244
    iget v1, p0, Lcom/amap/api/mapcore2d/v;->i:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    float-to-double v4, v0

    .line 245
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 246
    iput v0, p0, Lcom/amap/api/mapcore2d/v;->i:F

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore2d/v;->i:F

    goto :goto_0
.end method

.method public d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->j:F

    return v0
.end method

.method public d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 259
    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "GroundOverlayDelegateImp"

    const-string/jumbo v1, "Transparency must be in the range [0..1]"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/v;->l:F

    .line 263
    return-void
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/v;->k:Z

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_1

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->p()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->o()V

    goto :goto_0
.end method

.method public h()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->f:F

    return v0
.end method

.method public j()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->g:F

    return v0
.end method

.method public k()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object v0
.end method

.method public l()V
    .locals 3

    .prologue
    const-string/jumbo v1, "destroy"

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->b()V

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 153
    :goto_1
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GroundOverlayDelegateImp"

    .line 150
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "destroy erro"

    const-string/jumbo v1, "GroundOverlayDelegateImp destroy"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public m()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->i:F

    return v0
.end method

.method public n()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget v0, p0, Lcom/amap/api/mapcore2d/v;->l:F

    return v0
.end method
