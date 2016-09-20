.class final Lcom/oneplus/camera/AppTrackerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "AppTrackerImpl.java"


# static fields
.field public static final APP_TRACKER_CAMERA_CAPTURE:I = 0x0

.field public static final APP_TRACKER_CAMERA_CAPTURE_MANUAL:I = 0x1

.field public static final APP_TRACKER_CAMERA_CAPTURE_PANORAMA:I = 0x3

.field public static final APP_TRACKER_CAMERA_LAUNCH:I = 0x2

.field public static final APP_TRACKER_CAMERA_SWITCH_CAPTURE_MODE:I = 0x4

.field private static final ONEPLUS_ODM_APP_TRACKER:Ljava/lang/String; = "net.oneplus.odm.insight.tracker.AppTracker"

.field private static final ONEPLUS_ODM_APP_TRACKER_ONEVENT_METHOD:Ljava/lang/String; = "onEvent"


# instance fields
.field private m_AppTracker:Ljava/lang/Object;

.field private m_BurstCount:Ljava/lang/Integer;

.field private m_Camera:Lcom/oneplus/camera/Camera;

.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_ExposureController:Lcom/oneplus/camera/ExposureController;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

.field private m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/camera/Settings;

.field private m_TrackOnEvent:Ljava/lang/reflect/Method;

.field private m_TrackerData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v0, "App Tracker"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 49
    iput-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    .line 50
    iput-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/camera/AppTrackerImpl;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/AppTrackerImpl;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/camera/AppTrackerImpl;)Lcom/oneplus/camera/capturemode/CaptureModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AppTrackerImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    return-object v0
.end method

.method private getDuration(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "recordingTime"    # Ljava/lang/Long;

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 330
    const-string v0, "0s"

    .line 348
    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 333
    const-string v0, "<= 10s"

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 336
    const-string v0, "11s~30s"

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 339
    const-string v0, "30s~60s"

    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 342
    const-string v0, "61s~300s"

    goto :goto_0

    .line 344
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 345
    const-string v0, "301s~600s"

    goto :goto_0

    .line 348
    :cond_5
    const-string v0, "> 600s"

    goto :goto_0
.end method

.method private getPanoramaLastResult(I)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 312
    sparse-switch p1, :sswitch_data_0

    .line 323
    const-string v0, "UNKNOWN_ERROR"

    :goto_0
    return-object v0

    .line 315
    :sswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 317
    :sswitch_1
    const-string v0, "BIG_DISPLACEMENT"

    goto :goto_0

    .line 319
    :sswitch_2
    const-string v0, "WRONG_DIRECTION"

    goto :goto_0

    .line 321
    :sswitch_3
    const-string v0, "MOVE_TOO_FAST"

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_1
        -0xb -> :sswitch_3
        -0xa -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private trackerCameraCapture()Z
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Settings;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v0, :cond_0

    .line 205
    const-class v0, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ExposureController;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    if-nez v0, :cond_2

    .line 209
    :cond_1
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "CaptureMode"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "MediaType"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "CameraLensFacing"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$LensFacing;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Scene"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v3, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    sget-object v3, Lcom/oneplus/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "SelfTimer"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "DigitalZoom"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "FlashMode"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v3, Lcom/oneplus/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v0}, Lcom/oneplus/camera/FlashMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "ExposureCompensation"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    sget-object v3, Lcom/oneplus/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "PictureSize"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "VideoSize"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v1, "PictureCount"

    iget-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Duration"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->getDuration(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsBurst"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsVideoSnapshot"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v3, :cond_3

    const-string v0, "True"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsGridOn"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v3, "Grid.IsVisible"

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "True"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsLocationOn"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v3, "Location.Save"

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "True"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsShutterSoundOn"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    const-string v3, "ShutterSound"

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "True"

    :goto_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 239
    :cond_3
    const-string v0, "False"

    goto :goto_1

    .line 241
    :cond_4
    const-string v0, "False"

    goto :goto_2

    .line 243
    :cond_5
    const-string v0, "False"

    goto :goto_3

    .line 245
    :cond_6
    const-string v0, "False"

    goto :goto_4
.end method

.method private trackerCameraCaptureManual()Z
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    .line 262
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-nez v0, :cond_0

    .line 263
    const-class v0, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/FocusExposureIndicator;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    if-nez v0, :cond_2

    .line 266
    :cond_1
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "ISO"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const-string v0, "Auto"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "WhiteBalance"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Focus"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    if-eq v0, v3, :cond_4

    const-string v0, "Auto"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsAeAfSeparated"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/oneplus/camera/ui/FocusExposureIndicator;

    sget-object v3, Lcom/oneplus/camera/ui/FocusExposureIndicator;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/ui/FocusExposureIndicator;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_4
    const-string v0, "Manual"

    goto :goto_2
.end method

.method private trackerCameraCapturePanorama()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    if-nez v0, :cond_0

    .line 283
    const-class v0, Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/panorama/PanoramaUI;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    if-nez v0, :cond_1

    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "Result"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->getPanoramaLastResult(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "IsStoppedByUser"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "CapturedLength"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/oneplus/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private trackerCameraLaunch()Z
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v1, "StartMode"

    iget-object v2, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/StartMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method private trackerCameraSwitchCaptureMode()Z
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-nez v0, :cond_0

    .line 301
    const-class v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-nez v0, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Camera.SwitchCaptureMode"

    iget-object v0, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onEvent(I)V
    .locals 8
    .param p1, "action"    # I

    .prologue
    .line 152
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->TAG:Ljava/lang/String;

    const-string v4, "onEvent failed"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "trackerAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 161
    .local v1, "isSaved":Z
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracker onEvent failed, aciton :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trackerAction :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_0
    const-string v2, "Camera.Capture"

    .line 165
    invoke-direct {p0}, Lcom/oneplus/camera/AppTrackerImpl;->trackerCameraCapture()Z

    move-result v1

    .line 166
    goto :goto_1

    .line 168
    :pswitch_1
    const-string v2, "Camera.Capture.Manua"

    .line 169
    invoke-direct {p0}, Lcom/oneplus/camera/AppTrackerImpl;->trackerCameraCaptureManual()Z

    move-result v1

    .line 170
    goto :goto_1

    .line 172
    :pswitch_2
    const-string v2, "Camera.Launch"

    .line 173
    invoke-direct {p0}, Lcom/oneplus/camera/AppTrackerImpl;->trackerCameraLaunch()Z

    move-result v1

    .line 174
    goto :goto_1

    .line 176
    :pswitch_3
    const-string v2, "Camera.Capture.Panorama"

    .line 177
    invoke-direct {p0}, Lcom/oneplus/camera/AppTrackerImpl;->trackerCameraCapturePanorama()Z

    move-result v1

    .line 178
    goto :goto_1

    .line 180
    :pswitch_4
    const-string v2, "Camera.SwitchCaptureMode"

    .line 181
    invoke-direct {p0}, Lcom/oneplus/camera/AppTrackerImpl;->trackerCameraSwitchCaptureMode()Z

    move-result v1

    .line 182
    goto :goto_1

    .line 193
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    :try_start_0
    const-string v3, "net.oneplus.odm.insight.tracker.AppTracker"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 79
    .local v1, "appTrackerContructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v3, "onEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oneplus/camera/AppTrackerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/AppTrackerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 90
    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 91
    const-class v3, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraPreviewGrid;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraPreviewGrid:Lcom/oneplus/camera/ui/CameraPreviewGrid;

    .line 92
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Settings;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/camera/Settings;

    .line 93
    const-class v3, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 94
    const-class v3, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ZoomController;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 95
    const-class v3, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/FlashController;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 96
    const-class v3, Lcom/oneplus/camera/ExposureController;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ExposureController;

    iput-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_ExposureController:Lcom/oneplus/camera/ExposureController;

    .line 98
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/AppTrackerImpl$1;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/AppTrackerImpl$1;-><init>(Lcom/oneplus/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 119
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/AppTrackerImpl$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/AppTrackerImpl$2;-><init>(Lcom/oneplus/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 131
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/oneplus/camera/AppTrackerImpl$3;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/AppTrackerImpl$3;-><init>(Lcom/oneplus/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 140
    iget-object v3, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/AppTrackerImpl$4;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/AppTrackerImpl$4;-><init>(Lcom/oneplus/camera/AppTrackerImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 148
    .end local v0    # "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "appTrackerContructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iput-object v7, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    .line 84
    iput-object v7, p0, Lcom/oneplus/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
