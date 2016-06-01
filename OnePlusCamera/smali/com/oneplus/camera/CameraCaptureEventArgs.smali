.class public Lcom/oneplus/camera/CameraCaptureEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CameraCaptureEventArgs.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private volatile m_CaptureResult:Ljava/lang/Object;

.field private volatile m_FrameIndex:I

.field private volatile m_Handle:Lcom/oneplus/base/Handle;

.field private volatile m_IsFreeInstance:Z

.field private volatile m_PictureFormat:I

.field private volatile m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

.field private volatile m_PictureSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 7
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "frameIndex"    # I

    .prologue
    .line 118
    const-class v6, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;)Lcom/oneplus/camera/CameraCaptureEventArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 3
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "frameIndex"    # I
    .param p2, "pictureFormat"    # I
    .param p3, "pictureSize"    # Landroid/util/Size;
    .param p4, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p5, "captureResult"    # Ljava/lang/Object;

    .prologue
    .line 133
    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 134
    .local v0, "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 138
    :goto_0
    iput-object p5, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 139
    iput-object p0, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 140
    iput p1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 141
    iput-object p4, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 142
    iput p2, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 143
    iput-object p3, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v2

    return-object v0

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local v0    # "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    invoke-direct {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    goto :goto_0

    .line 133
    .end local v0    # "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final clearImagePlane()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 49
    return-void
.end method

.method public final getCaptureResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getHandle()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public final getPictureFormat()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    return v0
.end method

.method public final getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    return-object v0
.end method

.method public final getPictureSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 154
    const-class v1, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 165
    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
