.class public Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
.super Ljava/lang/Object;
.source "CameraPreviewOverlay.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CameraPreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderingParams"
.end annotation


# static fields
.field private static final POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x2


# instance fields
.field private volatile m_IsFreeInstance:Z

.field private volatile m_PreviewBounds:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Landroid/graphics/RectF;)Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    .locals 3
    .param p0, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 56
    const-class v2, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .line 57
    .local v0, "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z

    .line 61
    :goto_0
    iput-object p0, v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v2

    return-object v0

    .line 60
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .end local v0    # "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    invoke-direct {v0}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    goto :goto_0

    .line 56
    .end local v0    # "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getPreviewBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z

    if-eqz v0, :cond_0

    .line 74
    monitor-exit v1

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_PreviewBounds:Landroid/graphics/RectF;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->m_IsFreeInstance:Z

    .line 77
    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 78
    sget-object v0, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 79
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
