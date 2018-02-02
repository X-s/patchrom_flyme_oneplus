.class final Lcom/oneplus/camera/FlashControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FlashController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FlashControllerImpl$1;,
        Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-FlashModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-SupportedStateSwitchesValues:[I = null

.field private static final FLAG_IGNORE_UPDATE_FLASH_STATE:I = 0x1

.field private static final MSG_CLOSE_TORCH_FLASH:I = 0x2711

.field private static final SETTINGS_KEY_FLASH_MODE_BACK:Ljava/lang/String; = "FlashMode.Back"

.field private static final SETTINGS_KEY_FLASH_MODE_FRONT:Ljava/lang/String; = "FlashMode.Front"

.field private static final THRESHOLD_LOW_BATTERY:I = 0xf


# instance fields
.field private m_BurstFlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CameraSystemService:Lcom/oneplus/camera/CameraService;

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

.field private m_IsDisabledByHwLimitation:Z

.field private m_TorchFlashHandle:Lcom/oneplus/base/Handle;

.field private m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

.field private m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;
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

.method static synthetic -get4(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    return-object v0
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

    const/4 v2, 0x7

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

.method static synthetic -wrap1(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->enableFlash(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->resetToDefaultFlashMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/FlashControllerImpl;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "FlashMode.Back"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, "FlashMode.Front"

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 102
    const-string/jumbo v0, "Flash Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$1;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 100
    return-void
.end method

.method private enableFlash(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 135
    return-void
.end method

.method private resetToDefaultFlashMode()V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetToDefaultFlashMode() - Reset flash to default settings"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    .line 308
    .local v0, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v1, "FlashMode.Back"

    const-class v2, Lcom/oneplus/camera/FlashMode;

    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v1, v2, :cond_1

    .line 309
    const-string/jumbo v1, "FlashMode.Back"

    sget-object v2, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    :cond_1
    const-string/jumbo v1, "FlashMode.Front"

    const-class v2, Lcom/oneplus/camera/FlashMode;

    sget-object v3, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v1, v2, :cond_2

    .line 311
    const-string/jumbo v1, "FlashMode.Front"

    sget-object v2, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v0    # "settings":Lcom/oneplus/base/Settings;
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    sget-object v1, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    if-ne v1, v2, :cond_2

    .line 303
    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;Z)Z

    goto :goto_0
.end method

.method private setFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    .locals 4
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 331
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashMode() - No primary camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v3

    .line 336
    :cond_0
    new-instance v1, Lcom/oneplus/camera/FlashControllerImpl$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/camera/FlashControllerImpl$9;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FlashMode;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFlashMode() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v3

    .line 355
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private setFlashModeProp(Lcom/oneplus/camera/FlashMode;Z)Z
    .locals 5
    .param p1, "flashMode"    # Lcom/oneplus/camera/FlashMode;
    .param p2, "forceSet"    # Z

    .prologue
    const/4 v4, 0x0

    .line 362
    if-nez p2, :cond_0

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_5

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 366
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFlashModeProp() - Flash mode : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    if-nez p1, :cond_1

    .line 368
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No flash mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_1
    sget-object v2, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFlashModeProp() - No flash support"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return v4

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 377
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_4

    const-string/jumbo v1, "FlashMode.Back"

    .line 378
    .local v1, "settingsKey":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 381
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    sget-object v2, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v2, p1}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 377
    .end local v1    # "settingsKey":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "FlashMode.Front"

    .restart local v1    # "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "settingsKey":Ljava/lang/String;
    :cond_5
    return v4
.end method

.method private torchFlashRemote(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v1, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    if-eq v0, v1, :cond_1

    .line 461
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 464
    if-eqz p1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    invoke-interface {v0}, Lcom/oneplus/camera/CameraService;->torchFlash()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashRemoteHandle:Lcom/oneplus/base/Handle;

    .line 456
    :cond_2
    return-void
.end method

.method private updateFlashState()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 474
    const/16 v3, 0x2711

    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 475
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3, v6}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 479
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 480
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateFlashState() - No primary camera"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    if-eqz v0, :cond_2

    .line 485
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_1

    const-string/jumbo v2, "FlashMode.Back"

    .line 490
    :goto_0
    if-eqz v0, :cond_3

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 504
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 507
    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v3, v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v3}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v3

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v4}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    if-eqz v3, :cond_5

    .line 512
    :goto_1
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 513
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 514
    return-void

    .line 485
    :cond_1
    const-string/jumbo v2, "FlashMode.Front"

    .local v2, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 487
    .end local v2    # "settingsKey":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .local v2, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v2    # "settingsKey":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 493
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :cond_4
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 495
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-super {p0, v3, v4}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 496
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 497
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 498
    return-void

    .line 509
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFlashState() - m_FlashDisableHandle.getLast().reason.ordinal(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v3, v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v3}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->ordinal()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v4, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    iget-object v3, v3, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_7

    .line 518
    iput-boolean v6, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 519
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 520
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 521
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 522
    return-void

    .line 524
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v4, Lcom/oneplus/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 526
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 527
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 528
    sget-object v3, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 529
    return-void

    .line 531
    :cond_8
    iput-boolean v5, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_IsDisabledByHwLimitation:Z

    .line 534
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_DISABLED_REASON:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 535
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_IS_FLASH_DISABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/FlashControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v3

    const-class v4, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashMode;

    .line 539
    .local v1, "flashMode":Lcom/oneplus/camera/FlashMode;
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-FlashModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 554
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 555
    sget-object v3, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v3, v1}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 471
    return-void

    .line 542
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 543
    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 546
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 547
    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 550
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v3, v4, :cond_9

    .line 551
    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    goto :goto_2

    .line 539
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

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->verifyAccess()V

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disableFlash() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v3

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    sget-object p1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 123
    :cond_1
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)V

    .line 124
    .local v0, "handle":Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_FlashDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 130
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 146
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 169
    const-class v2, Lcom/oneplus/camera/ExposureController;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$2;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 201
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v0, Lcom/oneplus/camera/FlashControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl$3;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    .line 209
    .local v0, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_BATTERY_LEVEL:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$4;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 237
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 238
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$5;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 250
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 251
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 252
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$6;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 263
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->resetToDefaultFlashMode()V

    .line 265
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$7;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 276
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTING:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/camera/FlashControllerImpl$8;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FlashControllerImpl$8;-><init>(Lcom/oneplus/camera/FlashControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 287
    const-class v2, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraService;

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 288
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/FlashControllerImpl;->updateFlashState()V

    .line 163
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 322
    check-cast p2, Lcom/oneplus/camera/FlashMode;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashModeProp(Lcom/oneplus/camera/FlashMode;Z)Z

    move-result v0

    return v0

    .line 323
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public torchFlash(J)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "durationMillis"    # J

    .prologue
    const/16 v5, 0x2711

    const/4 v4, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/oneplus/camera/FlashControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 396
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 398
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - No camera to torch"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-object v4

    .line 403
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - No flash"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-object v4

    .line 408
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

    .line 410
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "torchFlash() - Flash is disabled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-object v4

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 416
    new-instance v2, Lcom/oneplus/camera/FlashControllerImpl$10;

    const-string/jumbo v3, "TorchFlashHandle"

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/FlashControllerImpl$10;-><init>(Lcom/oneplus/camera/FlashControllerImpl;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 428
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-nez v2, :cond_3

    .line 430
    const-class v2, Lcom/oneplus/camera/CameraService;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CameraService;

    iput-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    .line 431
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashSupportedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/CameraService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    if-eqz v2, :cond_4

    .line 436
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;

    sget-object v3, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/CameraService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/SupportedState;

    .line 437
    .local v1, "supportedState":Lcom/oneplus/camera/SupportedState;
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl;->-getcom-oneplus-camera-SupportedStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 451
    .end local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :cond_4
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    return-object v2

    .line 440
    .restart local v1    # "supportedState":Lcom/oneplus/camera/SupportedState;
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V

    .line 441
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 444
    :pswitch_2
    sget-object v2, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z

    .line 445
    invoke-static {p0, v5, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
