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

.field private static m_IsSmileCaptureSupported:Z


# instance fields
.field private final m_Bounds:Landroid/graphics/RectF;

.field private volatile m_Id:I

.field private volatile m_IsFreeInstance:Z

.field private volatile m_IsSmiling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    .line 626
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/camera/Camera$Face;->m_IsSmileCaptureSupported:Z

    .line 615
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    .line 629
    return-void
.end method

.method private static declared-synchronized getSmileValue(Ljava/lang/Object;)Z
    .locals 9
    .param p0, "face"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const-class v6, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v6

    .line 726
    const/4 v2, 0x0

    .line 727
    .local v2, "isSmiling":Z
    :try_start_0
    sget-boolean v5, Lcom/oneplus/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 730
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 731
    .local v3, "smileFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getIsSmile"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 732
    .local v1, "getIsSmileMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 733
    .local v4, "smileIntValue":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v2, 0x1

    .line 734
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/oneplus/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .end local v3    # "smileFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "smileIntValue":Ljava/lang/Integer;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 741
    return v2

    .line 733
    .restart local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "smileFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "smileIntValue":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 735
    .end local v1    # "getIsSmileMethod":Ljava/lang/reflect/Method;
    .end local v3    # "smileFace":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "smileIntValue":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "Face"

    const-string/jumbo v7, "getSmileValue() - failed to get smile status"

    invoke-static {v5, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    const/4 v5, 0x0

    sput-boolean v5, Lcom/oneplus/camera/Camera$Face;->m_IsSmileCaptureSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized obtain(Landroid/graphics/Rect;Landroid/hardware/camera2/params/Face;)Lcom/oneplus/camera/Camera$Face;
    .locals 14
    .param p0, "cropRegion"    # Landroid/graphics/Rect;
    .param p1, "data"    # Landroid/hardware/camera2/params/Face;

    .prologue
    const-class v9, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v9

    .line 667
    :try_start_0
    sget-object v8, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$Face;

    .line 668
    .local v4, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v4, :cond_0

    .line 669
    new-instance v4, Lcom/oneplus/camera/Camera$Face;

    .end local v4    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v4}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 670
    .restart local v4    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 671
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v5, v8

    .line 672
    .local v5, "left":F
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v7, v8

    .line 673
    .local v7, "top":F
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    int-to-float v6, v8

    .line 674
    .local v6, "right":F
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    int-to-float v0, v8

    .line 675
    .local v0, "bottom":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v3, v8

    .line 676
    .local v3, "cropWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v2, v8

    .line 677
    .local v2, "cropHeight":F
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 678
    iget-object v8, v4, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    div-float v10, v5, v3

    div-float v11, v7, v2

    div-float v12, v6, v3

    div-float v13, v0, v2

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 679
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v8

    iput v8, v4, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    .line 680
    invoke-static {p1}, Lcom/oneplus/camera/Camera$Face;->getSmileValue(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/oneplus/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 681
    return-object v4

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

    const-class v7, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v7

    .line 692
    :try_start_0
    sget-object v6, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    .line 693
    .local v2, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v2, :cond_0

    .line 694
    new-instance v2, Lcom/oneplus/camera/Camera$Face;

    .end local v2    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v2}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 695
    .restart local v2    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 696
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 697
    .local v3, "left":F
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v5, v6, v8

    .line 698
    .local v5, "top":F
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v4, v6, v8

    .line 699
    .local v4, "right":F
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 700
    .local v0, "bottom":F
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 701
    iget-object v6, v2, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 702
    iget v6, p0, Landroid/hardware/Camera$Face;->id:I

    iput v6, v2, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    .line 703
    invoke-static {p0}, Lcom/oneplus/camera/Camera$Face;->getSmileValue(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/oneplus/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 704
    return-object v2

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
    const-class v2, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v2

    .line 714
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$Face;

    .line 715
    .local v0, "face":Lcom/oneplus/camera/Camera$Face;
    if-nez v0, :cond_0

    .line 716
    new-instance v0, Lcom/oneplus/camera/Camera$Face;

    .end local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    invoke-direct {v0}, Lcom/oneplus/camera/Camera$Face;-><init>()V

    .line 717
    .restart local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 718
    iget-object v1, v0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 719
    iget v1, p0, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    iput v1, v0, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    .line 720
    iget-boolean v1, p0, Lcom/oneplus/camera/Camera$Face;->m_IsSmiling:Z

    iput-boolean v1, v0, Lcom/oneplus/camera/Camera$Face;->m_IsSmiling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 721
    return-object v0

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
    .line 638
    iget-object v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/oneplus/camera/Camera$Face;->m_Id:I

    return v0
.end method

.method public final isSmiling()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/oneplus/camera/Camera$Face;->m_IsSmiling:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 750
    const-class v1, Lcom/oneplus/camera/Camera$Face;

    monitor-enter v1

    .line 752
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/Camera$Face;->m_IsFreeInstance:Z

    .line 755
    sget-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 756
    sget-object v0, Lcom/oneplus/camera/Camera$Face;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 748
    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
