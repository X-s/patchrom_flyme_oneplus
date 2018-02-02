.class Lcom/amap/api/mapcore2d/as;
.super Landroid/view/View;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/as$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field b:Lcom/amap/api/mapcore2d/as$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/ai;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/aa;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/ad;

.field private i:Lcom/amap/api/mapcore2d/aa;

.field private j:Lcom/amap/api/mapcore2d/aa;

.field private k:F

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/amap/api/mapcore2d/as;->e:I

    .line 51
    new-instance v0, Lcom/amap/api/mapcore2d/as$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/as$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->b:Lcom/amap/api/mapcore2d/as$a;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->f:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/amap/api/mapcore2d/as$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/as$1;-><init>(Lcom/amap/api/mapcore2d/as;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->g:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/amap/api/mapcore2d/as;->k:F

    .line 267
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    iput-object p3, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    .line 103
    return-void
.end method

.method private a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/ai;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/mapcore2d/ai;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ad;",
            ")",
            "Lcom/amap/api/mapcore2d/ai;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 359
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    return-object v7

    .line 360
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ai;

    .line 361
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ai;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 362
    if-eqz v4, :cond_0

    .line 365
    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 366
    iget v1, p3, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/as;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/aa;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/mapcore2d/aa;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ad;",
            ")",
            "Lcom/amap/api/mapcore2d/aa;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    return-object v7

    .line 383
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 384
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 385
    if-eqz v4, :cond_0

    .line 388
    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 389
    iget v1, p3, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/as;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/amap/api/mapcore2d/as;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/as;->e:I

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    const-string/jumbo v2, "redrawInfoWindow"

    .line 406
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    return-void

    .line 406
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 407
    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aa;->q()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 416
    :goto_1
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->b()Landroid/graphics/Rect;

    move-result-object v1

    .line 417
    new-instance v4, Lcom/amap/api/mapcore2d/ad;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->n()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v0, v1}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/as;->h:Lcom/amap/api/mapcore2d/ad;

    .line 419
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->u()V

    goto :goto_0

    .line 410
    :cond_2
    return-void

    .line 415
    :catch_0
    move-exception v1

    const-string/jumbo v4, "MapOverlayImageView"

    .line 414
    invoke-static {v1, v4, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/aa;
    .locals 5

    .prologue
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 436
    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 446
    return-object v0

    .line 437
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 438
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 440
    if-nez v2, :cond_1

    .line 436
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 441
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 112
    return-object v3

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 108
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 109
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Lcom/amap/api/mapcore2d/b;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/as;->i()V

    .line 287
    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->c()I

    move-result v3

    iget-object v5, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    .line 288
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->d()I

    move-result v5

    invoke-direct {v4, v0, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    new-instance v5, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 292
    invoke-direct {p0, v6, v4, v5}, Lcom/amap/api/mapcore2d/as;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/aa;

    move-result-object v2

    .line 293
    invoke-direct {p0, v7, v4, v5}, Lcom/amap/api/mapcore2d/as;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/ai;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 294
    :goto_0
    if-eqz v3, :cond_2

    .line 295
    :cond_0
    if-eqz v3, :cond_3

    .line 298
    if-eqz v2, :cond_4

    .line 305
    invoke-interface {v3}, Lcom/amap/api/mapcore2d/aa;->r()F

    move-result v0

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result v8

    cmpg-float v0, v0, v8

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    .line 306
    invoke-interface {v3}, Lcom/amap/api/mapcore2d/aa;->r()F

    move-result v0

    .line 307
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result v8

    cmpl-float v0, v0, v8

    if-nez v0, :cond_1

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/aa;->v()I

    move-result v0

    .line 308
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ai;->v()I

    move-result v8

    if-lt v0, v8, :cond_6

    .line 312
    :cond_1
    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/ai;->a(Landroid/graphics/Canvas;)V

    .line 313
    invoke-direct {p0, v7, v4, v5}, Lcom/amap/api/mapcore2d/as;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 294
    :cond_2
    if-nez v2, :cond_0

    monitor-exit p0

    .line 354
    return-void

    .line 296
    :cond_3
    :try_start_1
    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/ai;->a(Landroid/graphics/Canvas;)V

    .line 297
    invoke-direct {p0, v7, v4, v5}, Lcom/amap/api/mapcore2d/as;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/ai;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v3, p1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/w;)V

    .line 300
    invoke-direct {p0, v6, v4, v5}, Lcom/amap/api/mapcore2d/as;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/aa;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 305
    goto :goto_1

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v3, p1, v0}, Lcom/amap/api/mapcore2d/aa;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/w;)V

    .line 310
    invoke-direct {p0, v6, v4, v5}, Lcom/amap/api/mapcore2d/as;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ad;)Lcom/amap/api/mapcore2d/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/aa;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "addMarker"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 152
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/as;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/aa;->b(I)V

    .line 153
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "MapOverlayImageView"

    .line 157
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/as;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/ai;->b(I)V

    .line 174
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 176
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/ai;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 181
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 473
    :goto_0
    if-gez v3, :cond_0

    move v0, v1

    :goto_1
    monitor-exit p0

    .line 485
    return v0

    .line 474
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 475
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->b()Landroid/graphics/Rect;

    move-result-object v4

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v2, v5}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    .line 477
    if-nez v2, :cond_1

    .line 473
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 479
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore2d/ad;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->n()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/as;->h:Lcom/amap/api/mapcore2d/ad;

    .line 481
    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 482
    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/aa;)Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 184
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->e(Lcom/amap/api/mapcore2d/aa;)V

    .line 185
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 187
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "clear"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :goto_1
    monitor-exit p0

    .line 141
    return-void

    .line 128
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "MapOverlayImageView"

    .line 139
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_1
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 129
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->l()V

    goto :goto_2

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized c(Lcom/amap/api/mapcore2d/aa;)V
    .locals 2

    .prologue
    const/high16 v1, 0x4f000000

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    if-eq v0, p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    if-nez v0, :cond_2

    .line 208
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->r()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/as;->k:F

    .line 209
    iput-object p1, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    const/high16 v0, 0x4f000000

    .line 212
    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/aa;->b(F)V

    .line 214
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 224
    return-void

    :cond_1
    monitor-exit p0

    .line 198
    return-void

    .line 203
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->r()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->j:Lcom/amap/api/mapcore2d/aa;

    iget v1, p0, Lcom/amap/api/mapcore2d/as;->k:F

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/aa;->b(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method

.method public d(Lcom/amap/api/mapcore2d/aa;)V
    .locals 5

    .prologue
    const-string/jumbo v1, "showInfoWindow"

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->h:Lcom/amap/api/mapcore2d/ad;

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 233
    new-instance v2, Lcom/amap/api/mapcore2d/ad;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aa;->n()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v0}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/as;->h:Lcom/amap/api/mapcore2d/ad;

    .line 234
    iput-object p1, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->e()Lcom/amap/api/mapcore2d/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/as;->h:Lcom/amap/api/mapcore2d/ad;

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapOverlayImageView"

    .line 238
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public e()Lcom/amap/api/mapcore2d/aa;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->i:Lcom/amap/api/mapcore2d/aa;

    return-object v0
.end method

.method public e(Lcom/amap/api/mapcore2d/aa;)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/as;->f(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->t()V

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const-string/jumbo v1, "destory"

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 461
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/as;->c()V

    .line 466
    :goto_1
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapOverlayImageView"

    .line 463
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public f(Lcom/amap/api/mapcore2d/aa;)Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 489
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 490
    new-instance v8, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->c()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    .line 491
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->d()I

    move-result v3

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 493
    new-instance v6, Lcom/amap/api/mapcore2d/ad;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ad;-><init>()V

    .line 494
    iget-object v0, p0, Lcom/amap/api/mapcore2d/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit p0

    .line 513
    return-object v7

    .line 494
    :cond_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aa;

    .line 495
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 496
    if-eqz v4, :cond_1

    .line 499
    iget-object v1, p0, Lcom/amap/api/mapcore2d/as;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ad;)V

    .line 500
    iget v1, v6, Lcom/amap/api/mapcore2d/ad;->a:I

    iget v2, v6, Lcom/amap/api/mapcore2d/ad;->b:I

    invoke-virtual {p0, v8, v1, v2}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/aa;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
