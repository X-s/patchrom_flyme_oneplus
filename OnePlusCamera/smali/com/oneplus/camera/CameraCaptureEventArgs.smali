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

.field private volatile m_Flags:I

.field private volatile m_FrameIndex:I

.field private volatile m_Handle:Lcom/oneplus/base/Handle;

.field private volatile m_IsFreeInstance:Z

.field private volatile m_PictureFormat:I

.field private volatile m_PictureId:Ljava/lang/String;

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
    .line 41
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;I)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 11
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "frameIndex"    # I

    .prologue
    const-class v10, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v10

    .line 172
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;II)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 12
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "frameIndex"    # I
    .param p3, "flags"    # I

    .prologue
    const-class v11, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v11

    .line 186
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v10, p3

    invoke-static/range {v1 .. v10}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;JI)Lcom/oneplus/camera/CameraCaptureEventArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 11
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "frameIndex"    # I
    .param p3, "pictureFormat"    # I
    .param p4, "pictureSize"    # Landroid/util/Size;
    .param p5, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p6, "captureResult"    # Ljava/lang/Object;
    .param p7, "takenTime"    # J

    .prologue
    const-class v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v0

    .line 204
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    :try_start_0
    invoke-static/range {v1 .. v10}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;JI)Lcom/oneplus/camera/CameraCaptureEventArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;JI)Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 3
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "frameIndex"    # I
    .param p3, "pictureFormat"    # I
    .param p4, "pictureSize"    # Landroid/util/Size;
    .param p5, "picturePlanes"    # [Lcom/oneplus/camera/media/ImagePlane;
    .param p6, "captureResult"    # Ljava/lang/Object;
    .param p7, "takenTime"    # J
    .param p9, "flags"    # I

    .prologue
    const-class v2, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v2

    .line 223
    :try_start_0
    sget-object v1, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraCaptureEventArgs;

    .line 224
    .local v0, "e":Lcom/oneplus/camera/CameraCaptureEventArgs;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 228
    :goto_0
    iput-object p6, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 229
    iput-object p0, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 230
    iput p9, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Flags:I

    .line 231
    iput p2, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 232
    iput-object p1, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureId:Ljava/lang/String;

    .line 233
    iput-object p5, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 234
    iput p3, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 235
    iput-object p4, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    .line 236
    iput-wide p7, v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 237
    return-object v0

    .line 227
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
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 48
    return-void
.end method

.method public bridge synthetic clone()Lcom/oneplus/base/EventArgs;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oneplus/camera/CameraCaptureEventArgs;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    iget-object v1, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    array-length v1, v1

    new-array v6, v1, [Lcom/oneplus/camera/media/ImagePlane;

    .line 64
    .local v6, "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/camera/media/ImagePlane;->clone()Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    aput-object v1, v6, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    .end local v6    # "imagePlanes":[Lcom/oneplus/camera/media/ImagePlane;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    iget-object v2, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureId:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    iget v4, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 68
    iget-object v7, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    if-eqz v7, :cond_1

    new-instance v5, Landroid/util/Size;

    iget-object v7, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 69
    :cond_1
    iget-object v7, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    iget-wide v8, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J

    .line 67
    invoke-static/range {v1 .. v9}, Lcom/oneplus/camera/CameraCaptureEventArgs;->obtain(Lcom/oneplus/base/Handle;Ljava/lang/String;IILandroid/util/Size;[Lcom/oneplus/camera/media/ImagePlane;Ljava/lang/Object;J)Lcom/oneplus/camera/CameraCaptureEventArgs;

    move-result-object v1

    return-object v1
.end method

.method public final getCaptureResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Flags:I

    return v0
.end method

.method public final getFrameIndex()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    return v0
.end method

.method public final getHandle()Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method public final getPictureFormat()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    return v0
.end method

.method public final getPictureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    return-object v0
.end method

.method public final getPictureSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public final getTakenTime()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_TakenTime:J

    return-wide v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 247
    const-class v1, Lcom/oneplus/camera/CameraCaptureEventArgs;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_CaptureResult:Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Handle:Lcom/oneplus/base/Handle;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_Flags:I

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_FrameIndex:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureId:Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PicturePlanes:[Lcom/oneplus/camera/media/ImagePlane;

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureFormat:I

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_PictureSize:Landroid/util/Size;

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraCaptureEventArgs;->m_IsFreeInstance:Z

    .line 260
    sget-object v0, Lcom/oneplus/camera/CameraCaptureEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 245
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
