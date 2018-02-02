.class final Lcom/oneplus/camera/FlashControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FlashController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FlashControllerImpl$1;,
        Lcom/oneplus/camera/FlashControllerImpl$2;,
        Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;,
        Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-FlashModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-SupportedStateSwitchesValues:[I = null

.field private static final CHECK_DEVICE_DURATION:J = 0x1388L

.field private static final DEVICE_TEMPERATURE_LIMIT:I = 0x32

.field private static final DEVICE_TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone5/temp"

.field private static final FLAG_IGNORE_UPDATE_FLASH_STATE:I = 0x1

.field private static final MSG_CHECK_DEVICE_TEMPERATURE:I = 0x2774

.field private static final MSG_CLOSE_TORCH_FLASH:I = 0x2711

.field private static final MSG_SCREEN_FLASH_STATE_CHANGED:I = 0x271a

.field private static final PERMITTED_FLASH_MODES_DEFAULT:[Lcom/oneplus/camera/FlashMode;

.field private static final PERMITTED_FLASH_MODES_PHOTO_BACK:[Lcom/oneplus/camera/FlashMode;

.field private static final PERMITTED_FLASH_MODES_PHOTO_FRONT:[Lcom/oneplus/camera/FlashMode;

.field private static final PERMITTED_FLASH_MODES_VIDEO_BACK:[Lcom/oneplus/camera/FlashMode;

.field private static final PERMITTED_FLASH_MODES_VIDEO_FRONT:[Lcom/oneplus/camera/FlashMode;

.field private static final SETTINGS_KEY_FLASH_MODE_BACK:Ljava/lang/String; = "FlashMode.Back"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SETTINGS_KEY_FLASH_MODE_FRONT:Ljava/lang/String; = "FlashMode.Front"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SETTINGS_KEY_FLASH_MODE_PHOTO_BACK:Ljava/lang/String; = "FlashMode.Photo.Back"

.field private static final SETTINGS_KEY_FLASH_MODE_PHOTO_FRONT:Ljava/lang/String; = "FlashMode.Photo.Front"

.field private static final SETTINGS_KEY_FLASH_MODE_VIDEO_BACK:Ljava/lang/String; = "FlashMode.Video.Back"

.field private static final SETTINGS_KEY_FLASH_MODE_VIDEO_FRONT:Ljava/lang/String; = "FlashMode.Video.Front"

.field private static final TABLE_KEY_PHOTO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

.field private static final TABLE_KEY_PHOTO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

.field private static final TABLE_KEY_VIDEO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

.field private static final TABLE_KEY_VIDEO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

.field private static final THRESHOLD_LOW_BATTERY:I = 0xf


# instance fields
.field private m_BacklightBrightnessHandle:Lcom/oneplus/base/Handle;

.field private m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CameraSystemService:Lcom/oneplus/camera/CameraService;

.field private m_DeviceTemperatureFlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private final m_FlashDisableHandle:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashModeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;",
            "Lcom/oneplus/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDisabledByHwLimitation:Z

.field private final m_IsScreenFlashNeededChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenFlashView:Landroid/view/View;

.field private m_SupportedFlashModesTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_TorchFlashHandle:Lcom/oneplus/base/Handle;

.field private m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

.field private final m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/SupportedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/CameraService;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/ExposureController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsScreenFlashNeededChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$LensFacing;->values()[Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-FlashModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/FlashMode;->values()[Lcom/oneplus/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-FlashModeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-SupportedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/SupportedState;->values()[Lcom/oneplus/camera/SupportedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/SupportedState;->NOT_SUPPORTED:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/SupportedState;->UNKNOWN:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/ExposureController;)Lcom/oneplus/camera/ExposureController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/FlashControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashMode;)Z
    .locals 1
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->detachFromCamera(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->enableFlash(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->resetToDefaultFlashMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/FlashControllerImpl;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v3, [Lcom/oneplus/camera/FlashMode;

    .line 43
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_DEFAULT:[Lcom/oneplus/camera/FlashMode;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/camera/FlashMode;

    .line 47
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v3

    .line 49
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v4

    .line 45
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_PHOTO_BACK:[Lcom/oneplus/camera/FlashMode;

    .line 51
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_PHOTO_BACK:[Lcom/oneplus/camera/FlashMode;

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_PHOTO_FRONT:[Lcom/oneplus/camera/FlashMode;

    .line 53
    new-array v0, v4, [Lcom/oneplus/camera/FlashMode;

    .line 54
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    aput-object v1, v0, v3

    .line 52
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_VIDEO_BACK:[Lcom/oneplus/camera/FlashMode;

    .line 57
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_DEFAULT:[Lcom/oneplus/camera/FlashMode;

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_VIDEO_FRONT:[Lcom/oneplus/camera/FlashMode;

    .line 67
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;-><init>(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)V

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .line 68
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;-><init>(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)V

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .line 69
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;-><init>(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)V

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .line 70
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;-><init>(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)V

    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .line 176
    const-string/jumbo v0, "FlashMode.Photo.Back"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string/jumbo v0, "FlashMode.Photo.Front"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string/jumbo v0, "FlashMode.Video.Back"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string/jumbo v0, "FlashMode.Video.Front"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 186
    const-string/jumbo v0, "Flash Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_SupportedFlashModesTable:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$1;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsScreenFlashNeededChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 97
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$2;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 184
    return-void
.end method

.method private attachToCamera(Lcom/oneplus/camera/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 193
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FlashControllerImpl$3;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private checkDeviceTemperature()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 207
    const/4 v2, -0x1

    .line 209
    .local v2, "deviceTemperature":I
    const/4 v0, 0x0

    .local v0, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/thermal/thermal_zone5/temp"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 214
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkDeviceTemperature() - temperature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    goto :goto_0

    .line 222
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 221
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDeviceTemperature() - failed to get temperature"

    invoke-static {v6, v7, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    const/16 v6, 0x32

    if-lt v2, v6, :cond_7

    .line 227
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_DeviceTemperatureFlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 228
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDeviceTemperature() - Flash is already disabled by high temperature"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_4
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 251
    const/16 v6, 0x2774

    const-wide/16 v8, 0x1388

    invoke-static {p0, v6, v11, v8, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 205
    return-void

    .line 222
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1

    :cond_2
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4    # "line":Ljava/lang/String;
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_6
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_7
    if-eqz v7, :cond_5

    :try_start_6
    throw v7

    .line 220
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 222
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_7

    :cond_4
    if-eq v7, v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    throw v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 231
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkDeviceTemperature() - Device\'s temperature is too high, disable flash"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v5

    .line 235
    .local v5, "settings":Lcom/oneplus/base/Settings;
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v7, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v8, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v6, "FlashMode.Video.Back"

    sget-object v7, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    sget-object v6, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->HIGH_DEVICE_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v6, v10}, Lcom/oneplus/camera/FlashControllerImpl;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_DeviceTemperatureFlashDisableHandle:Lcom/oneplus/base/Handle;

    .line 239
    iput-boolean v11, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    goto :goto_4

    .line 244
    .end local v5    # "settings":Lcom/oneplus/base/Settings;
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_DeviceTemperatureFlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v6}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 245
    iput-boolean v10, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    goto :goto_4

    .line 222
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    goto :goto_6

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private detachFromCamera(Lcom/oneplus/camera/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 258
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FlashControllerImpl$4;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method private enableFlash(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 298
    return-void
.end method

.method private getFlashModeFromSettings(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashMode;
    .locals 3
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectSettingsKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 312
    return-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashMode;

    return-object v1
.end method

.method private getFlashModeFromTable(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashMode;
    .locals 2
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectTableKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    move-result-object v0

    .line 321
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    if-nez v0, :cond_0

    .line 322
    return-object v1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashMode;

    return-object v1
.end method

.method private getPermittedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)[Lcom/oneplus/camera/FlashMode;
    .locals 3
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v2, 0x0

    .line 330
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 331
    :cond_0
    return-object v2

    .line 332
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 353
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_DEFAULT:[Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 338
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v0, :cond_2

    .line 339
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_PHOTO_BACK:[Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 340
    :cond_2
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v0, :cond_4

    .line 341
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_VIDEO_BACK:[Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 346
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v0, :cond_3

    .line 347
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_PHOTO_FRONT:[Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 348
    :cond_3
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v0, :cond_4

    .line 349
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PERMITTED_FLASH_MODES_VIDEO_FRONT:[Lcom/oneplus/camera/FlashMode;

    return-object v0

    .line 355
    :cond_4
    return-object v2

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSupportedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/util/List;
    .locals 2
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Lcom/oneplus/camera/media/MediaType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectTableKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    move-result-object v0

    .line 363
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    if-nez v0, :cond_0

    .line 364
    return-object v1

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_SupportedFlashModesTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private onScreenFlashStateChanged(Z)V
    .locals 4
    .param p1, "isNeeded"    # Z

    .prologue
    .line 583
    if-nez p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BacklightBrightnessHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 591
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    .line 598
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 599
    return-void

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BacklightBrightnessHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 604
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    invoke-interface {v0}, Lcom/oneplus/camera/CameraService;->setBacklightMaxBrightness()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_BacklightBrightnessHandle:Lcom/oneplus/base/Handle;

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 609
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ScreenFlashView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 579
    return-void
.end method

.method private resetToDefaultFlashMode()V
    .locals 5

    .prologue
    .line 618
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetToDefaultFlashMode() - Reset flash to default settings"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    .line 627
    .local v1, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v2, "FlashMode.Photo.Back"

    const-class v3, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashMode;

    .line 628
    .local v0, "flashFromSettings":Lcom/oneplus/camera/FlashMode;
    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v0, v2, :cond_2

    .line 630
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v2, "FlashMode.Photo.Back"

    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    :goto_1
    const-string/jumbo v2, "FlashMode.Photo.Front"

    const-class v3, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    .end local v0    # "flashFromSettings":Lcom/oneplus/camera/FlashMode;
    check-cast v0, Lcom/oneplus/camera/FlashMode;

    .line 636
    .restart local v0    # "flashFromSettings":Lcom/oneplus/camera/FlashMode;
    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v0, v2, :cond_3

    .line 638
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string/jumbo v2, "FlashMode.Photo.Front"

    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v2, "FlashMode.Video.Back"

    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const-string/jumbo v2, "FlashMode.Video.Front"

    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    return-void

    .line 621
    .end local v0    # "flashFromSettings":Lcom/oneplus/camera/FlashMode;
    .end local v1    # "settings":Lcom/oneplus/base/Settings;
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v2, v3, :cond_0

    .line 622
    sget-object v2, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;ZZ)V

    goto :goto_0

    .line 634
    .restart local v0    # "flashFromSettings":Lcom/oneplus/camera/FlashMode;
    .restart local v1    # "settings":Lcom/oneplus/base/Settings;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 642
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private selectSettingsKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/lang/String;
    .locals 3
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v1, 0x0

    .line 657
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 658
    :cond_0
    return-object v1

    .line 661
    :cond_1
    const/4 v0, 0x0

    .line 662
    .local v0, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 681
    .end local v0    # "settingsKey":Ljava/lang/String;
    :cond_2
    :goto_0
    :pswitch_0
    return-object v0

    .line 666
    .restart local v0    # "settingsKey":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_3

    .line 667
    const-string/jumbo v0, "FlashMode.Photo.Back"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 668
    .local v0, "settingsKey":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_2

    .line 669
    const-string/jumbo v0, "FlashMode.Video.Back"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 674
    .local v0, "settingsKey":Ljava/lang/String;
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_4

    .line 675
    const-string/jumbo v0, "FlashMode.Photo.Front"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 676
    .local v0, "settingsKey":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_2

    .line 677
    const-string/jumbo v0, "FlashMode.Video.Front"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private selectTableKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    .locals 3
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    const/4 v1, 0x0

    .line 690
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 691
    :cond_0
    return-object v1

    .line 694
    :cond_1
    const/4 v0, 0x0

    .line 695
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 716
    .end local v0    # "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    :cond_2
    :goto_0
    return-object v0

    .line 701
    .restart local v0    # "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_3

    .line 702
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    goto :goto_0

    .line 703
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    :cond_3
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_2

    .line 704
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_BACK:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    goto :goto_0

    .line 709
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_4

    .line 710
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_PHOTO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    goto :goto_0

    .line 711
    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    :cond_4
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne p2, v1, :cond_2

    .line 712
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->TABLE_KEY_VIDEO_FRONT:Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    .local v0, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;ZZ)V
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "force"    # Z
    .param p3, "saveToSettings"    # Z

    .prologue
    .line 732
    if-nez p2, :cond_0

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_5

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 736
    if-nez p1, :cond_1

    .line 737
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No flash mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    :cond_1
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    if-eq v3, v4, :cond_3

    .line 741
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setFlashMode() - No flash support"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void

    .line 745
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setFlashMode() - Flash mode : "

    invoke-static {v3, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 751
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 752
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_4

    .line 754
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    .line 755
    .local v2, "mediaType":Lcom/oneplus/camera/media/MediaType;
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    .line 758
    .local v1, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-direct {p0, v1, v2, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeToTable(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Lcom/oneplus/camera/FlashMode;)V

    .line 761
    if-eqz p3, :cond_4

    .line 762
    invoke-direct {p0, v1, v2, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeToSettings(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Lcom/oneplus/camera/FlashMode;)V

    .line 766
    .end local v1    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .end local v2    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    :cond_4
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 730
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_5
    return-void
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    .locals 4
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v3, 0x0

    .line 774
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 775
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 777
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashMode() - No primary camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    return v3

    .line 780
    :cond_0
    new-instance v1, Lcom/oneplus/camera/FlashControllerImpl$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/camera/FlashControllerImpl$14;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FlashMode;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashMode() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return v3

    .line 799
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private setFlashModeToSettings(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Lcom/oneplus/camera/FlashMode;)V
    .locals 8
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .param p3, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 806
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectSettingsKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "settingsKey":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 809
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFlashModeToSettings() - Lens facing: "

    const-string/jumbo v3, ", media type: "

    const-string/jumbo v5, ", flash: "

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    invoke-virtual {v0, v7, p3}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    :cond_0
    return-void
.end method

.method private setFlashModeToTable(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Lcom/oneplus/camera/FlashMode;)V
    .locals 8
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .param p3, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 818
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectTableKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    move-result-object v7

    .line 819
    .local v7, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    if-eqz v7, :cond_0

    .line 821
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFlashModeToTable() - Lens facing: "

    const-string/jumbo v3, ", media type: "

    const-string/jumbo v5, ", flash: "

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashModeTable:Ljava/util/Map;

    invoke-interface {v0, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_0
    return-void
.end method

.method private setSupportedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;)V
    .locals 8
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Lcom/oneplus/camera/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/FlashMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p3, "flashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FlashControllerImpl;->selectTableKey(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;

    move-result-object v7

    .line 831
    .local v7, "key":Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
    if-eqz v7, :cond_0

    .line 833
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSupportedFlashModes() - Lens facing: "

    const-string/jumbo v3, ", media type: "

    const-string/jumbo v5, ", supported flash: "

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_SupportedFlashModesTable:Ljava/util/Map;

    invoke-interface {v0, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_0
    return-void
.end method

.method private torchFlashRemote(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 907
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v0, :cond_0

    .line 908
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v1, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    if-eq v0, v1, :cond_1

    .line 910
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 913
    if-eqz p1, :cond_2

    .line 914
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    invoke-interface {v0}, Lcom/oneplus/camera/CameraService;->torchFlash()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    .line 905
    :cond_2
    return-void
.end method

.method private updateFlashState()V
    .locals 21

    .prologue
    .line 923
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 927
    const/4 v6, 0x0

    .line 928
    .local v6, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v16

    .line 929
    .local v16, "camera":Lcom/oneplus/camera/Camera;
    if-nez v16, :cond_2

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateFlashState() - No current camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v6    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v8

    .line 936
    .local v8, "mediaType":Lcom/oneplus/camera/media/MediaType;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/oneplus/camera/FlashControllerImpl;->getFlashModeFromTable(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashMode;

    move-result-object v4

    .line 937
    .local v4, "flashMode":Lcom/oneplus/camera/FlashMode;
    if-nez v4, :cond_0

    .line 938
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/oneplus/camera/FlashControllerImpl;->getFlashModeFromSettings(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Lcom/oneplus/camera/FlashMode;

    move-result-object v4

    .line 940
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateFlashState() - Flash from table: "

    const-string/jumbo v5, ", lens facing: "

    const-string/jumbo v7, ", media type: "

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 943
    if-eqz v16, :cond_3

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 957
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/oneplus/camera/FlashControllerImpl;->getSupportedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/util/List;

    move-result-object v20

    .line 958
    .local v20, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    if-nez v20, :cond_6

    .line 961
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .restart local v20    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/oneplus/camera/FlashControllerImpl;->getPermittedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)[Lcom/oneplus/camera/FlashMode;

    move-result-object v19

    .line 963
    .local v19, "permittedFlashModes":[Lcom/oneplus/camera/FlashMode;
    new-instance v17, Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 964
    .local v17, "flashModesFromCamera":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v18, v19, v2

    .line 966
    .local v18, "permittedFlashMode":Lcom/oneplus/camera/FlashMode;
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 967
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    .end local v4    # "flashMode":Lcom/oneplus/camera/FlashMode;
    .end local v8    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    .end local v17    # "flashModesFromCamera":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .end local v18    # "permittedFlashMode":Lcom/oneplus/camera/FlashMode;
    .end local v19    # "permittedFlashModes":[Lcom/oneplus/camera/FlashMode;
    .end local v20    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .restart local v6    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    :cond_2
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    check-cast v6, Lcom/oneplus/camera/Camera$LensFacing;

    .local v6, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    goto :goto_0

    .line 945
    .end local v6    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .restart local v4    # "flashMode":Lcom/oneplus/camera/FlashMode;
    .restart local v8    # "mediaType":Lcom/oneplus/camera/media/MediaType;
    :cond_3
    if-nez v4, :cond_4

    .line 946
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeToTable(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Lcom/oneplus/camera/FlashMode;)V

    .line 947
    :cond_4
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 948
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 949
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/oneplus/camera/FlashMode;

    sget-object v5, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 950
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 951
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 952
    return-void

    .line 969
    .restart local v17    # "flashModesFromCamera":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .restart local v19    # "permittedFlashModes":[Lcom/oneplus/camera/FlashMode;
    .restart local v20    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v8, v1}, Lcom/oneplus/camera/FlashControllerImpl;->setSupportedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;Ljava/util/List;)V

    .line 973
    .end local v17    # "flashModesFromCamera":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FlashMode;>;"
    .end local v19    # "permittedFlashModes":[Lcom/oneplus/camera/FlashMode;
    :cond_6
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 974
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 976
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 977
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 978
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 979
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 980
    return-void

    .line 983
    :cond_7
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v2, v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v2

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v3}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    if-eqz v2, :cond_9

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_8

    .line 996
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 998
    :cond_8
    :goto_2
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 999
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 1000
    return-void

    .line 992
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFlashState() - Disable reason: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v2, v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v2, v2, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 1002
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_b

    .line 1004
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 1005
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1006
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1007
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 1008
    return-void

    .line 1010
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1012
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1013
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1014
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 1015
    return-void

    .line 1017
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 1020
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1021
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1024
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Lcom/oneplus/camera/FlashControllerImpl;->getSupportedFlashModes(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)Ljava/util/List;

    move-result-object v20

    .line 1025
    if-nez v4, :cond_d

    .line 1026
    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    .line 1027
    :cond_d
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v4}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1052
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 1053
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateFlashState() - Lens facing: "

    const-string/jumbo v12, ", media type: "

    const-string/jumbo v14, ", flash: "

    move-object v11, v6

    move-object v13, v8

    move-object v15, v4

    invoke-static/range {v9 .. v15}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    return-void

    .line 1030
    :pswitch_0
    sget-object v2, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1031
    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_3

    .line 1034
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1036
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1037
    sget-object v4, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    goto :goto_3

    .line 1039
    :cond_f
    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_3

    .line 1043
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1045
    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1046
    sget-object v4, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    goto :goto_3

    .line 1048
    :cond_10
    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_3

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "reason"    # Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableFlash() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v3

    .line 282
    :cond_0
    if-nez p1, :cond_1

    .line 283
    sget-object p1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 286
    :cond_1
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)V

    .line 287
    .local v0, "handle":Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 293
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 373
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 388
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 371
    :goto_0
    return-void

    .line 376
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->checkDeviceTemperature()V

    goto :goto_0

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 384
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/camera/FlashControllerImpl;->onScreenFlashStateChanged(Z)V

    goto :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x271a -> :sswitch_2
        0x2774 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/FlashControllerImpl;->detachFromCamera(Lcom/oneplus/camera/Camera;)V

    .line 402
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 396
    return-void
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 412
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 415
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-string/jumbo v4, "FlashMode.Back"

    const-class v5, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/FlashMode;

    .line 416
    .local v2, "oldSettingsFlashMode":Lcom/oneplus/camera/FlashMode;
    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-string/jumbo v4, "FlashMode.Photo.Back"

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-string/jumbo v4, "FlashMode.Back"

    invoke-virtual {v3, v4, v6}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    :cond_0
    const-class v3, Lcom/oneplus/camera/ExposureController;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$5;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$5;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 453
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$6;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    .line 461
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$7;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$7;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 489
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$8;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$8;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 499
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$9;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$9;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 511
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$10;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$10;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 522
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 523
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 524
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$11;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$11;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 535
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->resetToDefaultFlashMode()V

    .line 537
    :cond_1
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$12;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$12;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 548
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    new-instance v4, Lcom/oneplus/camera/FlashControllerImpl$13;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/FlashControllerImpl$13;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 559
    const-class v3, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/CameraService;

    iput-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 560
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v4, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 564
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V

    .line 567
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->resetToDefaultFlashMode()V

    .line 570
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 573
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->checkDeviceTemperature()V

    .line 409
    return-void
.end method

.method public setFlashMode(Lcom/oneplus/camera/FlashMode;I)V
    .locals 3
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 724
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 725
    .local v0, "saveToSettings":Z
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;ZZ)V

    .line 722
    return-void

    .end local v0    # "saveToSettings":Z
    :cond_0
    move v0, v1

    .line 724
    goto :goto_0
.end method

.method public torchFlash(J)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "durationMillis"    # J

    .prologue
    const/16 v5, 0x2711

    const/4 v4, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 845
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 847
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - No camera to torch"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-object v4

    .line 852
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 854
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - No flash"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-object v4

    .line 857
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    if-eqz v2, :cond_2

    .line 859
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - Flash is disabled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-object v4

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 865
    new-instance v2, Lcom/oneplus/camera/FlashControllerImpl$15;

    const-string/jumbo v3, "TorchFlashHandle"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/FlashControllerImpl$15;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 877
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v2, :cond_3

    .line 879
    const-class v2, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraService;

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 880
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_3

    .line 881
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 883
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_4

    .line 885
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/SupportedState;

    .line 886
    .local v1, "supportedState":Lcom/oneplus/camera/SupportedState;
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-SupportedStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 900
    .end local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :cond_4
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    return-object v2

    .line 889
    .restart local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    .line 890
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 893
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 894
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
