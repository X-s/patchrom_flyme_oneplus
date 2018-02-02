.class public Lcom/amap/api/mapcore2d/ay$e;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;

.field private b:F

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 1

    .prologue
    .line 385
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/amap/api/mapcore2d/ay$e;->b:F

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(IIIZ)I
    .locals 2

    .prologue
    .line 553
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result p1

    .line 554
    :cond_0
    if-gtz p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result p2

    .line 555
    :cond_1
    sub-int v0, p2, p3

    invoke-virtual {p0, p3, v0}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    .line 556
    sub-int v1, p1, p3

    invoke-virtual {p0, v1, p3}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 558
    if-nez p4, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 559
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    .line 558
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v0

    .line 559
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 558
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 485
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 487
    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore2d/ay$e;->b:F

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 502
    return v0

    .line 486
    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore2d/ay$e;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    const/16 v1, 0x64

    .line 492
    invoke-virtual {p0, v3, v1}, Lcom/amap/api/mapcore2d/ay$e;->a(II)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/au;->a(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;)F

    move-result v0

    .line 495
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_3

    .line 496
    return v4

    .line 498
    :cond_3
    div-float v0, p1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 499
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore2d/ay$e;->a(IIIZ)I

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 398
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v1, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v1, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/au;->k:D

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/au;->b(Lcom/amap/api/mapcore2d/u;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v2

    .line 404
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->G()Lcom/amap/api/mapcore2d/ba;

    move-result-object v3

    .line 407
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/ay$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    .line 410
    iget-boolean v1, v3, Lcom/amap/api/mapcore2d/ba;->m:Z

    if-nez v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, v1, Lcom/amap/api/mapcore2d/au;->c:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 443
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget v1, v1, Lcom/amap/api/mapcore2d/au;->c:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float v2, v1, v0

    .line 445
    float-to-int v1, v3

    .line 446
    float-to-int v0, v2

    .line 447
    float-to-double v4, v3

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 450
    :cond_0
    float-to-double v2, v2

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 455
    if-nez p2, :cond_6

    .line 459
    :goto_1
    return-object v2

    :cond_2
    const/4 v1, 0x1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ak;

    .line 414
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :goto_2
    iget-boolean v1, v3, Lcom/amap/api/mapcore2d/ba;->l:Z

    if-nez v1, :cond_4

    .line 437
    :cond_3
    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v0

    .line 438
    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_2

    .line 420
    :cond_4
    if-eqz v0, :cond_3

    .line 422
    sget v0, Lcom/amap/api/mapcore2d/ba;->j:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/ba;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v0, v1

    .line 425
    sget v0, Lcom/amap/api/mapcore2d/ba;->j:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/ba;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v3, Lcom/amap/api/mapcore2d/ba;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    add-float v2, v0, v1

    .line 428
    float-to-int v1, v4

    .line 429
    float-to-int v0, v2

    .line 430
    float-to-double v4, v4

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5

    .line 431
    add-int/lit8 v1, v1, 0x1

    .line 433
    :cond_5
    float-to-double v2, v2

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_6
    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 457
    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public a(II)Lcom/amap/api/mapcore2d/u;
    .locals 7

    .prologue
    .line 472
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 473
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/au;->l:Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/au;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->k:D

    iget-object v6, p0, Lcom/amap/api/mapcore2d/ay$e;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/au;->o:Lcom/amap/api/mapcore2d/au$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/u;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/au$a;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public b(III)I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore2d/ay$e;->a(IIIZ)I

    move-result v0

    return v0
.end method
