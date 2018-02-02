.class public Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/watermark/OnlineWatermarkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final DELAY_UPDATE_WATERMARK:J = 0xc8L

.field private static final ENBALE_WATERMARK_BOUNDS:Z = true

.field private static final MSG_APPLY_PARAMETERS:I = 0x2715

.field private static final MSG_ENTER:I = 0x2711

.field private static final MSG_EXIT:I = 0x2712

.field private static final MSG_SET_WATERMARK:I = 0x271a

.field private static final MSG_UPDATE_WATERMARK:I = 0x271f

.field private static final PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SAVE_ARGB_WATERMARKS:Z = false

.field private static final SAVE_NV21_WATERMARKS:Z = true

.field private static final SAVE_PNG_WATERMARKS:Z = false

.field private static final SUFFIX_NV21A:Ljava/lang/String; = "_nv21a"

.field private static final WATERMARK_FILE_FOR_ROTATED_PICTURE_TEMPLATE:Ljava/lang/String; = "watermark_for_rotated_picture_v%1$d_%2$d_%3$d_%4$d"

.field private static final WATERMARK_FILE_TEMPLATE:Ljava/lang/String; = "watermark_v%1$d_%2$d_%3$d_%4$d"

.field private static final WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

.field private static final WATERMARK_VERSION:I = 0x1


# instance fields
.field private final m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_CachePath:Ljava/io/File;

.field private m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

.field private m_DeleteOldFiles:Z

.field private m_IsEnter:Z

.field private m_IsSupported:Ljava/lang/Boolean;

.field private final m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

.field private m_SloganAuthorText:Ljava/lang/String;

.field private m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

.field private m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

.field private m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

.field private m_WatermarkBoundsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

.field private m_WatermarkFilePathsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCaptureStarting()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermarkDelay(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    const/4 v1, 0x1

    .line 257
    const-string/jumbo v0, "Online Watermark Controller"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 65
    iput-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    .line 71
    sget-object v0, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 87
    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 255
    return-void
.end method

.method private applyParameters()V
    .locals 6

    .prologue
    .line 265
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    return-void

    .line 267
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v1, :cond_1

    .line 268
    return-void

    .line 271
    :cond_1
    const/16 v1, 0x2715

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 274
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    sget-object v2, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 276
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "applyParameters() - Enabled : "

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, ", files : "

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, ", bounds : "

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, ", file for rotated picture : "

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, ", bounds for rotated picture : "

    const/4 v5, 0x7

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    .line 280
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParametersForRotatedPicture(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 262
    return-void

    .line 274
    .end local v0    # "isEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_0
.end method

.method private applyParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "filePaths":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Ljava/lang/String;>;"
    .local p2, "boundsTable":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 289
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 294
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method private applyParametersForRotatedPicture(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 303
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_BOUNDS_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 308
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_FILE_PATH_FOR_ROTATED_PICTURE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method private deleteWatermarkFiles()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    iget-boolean v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v2, :cond_0

    .line 318
    iput-boolean v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    .line 319
    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isCachePathAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteWatermarkFiles() - Failed to delete files, cache path is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iput-boolean v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    .line 327
    return-void

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 334
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 336
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 338
    .local v0, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteWatermarkFiles() - File : "

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    .line 313
    return-void
.end method

.method private isCachePathAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 455
    return v2

    .line 458
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    .line 459
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 460
    return v2

    .line 462
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 472
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 473
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 477
    :cond_0
    if-eqz p2, :cond_1

    .line 480
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    .line 483
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 487
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 490
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    .line 467
    :cond_1
    return-void
.end method

.method private onCaptureStarting()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    return-void

    .line 502
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    if-nez v1, :cond_1

    .line 506
    return-void

    .line 509
    :cond_1
    sget-object v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    iget-object v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_2

    monitor-exit v2

    .line 512
    return-void

    .line 517
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureStarting() - Wait for watermark processing"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    iget-object v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v3, :cond_2

    monitor-exit v2

    .line 529
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    .line 497
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 521
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private updateWatermark()V
    .locals 34

    .prologue
    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_0

    .line 615
    return-void

    .line 616
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 617
    return-void

    .line 619
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isCachePathAvailable()Z

    move-result v29

    if-nez v29, :cond_2

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "updateWatermark() - Failed to update files, cache path is null."

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void

    .line 625
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "updateWatermark() - Start, watermark : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v31, v0

    const-string/jumbo v32, ", Author text : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v29 .. v33}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v29, v0

    sget-object v30, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 630
    sget-object v29, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v30, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    .line 631
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParametersForRotatedPicture(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 632
    return-void

    .line 636
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v7

    .line 637
    .local v7, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v29, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera;

    .line 638
    .local v6, "camera":Lcom/oneplus/camera/Camera;
    if-nez v6, :cond_4

    .line 639
    return-void

    .line 640
    :cond_4
    sget-object v29, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/base/Rotation;

    .line 643
    .local v19, "rotation":Lcom/oneplus/base/Rotation;
    sget-object v29, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Size;

    .line 644
    .local v14, "normalPictureSize":Landroid/util/Size;
    sget-object v29, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 645
    .local v5, "alternativePictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v16, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v18, "rotatedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 654
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Size;

    .line 655
    .local v21, "size":Landroid/util/Size;
    new-instance v29, Landroid/util/Size;

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v30

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v31

    invoke-direct/range {v29 .. v31}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 656
    .end local v21    # "size":Landroid/util/Size;
    :cond_5
    sget-object v29, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 657
    const/16 v20, 0x10e

    .line 672
    .local v20, "rotationDegree":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->clear()V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->clear()V

    .line 676
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v13, "newWatermarkInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_b

    .line 680
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    .line 681
    .local v15, "pictureSize":Landroid/util/Size;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Size;

    .line 686
    .local v17, "rotatedPictureSize":Landroid/util/Size;
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 687
    .local v25, "watermarkBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->calculateWatermarkBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 688
    invoke-static {}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v29

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    .line 711
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "watermark_v%1$d_%2$d_%3$d_%4$d"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x0

    aput-object v32, v31, v33

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x1

    aput-object v32, v31, v33

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x2

    aput-object v32, v31, v33

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x3

    aput-object v32, v31, v33

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 716
    .local v10, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "_nv21a"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v8, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "_nv21a"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 677
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 659
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "newWatermarkInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;>;"
    .end local v15    # "pictureSize":Landroid/util/Size;
    .end local v17    # "rotatedPictureSize":Landroid/util/Size;
    .end local v20    # "rotationDegree":I
    .end local v25    # "watermarkBounds":Landroid/graphics/Rect;
    :cond_6
    const/16 v20, 0x5a

    .restart local v20    # "rotationDegree":I
    goto/16 :goto_1

    .line 663
    .end local v20    # "rotationDegree":I
    .end local v22    # "size$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "size$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Size;

    .line 664
    .restart local v21    # "size":Landroid/util/Size;
    new-instance v29, Landroid/util/Size;

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v31

    invoke-direct/range {v29 .. v31}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 665
    .end local v21    # "size":Landroid/util/Size;
    :cond_8
    sget-object v29, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 666
    const/16 v20, 0x0

    .restart local v20    # "rotationDegree":I
    goto/16 :goto_1

    .line 668
    .end local v20    # "rotationDegree":I
    :cond_9
    const/16 v20, 0xb4

    .restart local v20    # "rotationDegree":I
    goto/16 :goto_1

    .line 695
    .restart local v12    # "i":I
    .restart local v13    # "newWatermarkInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;>;"
    .restart local v15    # "pictureSize":Landroid/util/Size;
    .restart local v17    # "rotatedPictureSize":Landroid/util/Size;
    .restart local v25    # "watermarkBounds":Landroid/graphics/Rect;
    :pswitch_1
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 700
    :pswitch_2
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v32

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 705
    :pswitch_3
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v29

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 722
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    .line 723
    const/16 v24, 0x0

    .line 725
    .local v24, "watermarkBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->createWatermarkBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 730
    .local v24, "watermarkBitmap":Landroid/graphics/Bitmap;
    new-instance v27, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V

    .line 731
    .local v27, "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 732
    move-object/from16 v0, v27

    iput-object v10, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->filePath:Ljava/lang/String;

    .line 733
    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->pictureSize:Landroid/util/Size;

    .line 734
    move/from16 v0, v20

    move-object/from16 v1, v27

    iput v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->rotateDegree:I

    .line 735
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 739
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v15    # "pictureSize":Landroid/util/Size;
    .end local v17    # "rotatedPictureSize":Landroid/util/Size;
    .end local v24    # "watermarkBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "watermarkBounds":Landroid/graphics/Rect;
    .end local v27    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    :cond_b
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Size;

    .line 740
    .restart local v17    # "rotatedPictureSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsForRotatedPicture:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v29 .. v32}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->calculateWatermarkBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 741
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "watermark_for_rotated_picture_v%1$d_%2$d_%3$d_%4$d"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x0

    aput-object v32, v31, v33

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x1

    aput-object v32, v31, v33

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x2

    aput-object v32, v31, v33

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x3

    aput-object v32, v31, v33

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 742
    .local v11, "filePathForRotatedPicture":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "_nv21a"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    .line 743
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathForRotatedPicture:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .local v9, "fileForRotatedPicture":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_c

    .line 747
    const/16 v26, 0x0

    .line 749
    .local v26, "watermarkForRotatedPicture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->createWatermarkBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 754
    .local v26, "watermarkForRotatedPicture":Landroid/graphics/Bitmap;
    new-instance v27, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V

    .line 755
    .restart local v27    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 756
    move-object/from16 v0, v27

    iput-object v11, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->filePath:Ljava/lang/String;

    .line 757
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->pictureSize:Landroid/util/Size;

    .line 758
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->rotateDegree:I

    .line 759
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v26    # "watermarkForRotatedPicture":Landroid/graphics/Bitmap;
    .end local v27    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    :cond_c
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_d

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "updateWatermark() - No new watermark info, end"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void

    .line 771
    :cond_d
    new-instance v23, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V

    .line 772
    .local v23, "task":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "watermarkInfo$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    .line 773
    .restart local v27    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->addWatermarkInfo(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V

    goto :goto_6

    .line 774
    .end local v27    # "watermarkInfo":Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    :cond_e
    new-instance v29, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->setEndAction(Ljava/lang/Runnable;)V

    .line 790
    sget-object v29, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->cancel()V

    .line 795
    :cond_f
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "updateWatermark() - End"

    invoke-static/range {v29 .. v30}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateWatermarkDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0x271f

    .line 804
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    invoke-static {p0, v1, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 802
    :cond_0
    return-void
.end method


# virtual methods
.method public enter(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-eqz v0, :cond_0

    .line 356
    return v3

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enter() - Flags : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    iput-boolean v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    .line 364
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->deleteWatermarkFiles()V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    .line 374
    :goto_0
    return v3

    .line 371
    :cond_2
    const/16 v0, 0x2711

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public exit(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exit() - Flags : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    .line 394
    iput-boolean v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    .line 380
    :goto_0
    return-void

    .line 397
    :cond_1
    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    return-object v0

    .line 408
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 416
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 445
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 414
    :goto_0
    return-void

    .line 420
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    goto :goto_0

    .line 425
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->enter(I)Z

    goto :goto_0

    .line 430
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->exit(I)V

    goto :goto_0

    .line 435
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 436
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/camera/watermark/Watermark;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v0    # "objs":[Ljava/lang/Object;
    :sswitch_4
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    goto :goto_0

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2715 -> :sswitch_0
        0x271a -> :sswitch_3
        0x271f -> :sswitch_4
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 538
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 541
    new-instance v1, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    .line 544
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 545
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$3;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 553
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 561
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$5;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 572
    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 535
    return-void
.end method

.method public setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V
    .locals 3
    .param p1, "watermark"    # Lcom/oneplus/camera/watermark/Watermark;
    .param p2, "authorText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 579
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    .line 587
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iput-object p2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    .line 590
    iput-boolean v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    .line 594
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-eqz v0, :cond_2

    .line 597
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    if-eqz v0, :cond_1

    .line 598
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->deleteWatermarkFiles()V

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    .line 577
    :cond_2
    :goto_0
    return-void

    .line 605
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const/16 v1, 0x271a

    invoke-static {p0, v1, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method
