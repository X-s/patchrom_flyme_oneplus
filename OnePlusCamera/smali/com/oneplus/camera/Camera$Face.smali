.class public Lcom/oneplus/camera/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x20


# instance fields
.field private final m_Bounds:Landroid/graphics/RectF;

.field private volatile m_Id:I

.field private volatile m_IsFreeInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    .line 394
    return-void
.end method

.method public static declared-synchronized obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/oneplus/camera/Camera$Face;
    .locals 14
    .param p0, "cropRegion"    # Landroid/graphics/Rect;
    .param p1, "data"    # Landroid/hardware/camera2/params/Face;

    .prologue
    .line 422
    const-class v9, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$Face;

    .line 423
    .local v4, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v4, :cond_0

    .line 424
    new-instance v4, Lcom/oneplus/camera/Camera$Face;

    .end local v4    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v4}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 425
    .restart local v4    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 426
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v5, v8

    .line 427
    .local v5, "left":F
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v7, v8

    .line 428
    .local v7, "top":F
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v6, v8

    .line 429
    .local v6, "right":F
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v0, v8

    .line 430
    .local v0, "bottom":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v3, v8

    .line 431
    .local v3, "cropWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v2, v8

    .line 432
    .local v2, "cropHeight":F
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 433
    iget-object v8, v4, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    div-float v10, v5, v3

    div-float v11, v7, v2

    div-float v12, v6, v3

    div-float v13, v0, v2

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 434
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    iput v8, v4, Lcom/oneplus/camera/Camera$Face;->m_Id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit v9

    return-object v4

    .line 422
    .end local v0    # "bottom":F
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "cropHeight":F
    .end local v3    # "cropWidth":F
    .end local v4    # "face":Lcom/oneplus/camera/Camera$Face;
    .end local v5    # "left":F
    .end local v6    # "right":F
    .end local v7    # "top":F
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized obtain(Landroid/hardware/Camera$Face;)Lcom/oneplus/camera/Camera$Face;
    .locals 9
    .param p0, "data"    # Landroid/hardware/Camera$Face;

    .prologue
    const/high16 v8, 0x44fa0000    # 2000.0f

    .line 446
    const-class v7, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    .line 447
    .local v2, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v2, :cond_0

    .line 448
    new-instance v2, Lcom/oneplus/camera/Camera$Face;

    .end local v2    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v2}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 449
    .restart local v2    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 450
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 451
    .local v3, "left":F
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v5, v6, v8

    .line 452
    .local v5, "top":F
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v4, v6, v8

    .line 453
    .local v4, "right":F
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 454
    .local v0, "bottom":F
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 455
    iget-object v6, v2, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 456
    iget v6, p0, Landroid/hardware/Camera$Face;->id:I

    iput v6, v2, Lcom/oneplus/camera/Camera$Face;->m_Id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit v7

    return-object v2

    .line 446
    .end local v0    # "bottom":F
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "face":Lcom/oneplus/camera/Camera$Face;
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/camera/Camera$Face;)Lcom/oneplus/camera/Camera$Face;
    .locals 4
    .param p0, "data"    # Lcom/oneplus/camera/Camera$Face;

    .prologue
    .line 467
    const-class v2, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$Face;

    .line 468
    .local v0, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/oneplus/camera/Camera$Face;

    .end local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v0}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 470
    .restart local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 471
    iget-object v1, v0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 472
    iget v1, p0, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    iput v1, v0, Lcom/oneplus/camera/Camera$Face;->m_Id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit v2

    return-object v0

    .line 467
    .end local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final getBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 482
    const-class v1, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 487
    sget-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 488
    sget-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
