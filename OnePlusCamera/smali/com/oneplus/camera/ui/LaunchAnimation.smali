.class final Lcom/oneplus/camera/ui/LaunchAnimation;
.super Lcom/oneplus/camera/CameraComponent;
.source "LaunchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/LaunchAnimation$1;,
        Lcom/oneplus/camera/ui/LaunchAnimation$2;,
        Lcom/oneplus/camera/ui/LaunchAnimation$3;,
        Lcom/oneplus/camera/ui/LaunchAnimation$4;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final DURATION_CREATE_PREVIEW_THUMB:J = 0x2710L

.field private static final DURATION_FADE_OUT_ANIMATION:J = 0x12cL

.field private static final MSG_CREATE_PREVIEW_THUMB:I = 0x2711

.field private static final MSG_PREVIEW_THUMB_CREATED:I = 0x2710

.field private static final RADIUS_RESIZED_PREVIEW_FRAME_BLUR:I = 0x14

.field private static final RATIO_RESIZED_PREVIEW_FRAME:F = 0.1f

.field private static final m_BackgroundExecutor:Ljava/util/concurrent/Executor;

.field private static m_CachedPreviewThumbnailImage:Landroid/graphics/Bitmap;

.field private static volatile m_PreviewFrameCacheFile:Ljava/io/File;


# instance fields
.field private m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

.field private m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

.field private final m_CameraPreviewReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_Container:Landroid/view/View;

.field private final m_GetPreviewFrameRunnable:Ljava/lang/Runnable;

.field private m_IsVisible:Z

.field private final m_LoadPreviewThumbRunnable:Ljava/lang/Runnable;

.field private m_PreviewFrameView:Landroid/widget/ImageView;

.field private m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

.field private m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

.field private m_RenderScript:Landroid/renderscript/RenderScript;

.field private m_RenderScriptHandle:Lcom/oneplus/base/Handle;

.field private m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

.field private m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

.field private final m_SetupRunnable:Ljava/lang/Runnable;

.field private m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/LaunchAnimation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/LaunchAnimation;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_CameraPreviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/LaunchAnimation;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/PhotoCaptureState;->values()[Lcom/oneplus/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/VideoCaptureState;->values()[Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->loadPreviewThumbnail()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->onCameraPreviewReceived()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/LaunchAnimation;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LaunchAnimation;->onPreviewBoundsChanged(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/LaunchAnimation;Lcom/oneplus/camera/Camera;[BII)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "yuv"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/LaunchAnimation;->processPreviewFrame(Lcom/oneplus/camera/Camera;[BII)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->releaseRenderScript()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->resetAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->setupPreviewFrameCache()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/LaunchAnimation;Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LaunchAnimation;->setupUI(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 154
    const-string/jumbo v0, "Launch animation"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 71
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_IsVisible:Z

    .line 83
    new-instance v0, Lcom/oneplus/camera/ui/LaunchAnimation$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$1;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_GetPreviewFrameRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/oneplus/camera/ui/LaunchAnimation$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$2;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_LoadPreviewThumbRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/oneplus/camera/ui/LaunchAnimation$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$3;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_SetupRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/oneplus/camera/ui/LaunchAnimation$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$4;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_CameraPreviewReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 152
    return-void
.end method

.method private createPreviewThumbnailImage()V
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 163
    :cond_0
    const/16 v1, 0x2711

    const/4 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-static {p0, v1, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 165
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/LaunchAnimation;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_GetPreviewFrameRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 159
    return-void

    .line 168
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/ui/LaunchAnimation;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 174
    return-void

    .line 178
    :pswitch_2
    invoke-static {}, Lcom/oneplus/camera/ui/LaunchAnimation;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    .line 184
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 178
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadPreviewThumbnail()V
    .locals 5

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 220
    sget-object v3, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameCacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 221
    .local v2, "thumb":Landroid/graphics/Bitmap;
    const/16 v3, 0x2710

    invoke-static {p0, v3, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "loadPreviewThumbnail() - Fail to load preview thumbnail"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onCameraPreviewReceived()V
    .locals 4

    .prologue
    .line 234
    const-wide/16 v0, 0x1f4

    const/16 v2, 0x2711

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 237
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_IsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_IsVisible:Z

    .line 242
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/LaunchAnimation$5;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$5;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 231
    return-void
.end method

.method private onPreviewBoundsChanged(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 351
    :cond_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 353
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 354
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 355
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 357
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 358
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    return-void
.end method

.method private onPreviewThumbnailImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    return-void

    .line 367
    :cond_0
    sput-object p1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_CachedPreviewThumbnailImage:Landroid/graphics/Bitmap;

    .line 368
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    :cond_1
    return-void
.end method

.method private processPreviewFrame(Lcom/oneplus/camera/Camera;[BII)V
    .locals 16
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "yuv"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 379
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame() - Process [start]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-eqz v1, :cond_13

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame() - RenderScript created"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-nez v1, :cond_1

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    if-nez v1, :cond_2

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v1, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 407
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int v2, p3, p4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 410
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    if-nez v1, :cond_5

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    mul-int v3, p3, p4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 417
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    move/from16 v0, p4

    if-eq v1, v0, :cond_7

    .line 419
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 420
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 422
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-nez v1, :cond_8

    .line 424
    new-instance v8, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 425
    .local v8, "builder":Landroid/renderscript/Type$Builder;
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 429
    .end local v8    # "builder":Landroid/renderscript/Type$Builder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 433
    move/from16 v0, p3

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 434
    .local v11, "resizedWidth":I
    move/from16 v0, p4

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 435
    .local v10, "resizedHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v10, :cond_a

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 438
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 440
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-nez v1, :cond_b

    .line 442
    new-instance v8, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 443
    .restart local v8    # "builder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v11}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 447
    .end local v8    # "builder":Landroid/renderscript/Type$Builder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v10, :cond_e

    .line 452
    :cond_c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_d

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 455
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 457
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame() - Process [end]"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    const/4 v12, 0x0

    .line 470
    .local v12, "rotatedThumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 472
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 473
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 474
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_f

    .line 475
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 476
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 477
    .local v12, "rotatedThumb":Landroid/graphics/Bitmap;
    const/16 v1, 0x2710

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 481
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "rotatedThumb":Landroid/graphics/Bitmap;
    :cond_10
    if-eqz v12, :cond_12

    .line 483
    const/4 v2, 0x0

    const/4 v13, 0x0

    .local v13, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameCacheFile:Ljava/io/File;

    invoke-direct {v14, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .local v14, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v12, v1, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 490
    if-eqz v14, :cond_11

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_11
    :goto_0
    if-eqz v2, :cond_12

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 488
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Throwable;
    move-object v13, v14

    .line 489
    .end local v14    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame()"

    invoke-static {v1, v2, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_12
    return-void

    .line 390
    .end local v10    # "resizedHeight":I
    .end local v11    # "resizedWidth":I
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame() - Fail to create RenderScript"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 391
    return-void

    .line 463
    :catch_1
    move-exception v9

    .line 464
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPreviewFrame() - Fail to create preview thumbnail"

    invoke-static {v1, v2, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    return-void

    .line 490
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "resizedHeight":I
    .restart local v11    # "resizedWidth":I
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    goto :goto_0

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v13    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .end local v13    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    :goto_3
    if-eqz v13, :cond_14

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_14
    :goto_4
    if-eqz v2, :cond_16

    :try_start_8
    throw v2

    .line 488
    :catch_4
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 490
    .end local v9    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v3

    if-nez v2, :cond_15

    move-object v2, v3

    goto :goto_4

    :cond_15
    if-eq v2, v3, :cond_14

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_16
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .restart local v13    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    goto :goto_3

    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v1

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .local v13, "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v13    # "stream":Ljava/io/FileOutputStream;
    .restart local v14    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileOutputStream;
    .restart local v13    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private releaseRenderScript()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 501
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicResize;->destroy()V

    .line 506
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 511
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 516
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewYuvAllocation:Landroid/renderscript/Allocation;

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 521
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 526
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_ResizedPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 530
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 531
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BluredPreviewRgbaAllocation:Landroid/renderscript/Allocation;

    .line 533
    :cond_6
    iput-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 534
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 496
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_IsVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    if-nez v0, :cond_1

    .line 543
    :cond_0
    return-void

    .line 546
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_IsVisible:Z

    .line 547
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 548
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 539
    return-void
.end method

.method private setupPreviewFrameCache()V
    .locals 3

    .prologue
    .line 556
    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameCacheFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 557
    return-void

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "LaunchPreviewFrame"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameCacheFile:Ljava/io/File;

    .line 554
    return-void
.end method

.method private setupUI(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 566
    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_Container:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    .line 568
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_PreviewFrameView:Landroid/widget/ImageView;

    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_CachedPreviewThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 569
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->resetAnimation()V

    .line 564
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 194
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->createPreviewThumbnailImage()V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/LaunchAnimation;->onPreviewThumbnailImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 258
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 261
    sget-object v0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oneplus/camera/ui/LaunchAnimation$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$6;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 255
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 283
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v2, Lcom/oneplus/camera/ui/LaunchAnimation$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$7;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/LaunchAnimation;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 301
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 302
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LaunchAnimation$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$8;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 311
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LaunchAnimation$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$9;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 320
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LaunchAnimation$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$10;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 341
    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_SetupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 342
    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_CachedPreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 343
    sget-object v1, Lcom/oneplus/camera/ui/LaunchAnimation;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/oneplus/camera/ui/LaunchAnimation;->m_LoadPreviewThumbRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void
.end method
