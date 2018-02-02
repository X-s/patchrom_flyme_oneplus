.class Lcom/amap/api/mapcore2d/be;
.super Ljava/lang/Object;
.source "PolylineDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/af;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:F

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 23
    iput v0, p0, Lcom/amap/api/mapcore2d/be;->b:F

    const/high16 v0, -0x1000000

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/be;->c:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore2d/be;->d:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->e:Z

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    const-string/jumbo v1, "PolylineDelegateImp"

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    const-string/jumbo v2, "PolylineDelegateImp"

    .line 40
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    return-object v1

    .line 120
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    return-object v1

    .line 121
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    .line 122
    if-eqz v0, :cond_1

    .line 123
    new-instance v3, Lcom/amap/api/mapcore2d/r;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/r;-><init>()V

    .line 124
    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {v4, v5, v0, v3}, Lcom/amap/api/mapcore2d/b;->b(IILcom/amap/api/mapcore2d/r;)V

    .line 125
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/r;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/r;->a:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/mapcore2d/ad;DI)Lcom/amap/api/mapcore2d/ad;
    .locals 12

    .prologue
    .line 286
    new-instance v2, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 287
    iget v3, p2, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v4, p1, Lcom/amap/api/mapcore2d/ad;->a:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    .line 288
    iget v3, p2, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v6, p1, Lcom/amap/api/mapcore2d/ad;->b:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    .line 289
    mul-double v8, v6, v6

    mul-double v10, v4, v4

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    .line 290
    move/from16 v0, p6

    int-to-double v10, v0

    mul-double v10, v10, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v10, v8

    iget v3, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-double v10, v3

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 291
    iget v3, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v8, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    mul-double/2addr v6, v8

    div-double v4, v6, v4

    iget v3, p3, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 293
    return-object v2
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->d:F

    .line 186
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 187
    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->c:I

    .line 176
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 240
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/be;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 244
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 245
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v4, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    .line 246
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    invoke-direct {v1, v4, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 247
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 248
    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 251
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v2

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 263
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 268
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    if-nez v1, :cond_3

    .line 274
    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 275
    return-void

    .line 254
    :cond_2
    new-instance v4, Lcom/amap/api/mapcore2d/u;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v5, v0, Lcom/amap/api/mapcore2d/ad;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ad;

    iget v0, v0, Lcom/amap/api/mapcore2d/ad;->a:I

    invoke-direct {v4, v5, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    .line 256
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 257
    iget-object v5, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/bf;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 259
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->g()F

    move-result v1

    float-to-int v1, v1

    .line 270
    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    aput v6, v5, v7

    int-to-float v6, v1

    aput v6, v5, v2

    const/4 v2, 0x2

    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    aput v6, v5, v2

    const/4 v2, 0x3

    int-to-float v1, v1

    aput v1, v5, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 272
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1
.end method

.method a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;",
            "Lcom/amap/api/maps2d/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v24, v2, v4

    .line 346
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 350
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 353
    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    const/16 v23, 0x1

    .line 355
    :goto_0
    new-instance v8, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v8}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 357
    new-instance v14, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v14}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 358
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v9 .. v14}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 359
    new-instance v20, Lcom/amap/api/mapcore2d/ad;

    invoke-direct/range {v20 .. v20}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v0, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-virtual/range {v15 .. v20}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 364
    mul-double v2, v2, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 366
    iget v4, v8, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v5, v14, Lcom/amap/api/mapcore2d/ad;->a:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, v8, Lcom/amap/api/mapcore2d/ad;->b:I

    iget v7, v14, Lcom/amap/api/mapcore2d/ad;->b:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v24

    .line 369
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v21, v4, v6

    move-object/from16 v17, p0

    move-object/from16 v18, v8

    move-object/from16 v19, v14

    .line 371
    invoke-virtual/range {v17 .. v23}, Lcom/amap/api/mapcore2d/be;->a(Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/mapcore2d/ad;DI)Lcom/amap/api/mapcore2d/ad;

    move-result-object v4

    .line 374
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/List;Ljava/util/List;D)V

    .line 381
    return-void

    :cond_0
    const/16 v23, -0x1

    .line 353
    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->j:Ljava/util/List;

    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/be;->b(Ljava/util/List;)V

    .line 107
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 310
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0xa

    .line 317
    if-le v3, v2, :cond_1

    .line 336
    return-void

    .line 311
    :cond_0
    return-void

    .line 318
    :cond_1
    int-to-float v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v2, v4

    .line 319
    new-instance v5, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 320
    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    float-to-double v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    mul-double/2addr v6, v8

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-double v8, v2

    mul-double/2addr v6, v8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v8, v2

    float-to-double v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    mul-double/2addr v8, v10

    const/4 v2, 0x1

    .line 321
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    mul-double v8, v8, p3

    add-double/2addr v6, v8

    mul-float v8, v4, v4

    const/4 v2, 0x2

    .line 322
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-double v8, v2

    add-double/2addr v6, v8

    .line 323
    float-to-double v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    float-to-double v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    mul-double/2addr v8, v10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-double v10, v2

    mul-double/2addr v8, v10

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v10, v2

    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double/2addr v10, v12

    const/4 v2, 0x1

    .line 324
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    mul-double v10, v10, p3

    add-double/2addr v8, v10

    mul-float v10, v4, v4

    const/4 v2, 0x2

    .line 325
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    iget v2, v2, Lcom/amap/api/mapcore2d/ad;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-double v10, v2

    add-double/2addr v8, v10

    .line 327
    float-to-double v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double/2addr v10, v12

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v12, v2

    float-to-double v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    mul-double/2addr v12, v14

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    mul-float v2, v4, v4

    float-to-double v12, v2

    add-double/2addr v10, v12

    .line 328
    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    float-to-double v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    mul-double/2addr v12, v14

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v14, v2

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    mul-double v14, v14, v16

    mul-double v14, v14, p3

    add-double/2addr v12, v14

    mul-float v2, v4, v4

    float-to-double v14, v2

    add-double/2addr v12, v14

    .line 330
    div-double/2addr v6, v10

    double-to-int v2, v6

    iput v2, v5, Lcom/amap/api/mapcore2d/ad;->a:I

    .line 331
    div-double v6, v8, v12

    double-to-int v2, v6

    iput v2, v5, Lcom/amap/api/mapcore2d/ad;->b:I

    .line 333
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v3, v2

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/be;->e:Z

    .line 197
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    iget-object v2, p0, Lcom/amap/api/mapcore2d/be;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->x()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_2

    .line 228
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 222
    :cond_1
    return v0

    .line 226
    :cond_2
    return v1

    .line 228
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

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

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
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
    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    .line 91
    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->b:F

    .line 136
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 46
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v8

    .line 50
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 51
    if-nez p1, :cond_3

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 86
    :goto_0
    return-void

    .line 53
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v0

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 54
    if-eqz v0, :cond_4

    invoke-virtual {v0, v7}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 57
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    if-eqz v1, :cond_5

    .line 63
    if-nez v7, :cond_6

    :goto_2
    move-object v7, v0

    .line 81
    goto :goto_1

    .line 58
    :cond_5
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 60
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v8, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_2

    .line 64
    :cond_6
    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 65
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v8, v7}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 70
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ad;)V

    .line 72
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v8, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-virtual {p0, v7, v0, v1, v8}, Lcom/amap/api/mapcore2d/be;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V

    goto :goto_2

    .line 84
    :cond_8
    invoke-virtual {v8}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    .line 146
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
    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Polyline"

    .line 96
    invoke-static {v0}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    if-ne v0, p1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/be;->g:Z

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
    .line 191
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->d:F

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->e:Z

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
    .line 216
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->b:F

    return v0
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->c:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Ljava/util/List;

    return-object v0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/be;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->f:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->g:Z

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
