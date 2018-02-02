.class Lcom/amap/api/mapcore2d/au;
.super Ljava/lang/Object;
.source "MapProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/au$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field c:F

.field public d:D

.field e:I

.field f:D

.field g:D

.field public h:I

.field public i:I

.field public j:F

.field public k:D

.field public l:Lcom/amap/api/mapcore2d/u;

.field public m:Lcom/amap/api/mapcore2d/u;

.field public n:Landroid/graphics/Point;

.field public o:Lcom/amap/api/mapcore2d/au$a;

.field p:Lcom/amap/api/mapcore2d/ay$d;

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay$d;)V
    .locals 3

    .prologue
    const/16 v0, 0x100

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/au;->a:I

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore2d/au;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore2d/au;->c:F

    const-wide v0, 0x405d196b11c6d1e1L    # 116.39716

    .line 26
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->q:D

    const-wide v0, 0x4043f556191148feL    # 39.91669

    .line 31
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->r:D

    const-wide v0, 0x41031bf8456d5cfbL    # 156543.0339

    .line 36
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->d:D

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amap/api/mapcore2d/au;->e:I

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    .line 46
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->f:D

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    .line 47
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->g:D

    .line 49
    sget v0, Lcom/amap/api/mapcore2d/p;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/au;->h:I

    .line 50
    sget v0, Lcom/amap/api/mapcore2d/p;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/au;->i:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 51
    iput v0, p0, Lcom/amap/api/mapcore2d/au;->j:F

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->k:D

    .line 55
    iput-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    .line 56
    iput-object v2, p0, Lcom/amap/api/mapcore2d/au;->m:Lcom/amap/api/mapcore2d/u;

    .line 58
    iput-object v2, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    .line 59
    iput-object v2, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    .line 61
    iput-object v2, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 533
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->s:D

    .line 64
    iput-object p1, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;)F
    .locals 21

    .prologue
    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/u;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v2

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/u;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v4

    .line 545
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/u;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v6

    .line 546
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/u;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/api/mapcore2d/q;->a(J)D

    move-result-wide v8

    .line 548
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/mapcore2d/au;->s:D

    mul-double/2addr v2, v10

    .line 549
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/mapcore2d/au;->s:D

    mul-double/2addr v4, v10

    .line 550
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/mapcore2d/au;->s:D

    mul-double/2addr v6, v10

    .line 551
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/mapcore2d/au;->s:D

    mul-double/2addr v8, v10

    .line 552
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 553
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 554
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 555
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 556
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 557
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 558
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 559
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/16 v18, 0x3

    .line 560
    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    .line 561
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 562
    mul-double/2addr v2, v4

    aput-wide v2, v18, v20

    const/4 v2, 0x1

    .line 563
    mul-double/2addr v4, v10

    aput-wide v4, v18, v2

    const/4 v2, 0x2

    .line 564
    aput-wide v12, v18, v2

    const/4 v2, 0x0

    .line 565
    mul-double v4, v8, v6

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    .line 566
    mul-double v4, v8, v14

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    .line 567
    aput-wide v16, v19, v2

    const/4 v2, 0x0

    .line 568
    aget-wide v2, v18, v2

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    const/4 v6, 0x0

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v4, v18, v4

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    const/4 v8, 0x1

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v18, v4

    const/4 v6, 0x2

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v18, v6

    const/4 v8, 0x2

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 572
    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public a(II)Landroid/graphics/PointF;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 303
    iget v0, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v0, p1

    int-to-double v0, v0

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->k:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->f:D

    add-double/2addr v4, v0

    .line 305
    iget v0, p0, Lcom/amap/api/mapcore2d/au;->e:I

    if-eqz v0, :cond_0

    .line 308
    iget v0, p0, Lcom/amap/api/mapcore2d/au;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 313
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 316
    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->k:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 318
    return-object v0

    .line 306
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/au;->g:D

    iget v2, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v2, p2

    int-to-double v2, v2

    iget-wide v8, p0, Lcom/amap/api/mapcore2d/au;->k:D

    mul-double/2addr v2, v8

    sub-double v2, v0, v2

    goto :goto_0

    .line 309
    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/au;->k:D

    mul-double/2addr v2, v0

    goto :goto_0
.end method

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 476
    sub-int v2, p1, p3

    iget v4, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 478
    iget v2, p0, Lcom/amap/api/mapcore2d/au;->e:I

    if-eqz v2, :cond_1

    .line 481
    iget v2, p0, Lcom/amap/api/mapcore2d/au;->e:I

    if-eq v2, v0, :cond_2

    .line 487
    :goto_0
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/PointF;->x:F

    int-to-float v4, p6

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_5

    :goto_3
    if-nez v0, :cond_0

    iget v0, v3, Landroid/graphics/PointF;->y:F

    int-to-float v1, p7

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    :cond_0
    const/4 v0, 0x0

    .line 491
    return-object v0

    .line 479
    :cond_1
    sub-int v2, p2, p4

    iget v4, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 482
    :cond_2
    iget v2, p5, Landroid/graphics/PointF;->y:F

    sub-int v4, p2, p4

    iget v5, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_3
    move v2, v1

    .line 487
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    .line 493
    :cond_6
    return-object v3
.end method

.method a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 137
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 139
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    .line 140
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v2, p4

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 143
    iget v1, p3, Landroid/graphics/Point;->y:I

    int-to-double v2, v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v4

    .line 144
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v4, p4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 146
    return-object v0
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;
    .locals 2

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p6}, Lcom/amap/api/mapcore2d/au;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide v8, 0x41731bf84570a3d7L    # 2.003750834E7

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-wide v6, 0x4066800000000000L    # 180.0

    .line 109
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 116
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    .line 118
    mul-double/2addr v2, v8

    div-double v4, v2, v6

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 119
    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    .line 121
    mul-double/2addr v0, v8

    div-double v2, v0, v6

    .line 122
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 123
    return-object v1

    .line 110
    :cond_0
    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore2d/u;III)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore2d/u;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v11, "getTilesInDomain"

    .line 333
    iget-wide v12, p0, Lcom/amap/api/mapcore2d/au;->k:D

    const/4 v0, 0x0

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->f:D

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-double v4, v1

    mul-double/2addr v4, v12

    div-double/2addr v2, v4

    double-to-int v14, v2

    .line 342
    iget v1, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v1, v14

    int-to-double v2, v1

    mul-double/2addr v2, v12

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->f:D

    add-double/2addr v4, v2

    const-wide/16 v2, 0x0

    .line 347
    iget v1, p0, Lcom/amap/api/mapcore2d/au;->e:I

    if-eqz v1, :cond_0

    .line 352
    iget v1, p0, Lcom/amap/api/mapcore2d/au;->e:I

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    move v8, v0

    .line 358
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 361
    iget-object v3, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    move-object v0, p0

    move-object/from16 v2, p1

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v5

    .line 364
    new-instance v0, Lcom/amap/api/mapcore2d/bp;

    .line 366
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v14, v8, v1, v2}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 368
    iput-object v5, v0, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 369
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v9, v0

    :goto_1
    const/4 v10, 0x0

    .line 381
    sub-int v1, v14, v9

    :goto_2
    add-int v0, v14, v9

    if-le v1, v0, :cond_2

    .line 419
    add-int v0, v8, v9

    add-int/lit8 v2, v0, -0x1

    :goto_3
    sub-int v0, v8, v9

    if-gt v2, v0, :cond_8

    .line 458
    if-eqz v10, :cond_6

    .line 379
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 348
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/au;->g:D

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 350
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/au;->g:D

    iget v1, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v1, v0

    int-to-double v6, v1

    mul-double/2addr v6, v12

    sub-double/2addr v2, v6

    move v8, v0

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/au;->g:D

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 354
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/amap/api/mapcore2d/au;->a:I

    mul-int/2addr v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, v12

    move v8, v0

    goto :goto_0

    .line 383
    :cond_2
    add-int v2, v8, v9

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 385
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/au;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    .line 388
    if-nez v3, :cond_3

    .line 400
    :goto_4
    sub-int v2, v8, v9

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 402
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/au;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 405
    if-nez v0, :cond_5

    .line 381
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 389
    :cond_3
    if-eqz v10, :cond_4

    move v0, v10

    .line 392
    :goto_6
    new-instance v4, Lcom/amap/api/mapcore2d/bp;

    .line 394
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 396
    iput-object v3, v4, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 397
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    .line 390
    goto :goto_6

    .line 406
    :cond_5
    if-eqz v10, :cond_7

    .line 409
    :goto_7
    new-instance v3, Lcom/amap/api/mapcore2d/bp;

    .line 411
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 413
    iput-object v0, v3, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 414
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 464
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MapProjection"

    .line 463
    invoke-static {v0, v1, v11}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_6
    return-object v12

    :cond_7
    const/4 v10, 0x1

    .line 407
    goto :goto_7

    .line 420
    :cond_8
    add-int v1, v14, v9

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 423
    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/au;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    .line 426
    if-nez v3, :cond_9

    .line 439
    :goto_8
    sub-int v1, v14, v9

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 441
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore2d/au;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 444
    if-nez v0, :cond_b

    .line 419
    :goto_9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 427
    :cond_9
    if-eqz v10, :cond_a

    move v0, v10

    .line 430
    :goto_a
    new-instance v4, Lcom/amap/api/mapcore2d/bp;

    .line 432
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 434
    iput-object v3, v4, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 435
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v0

    goto :goto_8

    :cond_a
    const/4 v0, 0x1

    .line 428
    goto :goto_a

    .line 445
    :cond_b
    if-eqz v10, :cond_c

    .line 448
    :goto_b
    new-instance v3, Lcom/amap/api/mapcore2d/bp;

    .line 450
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/au;->b()I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/api/mapcore2d/bp;-><init>(IIII)V

    .line 451
    iput-object v0, v3, Lcom/amap/api/mapcore2d/bp;->g:Landroid/graphics/PointF;

    .line 452
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :cond_c
    const/4 v10, 0x1

    .line 446
    goto :goto_b
.end method

.method public a()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const v8, 0x4b98dfc2    # 2.0037508E7f

    const v7, -0x3467203e    # -2.0037508E7f

    .line 71
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/au;->g:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore2d/au;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->d:D

    .line 72
    iget v0, p0, Lcom/amap/api/mapcore2d/au;->j:F

    float-to-int v0, v0

    .line 73
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/au;->d:D

    shl-int v1, v6, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 74
    iget v1, p0, Lcom/amap/api/mapcore2d/au;->j:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    div-double v0, v2, v0

    .line 75
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/au;->k:D

    .line 83
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/au;->r:D

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->q:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->g()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/au;->m:Lcom/amap/api/mapcore2d/u;

    .line 86
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    .line 87
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    .line 88
    new-instance v0, Lcom/amap/api/mapcore2d/au$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/au$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iput v7, v0, Lcom/amap/api/mapcore2d/au$a;->a:F

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iput v8, v0, Lcom/amap/api/mapcore2d/au$a;->b:F

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iput v8, v0, Lcom/amap/api/mapcore2d/au$a;->c:F

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iput v7, v0, Lcom/amap/api/mapcore2d/au$a;->d:F

    .line 93
    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    .line 97
    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 8

    .prologue
    .line 497
    iget-wide v4, p0, Lcom/amap/api/mapcore2d/au;->k:D

    .line 498
    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v7

    .line 500
    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v2

    .line 504
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 505
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v0

    .line 506
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v4

    sub-double v4, v0, v4

    .line 508
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v0

    add-double/2addr v0, v2

    .line 510
    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 512
    :goto_0
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 513
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->b:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v5, v5, Lcom/amap/api/mapcore2d/au$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    .line 516
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 517
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->b:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v5, v5, Lcom/amap/api/mapcore2d/au$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    .line 520
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 521
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->c:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v5, v5, Lcom/amap/api/mapcore2d/au$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    .line 524
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 525
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v4, v4, Lcom/amap/api/mapcore2d/au$a;->c:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    iget v5, v5, Lcom/amap/api/mapcore2d/au$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    goto :goto_3

    .line 527
    :cond_3
    iget-object v4, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v4, v2, v3}, Lcom/amap/api/mapcore2d/u;->b(D)V

    .line 528
    iget-object v2, p0, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/u;->a(D)V

    .line 531
    return-void
.end method

.method b()I
    .locals 6

    .prologue
    .line 263
    iget v0, p0, Lcom/amap/api/mapcore2d/au;->j:F

    float-to-int v0, v0

    .line 264
    iget v1, p0, Lcom/amap/api/mapcore2d/au;->j:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-double v2, v1

    sget-wide v4, Lcom/amap/api/mapcore2d/ay;->a:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 265
    return v0

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;
    .locals 8

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amap/api/mapcore2d/au;->p:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->c(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 197
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 198
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 200
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v4

    float-to-double v0, v1

    mul-double/2addr v0, p4

    add-double/2addr v0, v4

    .line 201
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v4

    float-to-double v2, v2

    mul-double/2addr v2, p4

    sub-double v2, v4, v2

    .line 203
    :goto_0
    iget v4, p6, Lcom/amap/api/mapcore2d/au$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 204
    iget v4, p6, Lcom/amap/api/mapcore2d/au$a;->b:F

    iget v5, p6, Lcom/amap/api/mapcore2d/au$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v4, v0

    .line 207
    :goto_1
    iget v0, p6, Lcom/amap/api/mapcore2d/au$a;->b:F

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_1

    .line 208
    iget v0, p6, Lcom/amap/api/mapcore2d/au$a;->b:F

    iget v1, p6, Lcom/amap/api/mapcore2d/au$a;->a:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v4, v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    .line 211
    :goto_2
    iget v2, p6, Lcom/amap/api/mapcore2d/au$a;->d:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 212
    iget v2, p6, Lcom/amap/api/mapcore2d/au$a;->c:F

    iget v3, p6, Lcom/amap/api/mapcore2d/au$a;->d:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_2

    :cond_2
    move-wide v2, v0

    .line 215
    :goto_3
    iget v0, p6, Lcom/amap/api/mapcore2d/au$a;->c:F

    float-to-double v0, v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    .line 216
    iget v0, p6, Lcom/amap/api/mapcore2d/au$a;->c:F

    iget v1, p6, Lcom/amap/api/mapcore2d/au$a;->d:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v2, v0

    goto :goto_3

    .line 218
    :cond_3
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/u;-><init>(DDZ)V

    .line 219
    return-object v1
.end method

.method public b(Lcom/amap/api/mapcore2d/u;)Lcom/amap/api/mapcore2d/u;
    .locals 10

    .prologue
    const-wide v4, 0x41731bf84570a3d7L    # 2.003750834E7

    const-wide v8, 0x412e848000000000L    # 1000000.0

    const-wide v6, 0x4066800000000000L    # 180.0

    .line 157
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->e()D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 158
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->f()D

    move-result-wide v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 160
    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 163
    new-instance v2, Lcom/amap/api/mapcore2d/u;

    float-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    float-to-double v4, v0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-direct {v2, v1, v0}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    return-object v2
.end method
