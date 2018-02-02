.class final Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;,
        Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-StartModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I = null

.field private static final ACTION_THUMBNAIL_CREATED:Ljava/lang/String; = "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

.field private static final DELAY_HIDE_THUMBNAL_MESSAGE_TIME:I = 0x7d0

.field private static final MSG_HIDE_THUMBNAIL_WITH_ANIMATION:I = 0x2710

.field private static final THUMBNAIL_ANIMATION_DURATION_LONG:I = 0xc8

.field private static final THUMBNAIL_ANIMATION_DURATION_SHORT:I = 0x32

.field private static final THUMBNAIL_BITMAP_DECODED_SIZE:I = 0x100

.field private static final m_CenterCroppedBitmapPool:Lcom/oneplus/media/CenterCroppedBitmapPool;


# instance fields
.field private m_AudioManager:Landroid/media/AudioManager;

.field private m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_BurstPhotoReceived:Z

.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

.field private m_CancelHideAnimation:Z

.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_CaptureHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

.field private m_FaceBeautyUIHeight:I

.field private m_HideAnimationStarted:Z

.field private m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private m_IsBurstPostviewSupported:Z

.field private m_IsPressingCaptureButton:Z

.field private m_IsProcessingYuvToBitmapTask:Z

.field private m_Length:I

.field private m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

.field private m_ManualPanelHeight:I

.field private m_ManulModeControlType:Lcom/oneplus/camera/manual/ControlType;

.field private m_NeedChangeRotation:Z

.field private m_OptionSecondTierHeight:I

.field private m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

.field private m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

.field private m_PenddingYuvToBitmapTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private m_StartThumbnailAnimation:Z

.field private m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_ThumbnailBackground:Landroid/graphics/Bitmap;

.field private m_ThumbnailBar:Landroid/widget/ImageView;

.field private m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

.field private m_ThumbnailBarContainer:Landroid/view/View;

.field private final m_ThumbnailBitmapQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbnailDecodeHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/base/Handle;",
            "Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ThumbnailInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_ThumbnailSize:I

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_StartThumbnailAnimation:Z

    return v0
.end method

.method static synthetic -get11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get16(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get18(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get4()Lcom/oneplus/media/CenterCroppedBitmapPool;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CenterCroppedBitmapPool:Lcom/oneplus/media/CenterCroppedBitmapPool;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsBurstPostviewSupported:Z

    return v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    return v0
.end method

.method static synthetic -get7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_NeedChangeRotation:Z

    return v0
.end method

.method static synthetic -get8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_PenddingYuvToBitmapTasks:Ljava/util/Queue;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-StartModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-StartModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/StartMode;->values()[Lcom/oneplus/camera/StartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-StartModeSwitchesValues:[I

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

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstPhotoReceived:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    return p1
.end method

.method static synthetic -set10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsPressingCaptureButton:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsProcessingYuvToBitmapTask:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/manual/ControlType;)Lcom/oneplus/camera/manual/ControlType;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManulModeControlType:Lcom/oneplus/camera/manual/ControlType;

    return-object p1
.end method

.method static synthetic -set7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_NeedChangeRotation:Z

    return p1
.end method

.method static synthetic -set8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OutlineProviderCircle:Lcom/oneplus/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_StartThumbnailAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z
    .locals 1
    .param p1, "thumbInfo"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->removeThumbnailInfo(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Rotation;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toRotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->updateCaptureHandle(Lcom/oneplus/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    .locals 1
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "createNew"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getThumbnailInfo(Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BII)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "yuvImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addThumbnailView(Lcom/oneplus/camera/CaptureHandle;I[BII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isCenterCropped"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->broadcastThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->cancelDecodingImages()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->decodeThumbnailImage(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V
    .locals 0
    .param p1, "withAnimation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->openCameraGallery()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 87
    new-instance v0, Lcom/oneplus/media/CenterCroppedBitmapPool;

    const-string/jumbo v1, "SmallThumbnailBarBitmapPool"

    const-wide/32 v2, 0x40000

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/CenterCroppedBitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CenterCroppedBitmapPool:Lcom/oneplus/media/CenterCroppedBitmapPool;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string/jumbo v0, "Thumbnail Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_PenddingYuvToBitmapTasks:Ljava/util/Queue;

    .line 108
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z

    .line 109
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    .line 113
    sget-object v0, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManulModeControlType:Lcom/oneplus/camera/manual/ControlType;

    .line 114
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_NeedChangeRotation:Z

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    .line 121
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$1;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    .line 569
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 881
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$3;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 193
    return-void
.end method

.method private addThumbnailView(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->convertToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 775
    .local v1, "circle":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v2, v3, :cond_1

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 779
    iput-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    .line 780
    return-void

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v2, v3, :cond_0

    .line 782
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 784
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 785
    iput-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBackground:Landroid/graphics/Bitmap;

    .line 787
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eqz v2, :cond_5

    .line 789
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    .line 791
    .local v0, "captureState":Lcom/oneplus/camera/PhotoCaptureState;
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstPhotoReceived:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v0, v2, :cond_4

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V

    .line 794
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstPhotoReceived:Z

    .line 803
    .end local v0    # "captureState":Lcom/oneplus/camera/PhotoCaptureState;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 770
    return-void

    .line 797
    .restart local v0    # "captureState":Lcom/oneplus/camera/PhotoCaptureState;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_StartThumbnailAnimation:Z

    goto :goto_0

    .line 800
    .end local v0    # "captureState":Lcom/oneplus/camera/PhotoCaptureState;
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->startThumbnailAnimation()V

    goto :goto_0
.end method

.method private addThumbnailView(Lcom/oneplus/camera/CaptureHandle;I[BII)V
    .locals 13
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "yuvImage"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 808
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getThumbnailInfo(Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    move-result-object v11

    .line 809
    .local v11, "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->isPostview:Z

    .line 810
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->isDecodingPostview:Z

    .line 813
    iget v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    iget v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/util/SizeUtils;->getRatioCenterCroppedSize(IIII)Landroid/util/Size;

    move-result-object v12

    .line 814
    .local v12, "thumbSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v2, :cond_0

    .line 815
    new-instance v2, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x2

    const/4 v10, 0x1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v2 .. v10}, Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;I)V

    iput-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    new-instance v3, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;

    invoke-direct {v3, p0, p1, v11}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)V

    .line 872
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 828
    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V

    .line 875
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addThumbnailView() - Handle"

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    .line 877
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsProcessingYuvToBitmapTask:Z

    .line 805
    return-void

    .line 818
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsProcessingYuvToBitmapTask:Z

    if-eqz v2, :cond_1

    .line 820
    iget-object v8, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_PenddingYuvToBitmapTasks:Ljava/util/Queue;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;-><init>(Lcom/oneplus/camera/CaptureHandle;I[BII)V

    invoke-interface {v8, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 821
    return-void

    .line 823
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    .line 824
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(II)V

    goto :goto_0
.end method

.method private broadcastThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 17
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isCenterCropped"    # Z

    .prologue
    .line 603
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 604
    :cond_0
    return-void

    .line 607
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v7, :cond_2

    if-eqz p3, :cond_4

    .line 612
    :cond_2
    :goto_0
    const/4 v10, 0x0

    const/4 v5, 0x0

    .local v5, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 614
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 615
    .local v8, "time":J
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x4b

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 616
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 617
    .local v2, "compressedThumb":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 618
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "broadcastThumbnailImage() - Take "

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string/jumbo v13, " ms to compress thumbnail image, size is "

    array-length v14, v2

    int-to-long v14, v14

    invoke-static {v14, v15}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v11, v12, v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 624
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    if-eqz v10, :cond_8

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 621
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Throwable;
    move-object v5, v6

    .line 622
    .end local v2    # "compressedThumb":[B
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "time":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "broadcastThumbnailImage() - Fail to compress thumbnail image"

    invoke-static {v7, v10, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    return-void

    .line 608
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v7, v0, v1}, Lcom/oneplus/camera/ui/CameraGallery;->addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 624
    .restart local v2    # "compressedThumb":[B
    .restart local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "time":J
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2    # "compressedThumb":[B
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "time":J
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v7

    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v10

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v7, v16

    :goto_4
    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_5
    if-eqz v10, :cond_7

    :try_start_6
    throw v10

    .line 621
    :catch_3
    move-exception v3

    .restart local v3    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 624
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    if-nez v10, :cond_6

    move-object v10, v11

    goto :goto_5

    :cond_6
    if-eq v10, v11, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 629
    .restart local v2    # "compressedThumb":[B
    .restart local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "time":J
    :cond_8
    :try_start_7
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "*/*"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string/jumbo v7, "compressed-thumbnail-image"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 600
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_6
    return-void

    .line 635
    :catch_5
    move-exception v3

    .line 636
    .restart local v3    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "broadcastThumbnailImage() - Fail to send broadcast"

    invoke-static {v7, v10, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 624
    .end local v2    # "compressedThumb":[B
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "time":J
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_4

    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v5, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private cancelDecodingImages()V
    .locals 3

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "handle$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 1026
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 1029
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "handle$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1030
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1031
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1020
    return-void
.end method

.method private convertToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x0

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 735
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 736
    .local v3, "height":I
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 737
    .local v4, "min":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 739
    .local v5, "out":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 740
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 741
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 744
    const/4 v9, 0x0

    .line 745
    .local v9, "w":I
    const/4 v1, 0x0

    .line 746
    .local v1, "deltaX":I
    const/4 v2, 0x0

    .line 747
    .local v2, "deltaY":I
    if-gt v10, v3, :cond_0

    .line 749
    move v9, v10

    .line 750
    sub-int v11, v3, v10

    div-int/lit8 v2, v11, 0x2

    .line 758
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    add-int v11, v9, v1

    add-int v12, v9, v2

    invoke-direct {v7, v1, v2, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 760
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v11, v4

    int-to-float v12, v4

    invoke-direct {v8, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 763
    .local v8, "rectF":Landroid/graphics/RectF;
    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    div-int/lit8 v12, v4, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v4, 0x2

    int-to-float v13, v13

    invoke-virtual {v0, v11, v12, v13, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 764
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 765
    invoke-virtual {v0, p1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 766
    return-object v5

    .line 754
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "rectF":Landroid/graphics/RectF;
    :cond_0
    move v9, v3

    .line 755
    sub-int v11, v10, v3

    div-int/lit8 v1, v11, 0x2

    goto :goto_0
.end method

.method private decodeThumbnailImage(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;)V
    .locals 9
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 995
    invoke-static {p3}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decodeThumbnailImage() - length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getThumbnailInfo(Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    move-result-object v8

    .line 1002
    .local v8, "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CenterCroppedBitmapPool:Lcom/oneplus/media/CenterCroppedBitmapPool;

    iget v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    iget-object v6, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/media/CenterCroppedBitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, v8, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1003
    iget-object v0, v8, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailDecodeHandles:Ljava/util/Map;

    iget-object v1, v8, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_1
    return-void
.end method

.method private getThumbnailInfo(Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    .locals 6
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "frameIndex"    # I
    .param p3, "createNew"    # Z

    .prologue
    const/4 v4, 0x0

    .line 644
    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 645
    .local v2, "thumbInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;>;"
    if-nez v2, :cond_1

    .line 647
    if-eqz p3, :cond_0

    .line 649
    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    .line 650
    .local v1, "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "thumbInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .restart local v2    # "thumbInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getThumbnailInfo() - Create \'"

    const-string/jumbo v5, "\'"

    invoke-static {v3, v4, p1, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 654
    return-object v1

    .line 656
    .end local v1    # "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    :cond_0
    return-object v4

    .line 658
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 660
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    .line 661
    .restart local v1    # "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    iget v3, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->frameIndex:I

    if-ne v3, p2, :cond_2

    .line 662
    return-object v1

    .line 658
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 664
    .end local v1    # "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    :cond_3
    if-eqz p3, :cond_4

    .line 666
    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;-><init>(Lcom/oneplus/camera/CaptureHandle;I)V

    .line 667
    .restart local v1    # "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    return-object v1

    .line 670
    .end local v1    # "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    :cond_4
    return-object v4
.end method

.method private hideThumbnailBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 696
    if-eqz p1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 699
    .local v0, "translation":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 700
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    .line 694
    .end local v0    # "translation":I
    :goto_0
    return-void

    .line 704
    :cond_0
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 705
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 706
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 708
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 710
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private openCameraGallery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 954
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_IsPressingCaptureButton:Z

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openCameraGallery() - capture button is pressed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void

    .line 960
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 966
    return-void

    .line 969
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 975
    return-void

    .line 978
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-nez v0, :cond_1

    .line 979
    const-class v0, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    invoke-interface {v0}, Lcom/oneplus/camera/ui/CameraGallery;->openFilmstripDirectly()V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_AudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    .line 984
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_AudioManager:Landroid/media/AudioManager;

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 987
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 988
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->cancelDecodingImages()V

    .line 989
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    .line 952
    return-void

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 969
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeThumbnailInfo(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z
    .locals 7
    .param p1, "thumbInfo"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    .prologue
    const/4 v3, 0x0

    .line 677
    if-nez p1, :cond_0

    .line 678
    return v3

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 680
    .local v0, "thumbInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeThumbnailInfo() - Remove \'"

    iget-object v3, p1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    const-string/jumbo v4, "\', "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " remained"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 689
    :cond_2
    return v3
.end method

.method private startThumbnailAnimation()V
    .locals 4

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 934
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 935
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 940
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 941
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 943
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 944
    :cond_1
    const/16 v0, 0x32

    .line 947
    .local v0, "duration":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 932
    return-void

    .line 946
    .end local v0    # "duration":I
    :cond_2
    const/16 v0, 0xc8

    .restart local v0    # "duration":I
    goto :goto_0
.end method

.method private updateCaptureHandle(Lcom/oneplus/camera/CaptureHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->isBurstPhotoCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 534
    iput-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-nez v0, :cond_2

    .line 540
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eq p1, v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureHandles:Ljava/util/Set;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 544
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_BurstCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 725
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 716
    :goto_0
    return-void

    .line 721
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->cancelDecodingImages()V

    .line 1013
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1014
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->close()V

    .line 1016
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 1010
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 207
    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_AudioManager:Landroid/media/AudioManager;

    .line 218
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarBackGroud:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBar:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$4;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CenterCroppedBitmapPool:Lcom/oneplus/media/CenterCroppedBitmapPool;

    invoke-virtual {v0}, Lcom/oneplus/media/CenterCroppedBitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    .line 237
    const/16 v0, 0x100

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailSize:I

    .line 240
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$5;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$7;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_POSTVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$8;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$9;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 338
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 355
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$11;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 379
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$12;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 400
    const-class v0, Lcom/oneplus/camera/ui/CameraGallery;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    .line 401
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$13;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 412
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraGallery:Lcom/oneplus/camera/ui/CameraGallery;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$14;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$14;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-nez v0, :cond_2

    .line 429
    const-class v0, Lcom/oneplus/camera/ui/CaptureButtons;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionSecondTierHeight:I

    .line 455
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUIHeight:I

    .line 456
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManualPanelHeight:I

    .line 457
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 458
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$16;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$16;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 471
    :cond_3
    const-class v0, Lcom/oneplus/camera/ui/OptionsPanel;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OptionsPanel;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    .line 472
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    if-eqz v0, :cond_4

    .line 474
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 484
    :cond_4
    const-class v0, Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/FaceBeautyUI;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    .line 485
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    if-eqz v0, :cond_5

    .line 487
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    sget-object v1, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$18;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$18;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/FaceBeautyUI;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 497
    :cond_5
    const-class v0, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 498
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v1, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$19;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$19;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 509
    :cond_6
    const-class v0, Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    .line 510
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    if-eqz v0, :cond_7

    .line 512
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManualModeUI:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v1, Lcom/oneplus/camera/manual/ManualModeUI;->PROP_MANUAL_CONTROL_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeUI;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 522
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->updateThumbnailBarContianerMargins()V

    .line 200
    return-void

    .line 211
    :pswitch_0
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateThumbnailBarContianerMargins()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "isManualMode":Z
    const/4 v2, 0x0

    .line 554
    .local v2, "isOptionsPanelOpen":Z
    const/4 v0, 0x0

    .line 555
    .local v0, "isFaceBeautyUIOpen":Z
    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/capturemode/CaptureMode;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "Manual"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    const/4 v1, 0x1

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v6, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    const/4 v2, 0x1

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    sget-object v6, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v6}, Lcom/oneplus/camera/ui/FaceBeautyUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 560
    const/4 v0, 0x1

    .line 562
    :cond_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_OptionSecondTierHeight:I

    move v6, v4

    .line 563
    :goto_0
    if-eqz v1, :cond_4

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManualPanelHeight:I

    .line 562
    :goto_1
    add-int/2addr v6, v4

    .line 564
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ManulModeControlType:Lcom/oneplus/camera/manual/ControlType;

    sget-object v7, Lcom/oneplus/camera/manual/ControlType;->NONE:Lcom/oneplus/camera/manual/ControlType;

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_Length:I

    .line 562
    :goto_2
    add-int/2addr v6, v4

    .line 565
    if-eqz v0, :cond_6

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_FaceBeautyUIHeight:I

    .line 562
    :goto_3
    add-int v3, v6, v4

    .line 566
    .local v3, "margins":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;

    invoke-static {v4, v5, v5, v5, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 549
    return-void

    .end local v3    # "margins":I
    :cond_3
    move v6, v5

    .line 562
    goto :goto_0

    :cond_4
    move v4, v5

    .line 563
    goto :goto_1

    :cond_5
    move v4, v5

    .line 564
    goto :goto_2

    :cond_6
    move v4, v5

    .line 565
    goto :goto_3
.end method
