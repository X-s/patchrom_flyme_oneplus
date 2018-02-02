.class public Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
.super Lcom/oneplus/camera/capturemode/SimpleCaptureMode;
.source "PhotoCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;,
        Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I = null

.field private static final DURATION_SHOW_PROCESSING_DIALOG_DELAY:J = 0x4b0L

.field private static final SETTINGS_KEY_SCENE_BACK:Ljava/lang/String; = "Scene.Back"

.field private static final SETTINGS_KEY_SCENE_FRONT:Ljava/lang/String; = "Scene.Front"


# instance fields
.field private final m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSceneResetNeeded:Z

.field private final m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private final m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private final m_SceneUserSelectedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private final m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

.field private final m_ShutterHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_WaitForSceneModeReady:Z


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/16 v2, 0xa

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->SWITCH_MODE_LARGE_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->showProcessingDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p1, "oldState"    # Lcom/oneplus/camera/OperationState;
    .param p2, "newState"    # Lcom/oneplus/camera/OperationState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onCameraPreviewStateChanged(Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Z)V
    .locals 0
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onKeepLastCaptureSettingsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 0
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onPrepareAdvancedSettings(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneChangedByUser(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 0
    .param p1, "sceneManager"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "Scene.Back"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "Scene.Front"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 174
    const-string/jumbo v0, "photo"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "customSettingsName"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v0, "Photo"

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Lcom/oneplus/camera/media/MediaType;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$1;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 80
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$2;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 88
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$3;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 96
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$4;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 104
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$5;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 112
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$6;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneUserSelectedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 120
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$7;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 131
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$8;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    .line 139
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$9;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 147
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$10;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    .line 158
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    .line 189
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 190
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraPreviewStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 191
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 192
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 195
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 201
    const-class v0, Lcom/oneplus/camera/scene/SceneManager;

    new-instance v1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$12;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$12;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    invoke-static {p1, v0, p1, v1}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 183
    return-void
.end method

.method private applyScene(Lcom/oneplus/camera/Camera;)V
    .locals 13
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v12, 0x0

    .line 218
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-nez v10, :cond_0

    .line 220
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "applyScene() - No SceneManager interface"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 227
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "applyScene() - No camera"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/OperationState;

    .line 233
    .local v5, "previewState":Lcom/oneplus/camera/OperationState;
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v10

    invoke-virtual {v5}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 246
    iget-boolean v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    if-eqz v10, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->resetToDefaultScene()V

    .line 249
    iput-boolean v12, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 253
    :cond_2
    sget-object v10, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v10}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$LensFacing;

    .line 254
    .local v4, "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 255
    .local v7, "sceneId":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/base/Settings;

    .line 258
    .local v9, "settings":Lcom/oneplus/base/Settings;
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 268
    :goto_0
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "applyScene() - Scene id is empty, use settings: "

    invoke-static {v10, v11, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    .end local v9    # "settings":Lcom/oneplus/base/Settings;
    :goto_1
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v10, :cond_5

    .line 277
    if-nez v7, :cond_8

    .line 279
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 280
    .local v8, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    const/4 v0, 0x0

    .line 281
    .local v0, "autoHdr":Lcom/oneplus/camera/scene/Scene;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 283
    .local v2, "iter":Lcom/oneplus/camera/scene/Scene;
    instance-of v10, v2, Lcom/oneplus/camera/scene/AutoHdrScene;

    if-eqz v10, :cond_3

    .line 285
    move-object v0, v2

    .line 289
    .end local v0    # "autoHdr":Lcom/oneplus/camera/scene/Scene;
    .end local v2    # "iter":Lcom/oneplus/camera/scene/Scene;
    :cond_4
    if-eqz v0, :cond_7

    .line 290
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    invoke-interface {v10, v0, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 293
    :goto_2
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    const-string/jumbo v11, "Auto-HDR"

    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v3    # "iter$iterator":Ljava/util/Iterator;
    .end local v8    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_5
    :goto_3
    return-void

    .line 237
    .end local v4    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .end local v7    # "sceneId":Ljava/lang/String;
    :pswitch_0
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "applyScene() - Preview stopped, wait for preview stating"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    .line 239
    return-void

    .line 261
    .restart local v4    # "lensFacing":Lcom/oneplus/camera/Camera$LensFacing;
    .restart local v7    # "sceneId":Ljava/lang/String;
    .restart local v9    # "settings":Lcom/oneplus/base/Settings;
    :pswitch_1
    const-string/jumbo v10, "Scene.Back"

    invoke-virtual {v9, v10}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 264
    :pswitch_2
    const-string/jumbo v10, "Scene.Front"

    invoke-virtual {v9, v10}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 271
    .end local v9    # "settings":Lcom/oneplus/base/Settings;
    :cond_6
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "applyScene() - Scene id: "

    invoke-static {v10, v11, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 292
    .restart local v3    # "iter$iterator":Ljava/util/Iterator;
    .restart local v8    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_7
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v10, v11, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    goto :goto_2

    .line 295
    .end local v3    # "iter$iterator":Ljava/util/Iterator;
    .end local v8    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    :cond_8
    sget-object v10, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    sget-object v11, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 296
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    invoke-interface {v10, v11, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    goto :goto_3

    .line 299
    :cond_9
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v11}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 300
    .restart local v8    # "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/scene/Scene;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_5

    .line 302
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/scene/Scene;

    .line 303
    .local v6, "scene":Lcom/oneplus/camera/scene/Scene;
    sget-object v10, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v6, v10}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 305
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    invoke-interface {v10, v6, v12}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 306
    iget-object v10, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "applyScene() - Fail to change scene to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 300
    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isRawCaptureEnabled()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 351
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityStateChanged() - isRawCaptureEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraChanged() - Reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 369
    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 372
    invoke-direct {p0, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 362
    :cond_0
    return-void
.end method

.method private onCameraPreviewStateChanged(Lcom/oneplus/camera/OperationState;Lcom/oneplus/camera/OperationState;)V
    .locals 1
    .param p1, "oldState"    # Lcom/oneplus/camera/OperationState;
    .param p2, "newState"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 380
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_WaitForSceneModeReady:Z

    .line 378
    :cond_0
    return-void
.end method

.method private onKeepLastCaptureSettingsChanged(Z)V
    .locals 1
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_IsSceneResetNeeded:Z

    .line 440
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 435
    :cond_0
    return-void
.end method

.method private onPhotoCaptureStateChanged(Lcom/oneplus/camera/PhotoCaptureState;)V
    .locals 2
    .param p1, "captureState"    # Lcom/oneplus/camera/PhotoCaptureState;

    .prologue
    .line 450
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPrepareAdvancedSettings(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 467
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 469
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const-string/jumbo v3, "IsRawCaptureVisible"

    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const-string/jumbo v1, "IsSmileCaptureVisible"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 470
    goto :goto_0
.end method

.method private onSceneAdded(Lcom/oneplus/camera/scene/Scene;)V
    .locals 5
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 511
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 512
    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    return-void

    .line 519
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    .local v1, "sceneId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 521
    return-void

    .line 522
    :cond_2
    sget-object v2, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSceneAdded() - Change scene to "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSceneAdded() - Fail to change scene to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_3
    return-void
.end method

.method private onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    .locals 5
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 538
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 539
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 541
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSceneChanged() - Ignore when switching camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 548
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$LensFacing;

    sget-object v3, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method private onSceneChangedByUser(Lcom/oneplus/camera/scene/Scene;)V
    .locals 6
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 558
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 560
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 561
    return-void

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 563
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_SWITCHING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    iget-object v4, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onSceneChangedByUser() - Ignore when switching camera"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void

    .line 570
    :cond_2
    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    .line 571
    .local v3, "settings":Lcom/oneplus/base/Settings;
    sget-object v4, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    .local v2, "sceneId":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v5

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v4}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 575
    :pswitch_0
    const-string/jumbo v4, "Scene.Back"

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 578
    :pswitch_1
    const-string/jumbo v4, "Scene.Front"

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onSceneManagerFound(Lcom/oneplus/camera/scene/SceneManager;)V
    .locals 2
    .param p1, "sceneManager"    # Lcom/oneplus/camera/scene/SceneManager;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 589
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 590
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneUserSelectedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 591
    sget-object v0, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/scene/SceneManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 594
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 585
    :cond_0
    return-void
.end method

.method private resetToDefaultScene()V
    .locals 9

    .prologue
    .line 641
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    sget-object v1, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 642
    .local v7, "noSceneId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/base/Settings;

    .line 643
    .local v8, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v0, "Scene.Back"

    invoke-virtual {v8, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "sceneIdSettingsBack":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    :cond_0
    :goto_0
    const-string/jumbo v0, "Scene.Front"

    invoke-virtual {v8, v0}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "sceneIdSettingsFront":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetToDefaultScene() - Reset to default scene: "

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    const-string/jumbo v3, ", settings back: "

    const-string/jumbo v5, ", settings front: "

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    return-void

    .line 646
    .end local v6    # "sceneIdSettingsFront":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "Scene.Back"

    const-string/jumbo v1, "Auto-HDR"

    invoke-virtual {v8, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v2, "Auto-HDR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 652
    .restart local v6    # "sceneIdSettingsFront":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "Scene.Front"

    const-string/jumbo v1, "Auto-HDR"

    invoke-virtual {v8, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneIds:Ljava/util/Map;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    const-string/jumbo v2, "Auto-HDR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRawCaptureState() - Set raw capture of "

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    new-instance v0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$13;-><init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-class v1, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    .line 693
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-nez v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showProcessingDialog() - No ProcessingDialog interface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 683
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 327
    invoke-static {}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 330
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z
    .locals 5
    .param p1, "prevMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 393
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onEnter(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const/4 v1, 0x0

    return v1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 398
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->applyScene(Lcom/oneplus/camera/Camera;)V

    .line 404
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 407
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 410
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnter() - isRawCaptureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isRawCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 414
    return v4
.end method

.method protected onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V
    .locals 3
    .param p1, "nextMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;
    .param p2, "flags"    # I

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onExit(Lcom/oneplus/camera/capturemode/CaptureMode;I)V

    .line 424
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 425
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ActivityStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 426
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_PrepareAdvancedSettingsHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 429
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onExit() - reset raw capture property"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V

    .line 420
    return-void
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 484
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 485
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 486
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_CaptureStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 489
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShutterHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 490
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 493
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE_USER_SELECTED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneUserSelectedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 494
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->EVENT_SCENE_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v1}, Lcom/oneplus/base/Settings;->release()V

    .line 502
    :cond_1
    invoke-super {p0}, Lcom/oneplus/camera/capturemode/SimpleCaptureMode;->onRelease()V

    .line 480
    return-void
.end method

.method protected onShutter(Lcom/oneplus/camera/CaptureEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/camera/CaptureEventArgs;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->isEntered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 604
    return-void

    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureEventArgs;->isBurstPhotoCapture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    return-void

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v3, :cond_3

    .line 611
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/scene/Scene;

    .line 612
    .local v2, "scene":Lcom/oneplus/camera/scene/Scene;
    instance-of v3, v2, Lcom/oneplus/camera/scene/PhotoScene;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 614
    check-cast v1, Lcom/oneplus/camera/scene/PhotoScene;

    .line 615
    .local v1, "photoScene":Lcom/oneplus/camera/scene/PhotoScene;
    invoke-virtual {v1}, Lcom/oneplus/camera/scene/PhotoScene;->needToShowProcessingDialog()Z

    move-result v3

    if-nez v3, :cond_4

    .line 616
    return-void

    .line 620
    .end local v1    # "photoScene":Lcom/oneplus/camera/scene/PhotoScene;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onShutter() - Invalid scene in photo capture mode, scene : "

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    return-void

    .line 626
    .end local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onShutter() - No scene manager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    .line 631
    .restart local v1    # "photoScene":Lcom/oneplus/camera/scene/PhotoScene;
    .restart local v2    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 632
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 633
    iget-object v3, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->m_ShowProcessingDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-static {v0, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 600
    return-void
.end method
