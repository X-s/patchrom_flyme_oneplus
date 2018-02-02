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

.field private volatile m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;I)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 9
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "frameIndex"    # I

    .prologue
    const-class v8, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v8

    .line 146
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 4
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "frameIndex"    # I
    .param p2, "pictureFormat"    # I
    .param p3, "pictureSize"    # Landroid/util/Size;
    .param p4, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p5, "captureResult"    # Ljava/lang/Object;
    .param p6, "takenTime"    # J

    .prologue
    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v2

    .line 162
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 163
    .local v0, "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 167
    :goto_0
    iput-object p5, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 168
    iput-object p0, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 169
    iput p1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 170
    iput-object p4, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 171
    iput p2, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 172
    iput-object p3, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    .line 173
    iput-wide p6, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 174
    return-object v0

    .line 166
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .end local v0    # "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    invoke-direct {v0}, Lcom/oneplus/camera/CameraCaptureEventArgs;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    goto :goto_0

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

    .line 46
    return-void
.end method

.method public bridge synthetic clone()Lcom/oneplus/base/EventArgs;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    array-length v0, v0

    new-array v4, v0, [Lcom/oneplus/camera/media/ImagePlane;

    .line 62
    .local v4, "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v4

    if-ge v8, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/oneplus/camera/media/ImagePlane;->clone()Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v0

    aput-object v0, v4, v8

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 65
    .end local v4    # "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    .end local v8    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    iget v1, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    iget v2, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 66
    iget-object v5, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    if-eqz v5, :cond_1

    new-instance v3, Landroid/util/Size;

    iget-object v5, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 67
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    iget-wide v6, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J

    .line 65
    invoke-static/range {v0 .. v7}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public final getCaptureResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getHandle()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public final getPictureFormat()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    return v0
.end method

.method public final getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    return-object v0
.end method

.method public final getPictureSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public final getTakenTime()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J

    return-wide v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 184
    const-class v1, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 195
    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 182
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
