.class public Lcom/oneplus/camera/watermark/WatermarkUI;
.super Lcom/oneplus/camera/UIComponent;
.source "WatermarkUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/watermark/WatermarkUI$1;,
        Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-watermark-WatermarkSwitchesValues:[I = null

.field public static final PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/watermark/Watermark;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_IS_SLOGAN_AUTHOR_ENABLED:Ljava/lang/String; = "Watermark.Slogan.Author.Enabled"

.field public static final SETTINGS_KEY_SLOGAN_AUTHOR:Ljava/lang/String; = "Watermark.Slogan.Author"

.field public static final SETTINGS_KEY_WATERMARK:Ljava/lang/String; = "Watermark"


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private final m_ExcludingCaptureHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSloganAuthorNameEnabled:Z

.field private m_IsUpdateOnlineWatermarkScheduled:Z

.field private m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

.field private m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

.field private m_SloganAuthorName:Ljava/lang/String;

.field private final m_UpdateOnlineWatermarkEnableStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/watermark/WatermarkUI;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_ExcludingCaptureHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/watermark/WatermarkUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_IsUpdateOnlineWatermarkScheduled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/watermark/WatermarkUI;)Lcom/oneplus/camera/watermark/OnlineWatermarkController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/watermark/WatermarkUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_UpdateOnlineWatermarkEnableStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/watermark/Watermark;->values()[Lcom/oneplus/camera/watermark/Watermark;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/watermark/Watermark;->SLOGAN:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/watermark/WatermarkUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_IsUpdateOnlineWatermarkScheduled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/watermark/WatermarkUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOnlineWatermarkControllerSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/watermark/WatermarkUI;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "pictureId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/watermark/WatermarkUI;->onMediaSaved(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/watermark/WatermarkUI;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/watermark/WatermarkUI;->onOnlineWatermarkControllerFound(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermarkEnableState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermark()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateWatermarkFromSettings()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/watermark/WatermarkUI;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->verifyAccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Watermark"

    const-class v2, Lcom/oneplus/camera/watermark/Watermark;

    const-class v3, Lcom/oneplus/camera/watermark/WatermarkUI;

    sget-object v4, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 107
    const-string/jumbo v0, "Watermark UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_ExcludingCaptureHandles:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/oneplus/camera/watermark/WatermarkUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$1;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_UpdateOnlineWatermarkEnableStateRunnable:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method private isOfflineWatermarkNeeded(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;)Z
    .locals 6
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v2, v3, :cond_1

    .line 184
    :cond_0
    return v5

    .line 187
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-eq v2, v3, :cond_2

    .line 188
    return v5

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOnlineWatermarkControllerSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    return v5

    .line 195
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->isVideoSnapshot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    return v5

    .line 199
    :cond_4
    invoke-static {p2}, Lcom/oneplus/io/FileUtils;->isRawFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    return v5

    .line 203
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_ExcludingCaptureHandles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWatermarkNeeded() - Capture : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is excluded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v5

    .line 210
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 211
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 212
    return v5

    .line 215
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateWatermarkFromSettings()V

    .line 216
    sget-object v2, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/watermark/WatermarkUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/watermark/Watermark;

    .line 217
    .local v1, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {}, Lcom/oneplus/camera/watermark/WatermarkUI;->-getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 222
    return v5

    .line 220
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isOnlineWatermarkControllerSupported()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    sget-object v1, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private linkToPictureProcessService()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v0, :cond_0

    .line 240
    return v1

    .line 241
    :cond_0
    const-class v0, Lcom/oneplus/camera/PictureProcessService;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PictureProcessService;

    iput-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    .line 242
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v0, :cond_1

    .line 243
    return v1

    .line 244
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onMediaSaved(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "pictureId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0, p1, p3}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOfflineWatermarkNeeded(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    return-void

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->linkToPictureProcessService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    return-void

    .line 384
    :cond_1
    sget-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/watermark/Watermark;

    .line 385
    .local v3, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {}, Lcom/oneplus/camera/watermark/WatermarkUI;->-getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I

    move-result-object v0

    invoke-virtual {v3}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    iget-object v5, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_SloganAuthorName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/PictureProcessService;->scheduleProcessWatermark(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onOnlineWatermarkControllerFound(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    .line 403
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    new-instance v1, Lcom/oneplus/camera/watermark/WatermarkUI$8;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$8;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 424
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermark()V

    .line 427
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermarkEnableState()V

    .line 395
    return-void
.end method

.method private updateOnlineWatermark()V
    .locals 3

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOnlineWatermarkControllerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateOnlineWatermark()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    sget-object v0, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/watermark/Watermark;

    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_IsSloganAuthorNameEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_SloganAuthorName:Ljava/lang/String;

    :goto_0
    invoke-interface {v2, v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V

    .line 432
    return-void

    .line 441
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateOnlineWatermarkEnableState()V
    .locals 7

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOnlineWatermarkControllerSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 450
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 454
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 455
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v4, :cond_1

    .line 456
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/camera/panorama/PanoramaCaptureMode;

    if-eqz v4, :cond_2

    .line 472
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateOnlineWatermarkEnableState() - Exit"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->exit(I)V

    .line 446
    :goto_0
    return-void

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v4, v5, :cond_1

    .line 458
    if-eqz v0, :cond_1

    .line 459
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v4, v5, :cond_1

    .line 460
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    sget-object v4, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/watermark/WatermarkUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    if-eq v4, v5, :cond_1

    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, "flags":I
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v5, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 465
    .local v2, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v4, v2, Lcom/oneplus/camera/bokeh/BokehCaptureMode;

    if-eqz v4, :cond_3

    .line 466
    const/4 v3, 0x1

    .line 467
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateOnlineWatermarkEnableState() - Enter : "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    iget-object v4, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_OnlineWatermarkController:Lcom/oneplus/camera/watermark/OnlineWatermarkController;

    invoke-interface {v4, v3}, Lcom/oneplus/camera/watermark/OnlineWatermarkController;->enter(I)Z

    goto :goto_0
.end method

.method private updateWatermarkFromSettings()V
    .locals 5

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark"

    const-class v3, Lcom/oneplus/camera/watermark/Watermark;

    sget-object v4, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/watermark/Watermark;

    .line 484
    .local v0, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {}, Lcom/oneplus/camera/watermark/WatermarkUI;->-getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 498
    :goto_0
    sget-object v1, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/watermark/WatermarkUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 480
    return-void

    .line 488
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark.Slogan.Author.Enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_IsSloganAuthorNameEnabled:Z

    .line 489
    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_IsSloganAuthorNameEnabled:Z

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Watermark.Slogan.Author"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_SloganAuthorName:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_SloganAuthorName:Ljava/lang/String;

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyWatermarkIfNeeded(Landroid/graphics/Bitmap;Lcom/oneplus/camera/CaptureHandle;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v2, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    return-object v2

    .line 125
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/oneplus/camera/watermark/WatermarkUI;->isOfflineWatermarkNeeded(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    return-object p1

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 133
    :cond_2
    sget-object v2, Lcom/oneplus/camera/watermark/WatermarkUI;->PROP_WATERMARK:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/watermark/WatermarkUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/watermark/Watermark;

    .line 134
    .local v1, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    invoke-static {}, Lcom/oneplus/camera/watermark/WatermarkUI;->-getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 146
    :goto_0
    return-object p1

    .line 138
    :pswitch_0
    new-instance v0, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v0}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    .line 139
    .local v0, "drawable":Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_SloganAuthorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->apply(Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public excludeCapture(Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->verifyAccess()V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    return-object v3

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    return-object v3

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "excludeCapture() - Capture handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;Lcom/oneplus/camera/CaptureHandle;)V

    .line 169
    .local v0, "handle":Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_ExcludingCaptureHandles:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;

    .line 170
    .local v1, "prevHandle":Lcom/oneplus/camera/watermark/WatermarkUI$ExcludingCaptureHandle;
    if-eqz v1, :cond_2

    .line 172
    iget-object v2, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_ExcludingCaptureHandles:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v1

    .line 175
    :cond_2
    return-object v0
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 253
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 257
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    new-instance v3, Lcom/oneplus/camera/watermark/WatermarkUI$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$2;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-static {v1, v2, p0, v3}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 265
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/watermark/WatermarkUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 268
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateWatermarkFromSettings()V

    .line 271
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/WatermarkUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$3;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 291
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/WatermarkUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$4;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 315
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/watermark/WatermarkUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$5;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 325
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/watermark/WatermarkUI$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$6;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 335
    iget-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_IS_CAPTURE_MODE_SWITCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/watermark/WatermarkUI$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/watermark/WatermarkUI$7;-><init>(Lcom/oneplus/camera/watermark/WatermarkUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermark()V

    .line 367
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/WatermarkUI;->updateOnlineWatermarkEnableState()V

    .line 250
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/watermark/WatermarkUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialize() - No capture mode manager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
