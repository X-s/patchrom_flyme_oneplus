.class public Lcom/oneplus/camera/OPPictureProcessService;
.super Landroid/app/Service;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/OPPictureProcessService$1;,
        Lcom/oneplus/camera/OPPictureProcessService$2;,
        Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;,
        Lcom/oneplus/camera/OPPictureProcessService$ProcessState;,
        Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;,
        Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-watermark-WatermarkSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field private static final CAMERA_MSG_OPEN_ONEPLUS_SERVICE_CAMERA:I = -0x50911

.field private static final CAMERA_MSG_RELEASE_ONEPLUS_SERVICE_CAMERA:I = -0x50912

.field private static final CAMERA_MSG_START_THREAD_MONITOR:I = -0x50913

.field private static final CAMERA_MSG_STOP_THREAD_MONITOR:I = -0x50914

.field private static final INTENT_THUMBNAIL_CREATED:Ljava/lang/String; = "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

.field private static final MSG_CLEAR_PICTURE_TABLES:I = -0x5573a

.field private static final MSG_FAKE_ON_PROCESSED_PICTURE_RECEIVED:I = -0x55740

.field private static final MSG_ON_PROCESSED_PICTURE_RECEIVED:I = -0x5573f

.field private static final MSG_ON_PROCESS_WATERMARK_COMPLETED:I = -0x5574e

.field private static final MSG_ON_REPLACE_PICTURE_COMPLETED:I = -0x55744

.field private static final MSG_SCHEDULE_PROCESS_WATERMARK:I = -0x1fbd5

.field private static final MSG_UNPROCESSED_PICTURE_RECEIVED:I = -0x1fbd1

.field private static final MSG_UNPROCESSED_PICTURE_SAVED:I = -0x1fbd2

.field private static final OFFLINE_JPEG_EXIF_TAG_ID:I = 0x1

.field private static final RETRY_COUNT_FOR_SAVING_DATA:I = 0x5

.field private static final SLEEP_TIME_FOR_NEXT_WRITE_DATA:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_TO_CLEAR_PICTURE_TABLES:J = 0x493e0L

.field private static final TIMEOUT_TO_WAIT_LOCKING_FILE:J = 0x4e20L

.field private static final WATERMARK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final WATERMARK_MEMORY_USAGE:Lcom/oneplus/base/MemoryUsage;


# instance fields
.field private m_ActiveCounts:I

.field private m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field m_CameraHandler:Landroid/os/Handler;

.field private m_MainHandler:Landroid/os/Handler;

.field private m_Messenger:Landroid/os/Messenger;

.field private m_OpCameraService:Landroid/hardware/Camera;

.field private m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_ProcessingPictureInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ReplaceFileHandler:Landroid/os/Handler;

.field private m_TempProcessedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/OPPictureProcessService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->values()[Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->values()[Lcom/oneplus/camera/PictureProcessService$ProcessType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/PictureProcessService$ProcessType;->OFFLINE:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-virtual {v1}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PictureProcessService$ProcessType;->WATERMARK:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-virtual {v1}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

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

    const/4 v2, 0x7

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
    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-camera-watermark-WatermarkSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-media-IfdSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-media-IfdSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/media/Ifd;->values()[Lcom/oneplus/media/Ifd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->-com-oneplus-media-IfdSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/OPPictureProcessService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->openOnePlusServiceCamera()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/OPPictureProcessService;Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->processWatermark(Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/OPPictureProcessService;Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->replaceProcessedPicture(Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-class v0, Lcom/oneplus/camera/OPPictureProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 78
    new-instance v0, Lcom/oneplus/base/MemoryUsage;

    const-wide/32 v2, 0x1c200000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/base/MemoryUsage;-><init>(J)V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_MEMORY_USAGE:Lcom/oneplus/base/MemoryUsage;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService$1;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 101
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService$2;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_TempProcessedInfos:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method private completeServiceTask()V
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "completeServiceTask() - Stop self"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v1, -0x5573a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/camera/OPPictureProcessService;->stopSelf()V

    .line 248
    :cond_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 264
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 344
    const/4 v0, 0x0

    return v0

    .line 268
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->openOnePlusServiceCamera()V

    .line 346
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 273
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->releaseOnePlusServiceCamera()V

    goto :goto_0

    .line 278
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 284
    :sswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 289
    :sswitch_4
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "handleMessage() - Timeout to clear picture tables"

    invoke-static {v0, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_TempProcessedInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    goto :goto_0

    .line 302
    :sswitch_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/camera/OPPictureProcessService;->onProcessedPictureReceived([B)V

    goto :goto_0

    .line 307
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/OPPictureProcessService;->onProcessWatermarkCompleted(Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;)V

    goto :goto_0

    .line 312
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/OPPictureProcessService;->onReplacePictureCompleted(Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V

    goto :goto_0

    .line 317
    :sswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 318
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "pictureId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "pictureId":Ljava/lang/String;
    const-string/jumbo v0, "filePath"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "filePath":Ljava/lang/String;
    const-string/jumbo v0, "watermark"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/watermark/Watermark;

    .line 321
    .local v3, "watermark":Lcom/oneplus/camera/watermark/Watermark;
    const-string/jumbo v0, "watermarkBounds"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 322
    .local v4, "bounds":Landroid/graphics/Rect;
    const-string/jumbo v0, "watermarkText"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "text":Ljava/lang/String;
    move-object v0, p0

    .line 323
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/OPPictureProcessService;->scheduleProcessWatermark(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Landroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v1    # "pictureId":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "watermark":Lcom/oneplus/camera/watermark/Watermark;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 329
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "pictureId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .restart local v1    # "pictureId":Ljava/lang/String;
    const-string/jumbo v0, "halPictureId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "halPictureId":Ljava/lang/String;
    invoke-virtual {p0, v1, v8}, Lcom/oneplus/camera/OPPictureProcessService;->onUnprocessedPictureReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v1    # "pictureId":Ljava/lang/String;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "halPictureId":Ljava/lang/String;
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 337
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "pictureId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .restart local v1    # "pictureId":Ljava/lang/String;
    const-string/jumbo v0, "filePath"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "filePath":Ljava/lang/String;
    const-string/jumbo v0, "contentUri"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 340
    .local v7, "contentUri":Landroid/net/Uri;
    invoke-virtual {p0, v1, v2, v7}, Lcom/oneplus/camera/OPPictureProcessService;->onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        -0x5574e -> :sswitch_6
        -0x55744 -> :sswitch_7
        -0x55740 -> :sswitch_5
        -0x5573f -> :sswitch_5
        -0x5573a -> :sswitch_4
        -0x50914 -> :sswitch_3
        -0x50913 -> :sswitch_2
        -0x50912 -> :sswitch_1
        -0x50911 -> :sswitch_0
        -0x1fbd5 -> :sswitch_8
        -0x1fbd2 -> :sswitch_a
        -0x1fbd1 -> :sswitch_9
    .end sparse-switch
.end method

.method private onProcessWatermarkCompleted(Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;)V
    .locals 8
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 534
    .local v7, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-nez v7, :cond_1

    .line 536
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProcessWatermarkCompleted() - Cannot find picture info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void

    .line 539
    :cond_1
    invoke-virtual {v7}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->getToken()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->token:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    .line 542
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 573
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] onProcessWatermarkCompleted() - Offline is processing, drop watermark: "

    invoke-static {v1, v2, v3, v4, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    :goto_0
    return-void

    .line 548
    :pswitch_0
    iget-object v1, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->resultBuffer:[B

    if-nez v1, :cond_2

    .line 551
    iget-object v1, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->fileMemoryUsageHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 554
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "<< [PictureInfo \'"

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] onProcessWatermarkCompleted() - Processed watermark is empty, drop watermark: "

    invoke-static {v1, v2, v3, v4, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    return-void

    .line 560
    :cond_2
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v1, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 561
    iget-object v1, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->resultBuffer:[B

    iput-object v1, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBuffer:[B

    .line 563
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] onProcessWatermarkCompleted() - "

    invoke-static {v1, v2, v3, v4, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    iget-object v2, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    iget-object v4, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->contentUri:Landroid/net/Uri;

    iget-object v5, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBuffer:[B

    sget-object v6, Lcom/oneplus/camera/PictureProcessService$ProcessType;->WATERMARK:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BLcom/oneplus/camera/PictureProcessService$ProcessType;)V

    .line 567
    .local v0, "replaceTask":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    iget-object v1, p1, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->fileMemoryUsageHandle:Lcom/oneplus/base/Handle;

    iput-object v1, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedImageMemoryUsageHandle:Lcom/oneplus/base/Handle;

    .line 568
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 579
    .end local v0    # "replaceTask":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    :cond_3
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] onProcessWatermarkCompleted() - Token is invalid, drop watermark: "

    invoke-static {v1, v2, v3, v4, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onProcessedPictureReceived([B)V
    .locals 20
    .param p1, "data"    # [B

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 443
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onProcessedPictureReceived() - data is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void

    .line 448
    :cond_0
    const-string/jumbo v12, ""

    .line 449
    .local v12, "halPictureId":Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v16

    .line 450
    .local v16, "metaData":Lcom/oneplus/media/PhotoMetadata;
    sget-object v3, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 451
    .local v15, "markerNote":[B
    if-eqz v15, :cond_4

    .line 454
    const/4 v4, 0x0

    const/4 v10, 0x0

    .local v10, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_0
    new-instance v11, Lcom/oneplus/media/IfdEntryEnumerator;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v6, 0x0

    invoke-direct {v11, v3, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 456
    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v11, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v9

    .line 465
    .local v9, "dataInteger":[I
    if-eqz v9, :cond_1

    array-length v3, v9

    if-lez v3, :cond_1

    .line 466
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v12

    goto :goto_0

    .line 478
    .end local v9    # "dataInteger":[I
    :cond_2
    if-eqz v11, :cond_3

    :try_start_2
    invoke-virtual {v11}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 476
    :catch_0
    move-exception v18

    .local v18, "tr":Ljava/lang/Throwable;
    move-object v10, v11

    .line 477
    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onProcessedPictureReceived() - Error when IFD enumerator"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    .end local v18    # "tr":Ljava/lang/Throwable;
    :cond_4
    const/16 v17, 0x0

    .line 483
    .local v17, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "info$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 485
    .local v13, "info":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    iget-object v3, v13, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->halPictureId:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 487
    move-object/from16 v17, v13

    .line 491
    .end local v13    # "info":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    .end local v17    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    :cond_6
    if-eqz v17, :cond_b

    .line 494
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 495
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    .line 498
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 500
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "[PictureInfo \'"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v6, "\'] onProcessedPictureReceived() - Replace: "

    move-object/from16 v0, v17

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    new-instance v2, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    sget-object v8, Lcom/oneplus/camera/PictureProcessService$ProcessType;->OFFLINE:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BLcom/oneplus/camera/PictureProcessService$ProcessType;)V

    .line 504
    .local v2, "task":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .end local v2    # "task":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    :goto_3
    return-void

    .line 478
    .end local v14    # "info$iterator":Ljava/util/Iterator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_2
    move-exception v3

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_5
    if-eqz v10, :cond_7

    :try_start_5
    invoke-virtual {v10}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_6
    if-eqz v4, :cond_9

    :try_start_6
    throw v4

    .line 476
    :catch_3
    move-exception v18

    .restart local v18    # "tr":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 478
    .end local v18    # "tr":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    if-nez v4, :cond_8

    move-object v4, v5

    goto :goto_6

    :cond_8
    if-eq v4, v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 507
    .restart local v14    # "info$iterator":Ljava/util/Iterator;
    :cond_a
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "[PictureInfo \'"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v6, "\'] onProcessedPictureReceived() - Wait for unprocessed picture saved: "

    move-object/from16 v0, v17

    invoke-static {v3, v4, v5, v6, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 511
    :cond_b
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onProcessedPictureReceived() - Cannot find picture info, save processed picture: "

    invoke-static {v3, v4, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    new-instance v17, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;-><init>(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V

    .line 515
    .local v17, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->halPictureId:Ljava/lang/String;

    .line 516
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 517
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_TempProcessedInfos:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 478
    .end local v14    # "info$iterator":Ljava/util/Iterator;
    .end local v17    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_1
    move-exception v3

    goto :goto_5

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_2
    move-exception v3

    move-object v10, v11

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v10, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_5

    .end local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v10    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_4

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 461
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private onReplacePictureCompleted(Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V
    .locals 12
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    .prologue
    const/4 v10, 0x0

    .line 587
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    iget-object v9, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 588
    .local v6, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-eqz v6, :cond_4

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "completePictureInfo":Z
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues()[I

    move-result-object v8

    iget-object v9, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->type:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-virtual {v9}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 635
    :goto_0
    if-eqz v0, :cond_4

    .line 638
    iget-object v2, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->contentUri:Landroid/net/Uri;

    .line 639
    .local v2, "contentUri":Landroid/net/Uri;
    iget-object v4, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->filePath:Ljava/lang/String;

    .line 642
    .local v4, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    const-string/jumbo v8, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 644
    :cond_0
    const-string/jumbo v8, "image/jpeg"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :goto_1
    const-string/jumbo v8, "filePath"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string/jumbo v8, "pictureId"

    iget-object v9, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v7, "processTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v9, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v8, v9, :cond_1

    .line 651
    sget-object v8, Lcom/oneplus/camera/PictureProcessService$ProcessType;->OFFLINE:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-virtual {v8}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_1
    iget-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v9, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v8, v9, :cond_2

    .line 653
    sget-object v8, Lcom/oneplus/camera/PictureProcessService$ProcessType;->WATERMARK:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-virtual {v8}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_2
    const-string/jumbo v8, "processTypes"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPPictureProcessService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "processTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget-object v1, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedThumbImage:[B

    .line 664
    .local v1, "compressedThumbImage":[B
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const-string/jumbo v8, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 680
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    iget-object v9, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v8, p1, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedImageMemoryUsageHandle:Lcom/oneplus/base/Handle;

    invoke-static {v8}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 685
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "<< [PictureInfo \'"

    iget-object v10, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v11, "\'] onReplacePictureCompleted() - "

    invoke-static {v8, v9, v10, v11, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    .end local v0    # "completePictureInfo":Z
    .end local v1    # "compressedThumbImage":[B
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 691
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    .line 584
    :goto_4
    return-void

    .line 597
    .restart local v0    # "completePictureInfo":Z
    :pswitch_0
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 600
    iget-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v9, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v8, v9, :cond_5

    .line 601
    invoke-direct {p0, v6}, Lcom/oneplus/camera/OPPictureProcessService;->rescheduleProcessWatermark(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V

    goto/16 :goto_0

    .line 603
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 608
    :pswitch_1
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues()[I

    move-result-object v8

    iget-object v9, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v9}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 623
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 624
    iput-object v10, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBuffer:[B

    .line 626
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "[PictureInfo \'"

    iget-object v10, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v11, "\'] onReplacePictureCompleted() - Offline is still processing, drop watermark: "

    invoke-static {v8, v9, v10, v11, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 614
    :pswitch_2
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->COMPLETED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v8, v6, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 617
    const/4 v0, 0x1

    .line 618
    goto/16 :goto_0

    .line 646
    .restart local v2    # "contentUri":Landroid/net/Uri;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_1
    const-string/jumbo v8, "image/jpeg"

    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 658
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 659
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onReplacePictureCompleted() - Fail to send clear cache broadcast"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 668
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "compressedThumbImage":[B
    :cond_7
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "image/jpeg"

    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string/jumbo v8, "compressed-thumbnail-image"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPPictureProcessService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 674
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 675
    .restart local v3    # "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onReplacePictureCompleted() - Fail to send broadcast"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 693
    .end local v0    # "completePictureInfo":Z
    .end local v1    # "compressedThumbImage":[B
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_8
    const-wide/32 v8, 0x493e0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/OPPictureProcessService;->resetTimeoutToClearPictureTables(J)V

    goto :goto_4

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 608
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private openOnePlusServiceCamera()V
    .locals 8

    .prologue
    .line 783
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :try_start_0
    const-class v3, Landroid/hardware/Camera;

    const-string/jumbo v4, "openOPService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 789
    .local v0, "openOpServiceMethod":Ljava/lang/reflect/Method;
    const-class v3, Landroid/hardware/Camera;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera;

    iput-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v0    # "openOpServiceMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 799
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Camera is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 792
    :catch_0
    move-exception v2

    .line 793
    .local v2, "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Failed to open op camera service"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 805
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setOPJpegCallback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/hardware/Camera$PictureCallback;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 806
    .local v1, "setCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    .end local v1    # "setCallbackMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 812
    :catch_1
    move-exception v2

    .line 813
    .restart local v2    # "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Failed prepare opservice camera"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processWatermark(Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;)V
    .locals 26
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    .prologue
    .line 823
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 824
    .local v22, "time":J
    const/4 v9, 0x0

    .line 829
    .local v9, "bitmapMemoryUsageHandle":Lcom/oneplus/base/Handle;
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Start, "

    move-object/from16 v0, p1

    invoke-static {v2, v3, v4, v5, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 832
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->token:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 953
    :cond_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 833
    return-void

    .line 832
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->watermark:Lcom/oneplus/camera/watermark/Watermark;

    if-eqz v2, :cond_0

    .line 836
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->filePath:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v15

    .line 837
    .local v15, "size":Landroid/util/Size;
    if-nez v15, :cond_2

    .line 839
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Decode image size failed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 840
    return-void

    .line 844
    :cond_2
    :try_start_2
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_MEMORY_USAGE:Lcom/oneplus/base/MemoryUsage;

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/base/MemoryUsage;->requestMemoryUsage(J)Lcom/oneplus/base/Handle;

    move-result-object v9

    .line 847
    .local v9, "bitmapMemoryUsageHandle":Lcom/oneplus/base/Handle;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->filePath:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const/16 v6, 0x48

    invoke-static {v2, v4, v5, v6, v3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 848
    .local v14, "image":Landroid/graphics/Bitmap;
    if-nez v14, :cond_3

    .line 850
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Decode image failed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 851
    return-void

    .line 855
    :cond_3
    const/16 v16, 0x0

    .line 858
    .local v16, "srcExif":Landroid/media/ExifInterface;
    :try_start_3
    new-instance v16, Landroid/media/ExifInterface;

    .end local v16    # "srcExif":Landroid/media/ExifInterface;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->filePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    .local v16, "srcExif":Landroid/media/ExifInterface;
    :try_start_4
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-camera-watermark-WatermarkSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->watermark:Lcom/oneplus/camera/watermark/Watermark;

    invoke-virtual {v3}, Lcom/oneplus/camera/watermark/Watermark;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 890
    :goto_0
    :try_start_5
    const-string/jumbo v2, "Watermark"

    const-string/jumbo v3, "tmp"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v21

    .line 899
    :goto_1
    const/4 v3, 0x0

    const/16 v19, 0x0

    .local v19, "stream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v20, Ljava/io/FileOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 901
    .end local v19    # "stream":Ljava/io/FileOutputStream;
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_7
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v14, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 907
    if-eqz v20, :cond_4

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_8

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 904
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Throwable;
    move-object/from16 v19, v20

    .line 905
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_a
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Error to compress image"

    invoke-static {v2, v3, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 906
    return-void

    .line 861
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v16    # "srcExif":Landroid/media/ExifInterface;
    :catch_1
    move-exception v12

    .line 862
    .local v12, "ex":Ljava/lang/Throwable;
    :try_start_b
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processWatermark() - Error to create EXIF, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 863
    return-void

    .line 873
    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v16    # "srcExif":Landroid/media/ExifInterface;
    :pswitch_0
    :try_start_c
    new-instance v10, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v10}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    .line 874
    .local v10, "drawable":Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v10, v14}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->apply(Landroid/graphics/Bitmap;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 881
    .end local v10    # "drawable":Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;
    :catch_2
    move-exception v11

    .line 882
    .restart local v11    # "e":Ljava/lang/Throwable;
    :try_start_d
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processWatermark() - Error to apply watermark, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 883
    return-void

    .line 893
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v12

    .line 894
    .restart local v12    # "ex":Ljava/lang/Throwable;
    const/16 v21, 0x0

    .line 895
    .local v21, "tempOutputFile":Ljava/io/File;
    :try_start_e
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Fail to create temporary output file"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 952
    .end local v9    # "bitmapMemoryUsageHandle":Lcom/oneplus/base/Handle;
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v14    # "image":Landroid/graphics/Bitmap;
    .end local v15    # "size":Landroid/util/Size;
    .end local v16    # "srcExif":Landroid/media/ExifInterface;
    .end local v21    # "tempOutputFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    move-object/from16 v24, v2

    .line 953
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 952
    throw v24

    .line 907
    .restart local v9    # "bitmapMemoryUsageHandle":Lcom/oneplus/base/Handle;
    .restart local v14    # "image":Landroid/graphics/Bitmap;
    .restart local v15    # "size":Landroid/util/Size;
    .restart local v16    # "srcExif":Landroid/media/ExifInterface;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v19    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .end local v19    # "stream":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_5
    if-eqz v19, :cond_5

    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_5
    :goto_6
    if-eqz v3, :cond_7

    :try_start_11
    throw v3

    .line 904
    :catch_6
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 907
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v4

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_6

    :cond_6
    if-eq v3, v4, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v2
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 910
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_12
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 911
    const/4 v14, 0x0

    .line 912
    .local v14, "image":Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 915
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_MEMORY_USAGE:Lcom/oneplus/base/MemoryUsage;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/base/MemoryUsage;->requestMemoryUsage(J)Lcom/oneplus/base/Handle;

    move-result-object v13

    .line 916
    .local v13, "fileMemoryUsageHandle":Lcom/oneplus/base/Handle;
    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->fileMemoryUsageHandle:Lcom/oneplus/base/Handle;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 919
    if-eqz v16, :cond_9

    .line 923
    :try_start_13
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Copy EXIF [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    sget-object v2, Lcom/oneplus/media/ImageUtils;->PHOTO_EXIF_ATTRS:[Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/oneplus/media/ImageUtils;->copyExif(Landroid/media/ExifInterface;Ljava/io/File;[Ljava/lang/String;)Z

    .line 925
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Copy EXIF [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 934
    :cond_9
    :goto_7
    if-eqz v21, :cond_b

    .line 936
    const/4 v3, 0x0

    const/16 v17, 0x0

    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_14
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 938
    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v18, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_15
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/oneplus/io/FileUtils;->readFromFile(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 939
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->resultBuffer:[B
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 948
    if-eqz v18, :cond_a

    :try_start_16
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :cond_a
    :goto_8
    if-eqz v3, :cond_f

    :try_start_17
    throw v3
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 942
    :catch_8
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Throwable;
    move-object/from16 v17, v18

    .line 943
    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_9
    :try_start_18
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processWatermark() - Fail to read result from temp file"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 947
    :try_start_19
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 953
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_b
    :goto_a
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[Process Watermark \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] processWatermark() - Spent: "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x5574e

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 820
    return-void

    .line 928
    :catch_9
    move-exception v12

    .line 929
    .restart local v12    # "ex":Ljava/lang/Throwable;
    :try_start_1a
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processWatermark() - Fail to copy EXIF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_7

    .line 948
    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v3

    goto :goto_8

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v2

    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_b
    :try_start_1b
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :catchall_2
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_c
    if-eqz v17, :cond_c

    :try_start_1c
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :cond_c
    :goto_d
    if-eqz v3, :cond_e

    :try_start_1d
    throw v3

    .line 942
    :catch_c
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Throwable;
    goto :goto_9

    .line 948
    .end local v12    # "ex":Ljava/lang/Throwable;
    :catch_d
    move-exception v4

    if-nez v3, :cond_d

    move-object v3, v4

    goto :goto_d

    :cond_d
    if-eq v3, v4, :cond_c

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto :goto_d

    .line 946
    :catchall_3
    move-exception v2

    .line 947
    :goto_e
    :try_start_1e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 946
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 948
    :cond_e
    :try_start_1f
    throw v2
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 947
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_f
    :try_start_20
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_a

    .line 946
    :catchall_4
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_e

    .line 948
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v2

    goto :goto_c

    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_6
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_c

    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_b

    .line 907
    .end local v13    # "fileMemoryUsageHandle":Lcom/oneplus/base/Handle;
    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .local v14, "image":Landroid/graphics/Bitmap;
    .restart local v19    # "stream":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v2

    goto/16 :goto_5

    .end local v19    # "stream":Ljava/io/FileOutputStream;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .local v19, "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v19    # "stream":Ljava/io/FileOutputStream;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v19    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseOnePlusServiceCamera()V
    .locals 5

    .prologue
    .line 967
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 971
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseOnePlusServiceCamera()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 973
    .local v0, "releaseMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v0    # "releaseMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseOnePlusServiceCamera() - Failed to release camera service"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replaceProcessedPicture(Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V
    .locals 50
    .param p1, "task"    # Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    .prologue
    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v46

    .line 993
    .local v46, "time":J
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Start, "

    move-object/from16 v0, p1

    invoke-static {v2, v3, v4, v5, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->filePath:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 997
    .local v20, "filePath":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 999
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - File path is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1000
    return-void

    .line 1004
    :cond_0
    :try_start_1
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1007
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - File does not exist"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1008
    return-void

    .line 1012
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedImage:[B

    .line 1013
    .local v11, "compressedImage":[B
    new-instance v33, Lcom/oneplus/base/SimpleRef;

    invoke-direct/range {v33 .. v33}, Lcom/oneplus/base/SimpleRef;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1014
    .local v33, "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/16 v37, 0x0

    .line 1015
    .local v37, "size":Landroid/util/Size;
    const/4 v3, 0x0

    const/16 v38, 0x0

    .local v38, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v39, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v39

    invoke-direct {v0, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_13

    .line 1017
    .end local v38    # "stream":Ljava/io/ByteArrayInputStream;
    .local v39, "stream":Ljava/io/ByteArrayInputStream;
    const/16 v2, 0x40

    :try_start_4
    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2a
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    move-result-object v37

    .line 1022
    .local v37, "size":Landroid/util/Size;
    if-eqz v39, :cond_2

    :try_start_5
    invoke-virtual/range {v39 .. v39}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1020
    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/Throwable;
    move-object/from16 v38, v39

    .line 1021
    .end local v37    # "size":Landroid/util/Size;
    .end local v39    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    :try_start_7
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to decode size from compressed image"

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1023
    .end local v15    # "e":Ljava/lang/Throwable;
    :goto_2
    if-nez v37, :cond_7

    .line 1025
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to decode size"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1026
    return-void

    .line 1022
    .restart local v37    # "size":Landroid/util/Size;
    .restart local v39    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    :cond_3
    move-object/from16 v38, v39

    .end local v39    # "stream":Ljava/io/ByteArrayInputStream;
    .local v38, "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .local v37, "size":Landroid/util/Size;
    .local v38, "stream":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v2

    .end local v38    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_4
    if-eqz v38, :cond_4

    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_5
    if-eqz v3, :cond_6

    :try_start_a
    throw v3

    .line 1020
    :catch_3
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 1022
    .end local v15    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    if-nez v3, :cond_5

    move-object v3, v4

    goto :goto_5

    :cond_5
    if-eq v3, v4, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1223
    .end local v11    # "compressedImage":[B
    .end local v17    # "file":Ljava/io/File;
    .end local v20    # "filePath":Ljava/lang/String;
    .end local v33    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v37    # "size":Landroid/util/Size;
    :catchall_1
    move-exception v2

    move-object/from16 v48, v2

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1223
    throw v48

    .line 1022
    .restart local v11    # "compressedImage":[B
    .restart local v17    # "file":Ljava/io/File;
    .restart local v20    # "filePath":Ljava/lang/String;
    .restart local v33    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v37    # "size":Landroid/util/Size;
    :cond_6
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1030
    .end local v37    # "size":Landroid/util/Size;
    :cond_7
    const/16 v26, 0x0

    .line 1031
    .local v26, "newImage":Lcom/oneplus/media/EncodedImage;
    const/4 v3, 0x0

    const/16 v27, 0x0

    .local v27, "newImageStream":Ljava/io/ByteArrayInputStream;
    :try_start_c
    new-instance v28, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    .line 1033
    .end local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v28, "newImageStream":Ljava/io/ByteArrayInputStream;
    :try_start_d
    invoke-static/range {v28 .. v28}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_29
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    move-result-object v26

    .line 1038
    .local v26, "newImage":Lcom/oneplus/media/EncodedImage;
    if-eqz v28, :cond_8

    :try_start_e
    invoke-virtual/range {v28 .. v28}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1036
    :catch_5
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    .line 1037
    .end local v26    # "newImage":Lcom/oneplus/media/EncodedImage;
    .end local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :goto_7
    :try_start_10
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to create new image"

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1041
    .end local v15    # "e":Ljava/lang/Throwable;
    :goto_8
    if-eqz v26, :cond_12

    .line 1043
    const/16 v30, 0x0

    .line 1044
    .local v30, "oldImage":Lcom/oneplus/media/EncodedImage;
    const/4 v3, 0x0

    const/16 v31, 0x0

    .local v31, "oldImageStream":Ljava/io/InputStream;
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-static {v2, v4, v5}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v31

    .line 1046
    .local v31, "oldImageStream":Ljava/io/InputStream;
    invoke-static/range {v31 .. v31}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    move-result-object v30

    .line 1052
    .local v30, "oldImage":Lcom/oneplus/media/EncodedImage;
    if-eqz v31, :cond_9

    :try_start_12
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_9
    :goto_9
    if-eqz v3, :cond_11

    :try_start_13
    throw v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1049
    .end local v30    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .end local v31    # "oldImageStream":Ljava/io/InputStream;
    :catch_6
    move-exception v15

    .line 1050
    .restart local v15    # "e":Ljava/lang/Throwable;
    :try_start_14
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to create old image, "

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1051
    return-void

    .line 1038
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v26    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    goto :goto_6

    :cond_a
    move-object/from16 v27, v28

    .end local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v27, "newImageStream":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .local v26, "newImage":Lcom/oneplus/media/EncodedImage;
    .local v27, "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v2

    .end local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :goto_a
    :try_start_15
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :catchall_2
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_b
    if-eqz v27, :cond_b

    :try_start_16
    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_b
    :goto_c
    if-eqz v3, :cond_d

    :try_start_17
    throw v3

    .line 1036
    :catch_9
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    goto :goto_7

    .line 1038
    .end local v15    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v4

    if-nez v3, :cond_c

    move-object v3, v4

    goto :goto_c

    :cond_c
    if-eq v3, v4, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_d
    throw v2
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1052
    .end local v26    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v30    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v31    # "oldImageStream":Ljava/io/InputStream;
    :catch_b
    move-exception v3

    goto :goto_9

    .end local v31    # "oldImageStream":Ljava/io/InputStream;
    .local v30, "oldImage":Lcom/oneplus/media/EncodedImage;
    :catch_c
    move-exception v2

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_d
    if-eqz v31, :cond_e

    :try_start_19
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_e
    :goto_e
    if-eqz v3, :cond_10

    :try_start_1a
    throw v3

    :catch_d
    move-exception v4

    if-nez v3, :cond_f

    move-object v3, v4

    goto :goto_e

    :cond_f
    if-eq v3, v4, :cond_e

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_10
    throw v2
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1053
    .local v30, "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v31    # "oldImageStream":Ljava/io/InputStream;
    :cond_11
    if-eqz v30, :cond_12

    .line 1056
    :try_start_1b
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/oneplus/media/XMPContainer;

    if-eqz v2, :cond_12

    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/oneplus/media/XMPContainer;

    if-eqz v2, :cond_12

    .line 1058
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Insert XMP back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, v30

    check-cast v0, Lcom/oneplus/media/XMPContainer;

    move-object/from16 v32, v0

    .line 1060
    .local v32, "oldXMPImage":Lcom/oneplus/media/XMPContainer;
    move-object/from16 v0, v26

    check-cast v0, Lcom/oneplus/media/XMPContainer;

    move-object/from16 v29, v0

    .line 1061
    .local v29, "newXMPImage":Lcom/oneplus/media/XMPContainer;
    invoke-interface/range {v32 .. v32}, Lcom/oneplus/media/XMPContainer;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Lcom/oneplus/media/XMPContainer;->replaceXMPMeta(Lcom/adobe/xmp/XMPMeta;)V

    .line 1068
    .end local v29    # "newXMPImage":Lcom/oneplus/media/XMPContainer;
    .end local v30    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .end local v31    # "oldImageStream":Ljava/io/InputStream;
    .end local v32    # "oldXMPImage":Lcom/oneplus/media/XMPContainer;
    :cond_12
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Write byte array [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 1069
    const/4 v3, 0x0

    const/4 v9, 0x0

    .local v9, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1c
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_28
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 1071
    .end local v9    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v10, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v26, :cond_14

    .line 1072
    :try_start_1d
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lcom/oneplus/media/EncodedImage;->save(Ljava/io/OutputStream;)Z

    .line 1075
    :goto_f
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    move-result-object v21

    .line 1081
    .local v21, "finalBytes":[B
    if-eqz v10, :cond_13

    :try_start_1e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_13
    :goto_10
    if-eqz v3, :cond_18

    :try_start_1f
    throw v3
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 1078
    :catch_e
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    move-object v9, v10

    .line 1079
    .end local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "finalBytes":[B
    :goto_11
    :try_start_20
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Failed to write to byte array, "

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1080
    return-void

    .line 1074
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_14
    :try_start_21
    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    goto :goto_f

    .line 1081
    :catch_f
    move-exception v2

    move-object v9, v10

    .end local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_12
    :try_start_22
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :catchall_4
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_13
    if-eqz v9, :cond_15

    :try_start_23
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :cond_15
    :goto_14
    if-eqz v3, :cond_17

    :try_start_24
    throw v3

    .line 1078
    :catch_10
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    goto :goto_11

    .line 1081
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "finalBytes":[B
    :catch_11
    move-exception v3

    goto :goto_10

    .end local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "finalBytes":[B
    :catch_12
    move-exception v4

    if-nez v3, :cond_16

    move-object v3, v4

    goto :goto_14

    :cond_16
    if-eq v3, v4, :cond_15

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_17
    throw v2
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_10
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 1082
    .restart local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "finalBytes":[B
    :cond_18
    :try_start_25
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Write byte array [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 1085
    const/16 v36, 0x5

    .line 1086
    .local v36, "retryCount":I
    :goto_15
    if-lez v36, :cond_27

    .line 1088
    const/4 v3, 0x0

    const/16 v42, 0x0

    .local v42, "stream":Ljava/io/OutputStream;
    :try_start_26
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-static {v2, v4, v5}, Lcom/oneplus/io/FileUtils;->openLockedOutputStream(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v42

    .line 1090
    .local v42, "stream":Ljava/io/OutputStream;
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - Write buffer [start]"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1092
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - Write buffer [end]"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_16
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 1097
    if-eqz v42, :cond_19

    :try_start_27
    invoke-virtual/range {v42 .. v42}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :cond_19
    :goto_16
    if-eqz v3, :cond_1a

    :try_start_28
    throw v3
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 1095
    .end local v42    # "stream":Ljava/io/OutputStream;
    :catch_13
    move-exception v15

    .line 1096
    .restart local v15    # "e":Ljava/lang/Throwable;
    :try_start_29
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Failed to replace processed picture, "

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    .end local v15    # "e":Ljava/lang/Throwable;
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, v21

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 1103
    const/16 v2, 0x1000

    new-array v0, v2, [B

    move-object/from16 v18, v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    .line 1105
    .local v18, "fileByteArray":[B
    const/4 v3, 0x0

    const/16 v19, 0x0

    .local v19, "fileInputStream":Ljava/io/InputStream;
    :try_start_2a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-static {v2, v4, v5}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v19

    .line 1107
    .local v19, "fileInputStream":Ljava/io/InputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v34

    .line 1108
    .local v34, "readCount":I
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v34

    if-gt v0, v2, :cond_22

    .line 1111
    const/16 v25, 0x0

    .line 1112
    .local v25, "isFail":Z
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_17
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_1b

    .line 1114
    aget-byte v2, v18, v24

    aget-byte v4, v21, v24
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    if-eq v2, v4, :cond_21

    .line 1117
    const/16 v25, 0x1

    .line 1122
    :cond_1b
    if-nez v25, :cond_22

    .line 1129
    if-eqz v19, :cond_1c

    :try_start_2b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :cond_1c
    :goto_18
    if-eqz v3, :cond_27

    :try_start_2c
    throw v3
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_14
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 1127
    .end local v19    # "fileInputStream":Ljava/io/InputStream;
    .end local v24    # "i":I
    .end local v25    # "isFail":Z
    .end local v34    # "readCount":I
    :catch_14
    move-exception v15

    .line 1128
    .restart local v15    # "e":Ljava/lang/Throwable;
    :try_start_2d
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to create old image, "

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 1135
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v18    # "fileByteArray":[B
    :cond_1d
    const-wide/16 v2, 0x3e8

    :try_start_2e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1c
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    .line 1142
    add-int/lit8 v36, v36, -0x1

    .line 1143
    :try_start_2f
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceProcessedPicture() - data is NOT the same, retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rsub-int/lit8 v4, v36, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    goto/16 :goto_15

    .line 1097
    .restart local v42    # "stream":Ljava/io/OutputStream;
    :catch_15
    move-exception v3

    goto/16 :goto_16

    .end local v42    # "stream":Ljava/io/OutputStream;
    :catch_16
    move-exception v2

    :try_start_30
    throw v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    :catchall_5
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_19
    if-eqz v42, :cond_1e

    :try_start_31
    invoke-virtual/range {v42 .. v42}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    :cond_1e
    :goto_1a
    if-eqz v3, :cond_20

    :try_start_32
    throw v3

    :catch_17
    move-exception v4

    if-nez v3, :cond_1f

    move-object v3, v4

    goto :goto_1a

    :cond_1f
    if-eq v3, v4, :cond_1e

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_20
    throw v2
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_13
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    .line 1112
    .restart local v18    # "fileByteArray":[B
    .restart local v19    # "fileInputStream":Ljava/io/InputStream;
    .restart local v24    # "i":I
    .restart local v25    # "isFail":Z
    .restart local v34    # "readCount":I
    :cond_21
    add-int/lit8 v24, v24, 0x1

    goto :goto_17

    .line 1129
    :catch_18
    move-exception v3

    goto :goto_18

    .end local v24    # "i":I
    .end local v25    # "isFail":Z
    :cond_22
    if-eqz v19, :cond_23

    :try_start_33
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    :cond_23
    :goto_1b
    if-eqz v3, :cond_1d

    :try_start_34
    throw v3
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_14
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    :catch_19
    move-exception v3

    goto :goto_1b

    .end local v19    # "fileInputStream":Ljava/io/InputStream;
    .end local v34    # "readCount":I
    :catch_1a
    move-exception v2

    :try_start_35
    throw v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    :catchall_6
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_1c
    if-eqz v19, :cond_24

    :try_start_36
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    :cond_24
    :goto_1d
    if-eqz v3, :cond_26

    :try_start_37
    throw v3

    :catch_1b
    move-exception v4

    if-nez v3, :cond_25

    move-object v3, v4

    goto :goto_1d

    :cond_25
    if-eq v3, v4, :cond_24

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_26
    throw v2
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_14
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    .line 1138
    .end local v18    # "fileByteArray":[B
    :catch_1c
    move-exception v15

    .line 1139
    .restart local v15    # "e":Ljava/lang/Throwable;
    :try_start_38
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to sleep, "

    invoke-static {v2, v3, v15}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1147
    .end local v15    # "e":Ljava/lang/Throwable;
    :cond_27
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->contentUri:Landroid/net/Uri;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    .line 1150
    .local v12, "contentUri":Landroid/net/Uri;
    :try_start_39
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 1151
    .local v22, "fileSize":J
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Replaced file size: "

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1152
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 1153
    .local v45, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "_size"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1154
    const-string/jumbo v2, "date_modified"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1155
    const-string/jumbo v3, "orientation"

    invoke-interface/range {v33 .. v33}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string/jumbo v2, "width"

    invoke-virtual/range {v37 .. v37}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    const-string/jumbo v2, "height"

    invoke-virtual/range {v37 .. v37}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_data = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v45

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 1159
    .local v35, "ret":I
    if-gtz v35, :cond_28

    .line 1161
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceProcessedPicture() - File not found in the media provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    .line 1224
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1163
    return-void

    .line 1165
    :cond_28
    if-eqz v12, :cond_29

    :try_start_3a
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string/jumbo v2, "file"

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    move-result v2

    if-eqz v2, :cond_31

    .line 1167
    :cond_29
    const/4 v8, 0x0

    const/4 v14, 0x0

    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1168
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1169
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1170
    const-string/jumbo v5, "_data=? "

    .line 1171
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    const/4 v7, 0x0

    .line 1167
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1173
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1175
    const-string/jumbo v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1176
    .local v13, "contentUriId":I
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20
    .catchall {:try_start_3b .. :try_end_3b} :catchall_b

    .line 1179
    .end local v13    # "contentUriId":I
    :cond_2a
    if-eqz v14, :cond_2b

    :try_start_3c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    :cond_2b
    :goto_1e
    if-eqz v8, :cond_32

    :try_start_3d
    throw v8
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    .line 1186
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v22    # "fileSize":J
    .end local v35    # "ret":I
    .end local v45    # "updateValues":Landroid/content/ContentValues;
    :catch_1d
    move-exception v16

    .line 1187
    .local v16, "ex":Ljava/lang/Throwable;
    :try_start_3e
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to update media store"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    .end local v16    # "ex":Ljava/lang/Throwable;
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    move-result v44

    .line 1195
    .local v44, "thumbSize":I
    :try_start_3f
    move/from16 v0, v44

    move/from16 v1, v44

    invoke-static {v11, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    move-result-object v43

    .line 1204
    :goto_20
    if-eqz v43, :cond_36

    .line 1206
    const/4 v3, 0x0

    const/16 v40, 0x0

    .local v40, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_40
    new-instance v41, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24
    .catchall {:try_start_40 .. :try_end_40} :catchall_9

    .line 1208
    .end local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v41, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_41
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1209
    invoke-virtual/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedThumbImage:[B

    .line 1210
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - Compressed thumbnail size : "

    array-length v5, v11

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27
    .catchall {:try_start_41 .. :try_end_41} :catchall_a

    .line 1215
    if-eqz v41, :cond_2c

    :try_start_42
    invoke-virtual/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23
    .catchall {:try_start_42 .. :try_end_42} :catchall_1

    :cond_2c
    :goto_21
    if-eqz v3, :cond_2d

    :try_start_43
    throw v3
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_1e
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    .line 1213
    :catch_1e
    move-exception v16

    .restart local v16    # "ex":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .line 1214
    .end local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_22
    :try_start_44
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to compress thumbnail image"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    .line 1224
    .end local v16    # "ex":Ljava/lang/Throwable;
    :cond_2d
    :goto_23
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[ReplacePictureTask \'"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    const-string/jumbo v5, "\'] replaceProcessedPicture() - Spent "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms, "

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v3, -0x55744

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 985
    return-void

    .line 1179
    .end local v44    # "thumbSize":I
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "fileSize":J
    .restart local v35    # "ret":I
    .restart local v45    # "updateValues":Landroid/content/ContentValues;
    :catch_1f
    move-exception v8

    goto/16 :goto_1e

    .end local v14    # "cursor":Landroid/database/Cursor;
    :catch_20
    move-exception v2

    :try_start_45
    throw v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_7

    :catchall_7
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_24
    if-eqz v14, :cond_2e

    :try_start_46
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_21
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    :cond_2e
    :goto_25
    if-eqz v3, :cond_30

    :try_start_47
    throw v3

    :catch_21
    move-exception v4

    if-nez v3, :cond_2f

    move-object v3, v4

    goto :goto_25

    :cond_2f
    if-eq v3, v4, :cond_2e

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_30
    throw v2

    .line 1182
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1183
    :cond_32
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceProcessedPicture() - Content uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_1d
    .catchall {:try_start_47 .. :try_end_47} :catchall_1

    goto/16 :goto_1f

    .line 1198
    .end local v22    # "fileSize":J
    .end local v35    # "ret":I
    .end local v45    # "updateValues":Landroid/content/ContentValues;
    .restart local v44    # "thumbSize":I
    :catch_22
    move-exception v16

    .line 1199
    .restart local v16    # "ex":Ljava/lang/Throwable;
    :try_start_48
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to create thumbnail image"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1

    .line 1200
    const/16 v43, 0x0

    .local v43, "thumb":Landroid/graphics/Bitmap;
    goto/16 :goto_20

    .line 1215
    .end local v16    # "ex":Ljava/lang/Throwable;
    .end local v43    # "thumb":Landroid/graphics/Bitmap;
    .restart local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_23
    move-exception v3

    goto/16 :goto_21

    .end local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_24
    move-exception v2

    .end local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_26
    :try_start_49
    throw v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_8

    :catchall_8
    move-exception v3

    move-object/from16 v49, v3

    move-object v3, v2

    move-object/from16 v2, v49

    :goto_27
    if-eqz v40, :cond_33

    :try_start_4a
    invoke-virtual/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_26
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1

    :cond_33
    :goto_28
    if-eqz v3, :cond_35

    :try_start_4b
    throw v3

    .line 1213
    :catch_25
    move-exception v16

    .restart local v16    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_22

    .line 1215
    .end local v16    # "ex":Ljava/lang/Throwable;
    :catch_26
    move-exception v4

    if-nez v3, :cond_34

    move-object v3, v4

    goto :goto_28

    :cond_34
    if-eq v3, v4, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_35
    throw v2
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_25
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1

    .line 1219
    :cond_36
    :try_start_4c
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - No thumbnail image to compress"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1

    goto/16 :goto_23

    .line 1215
    .restart local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_9
    move-exception v2

    goto :goto_27

    .end local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_a
    move-exception v2

    move-object/from16 v40, v41

    .end local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v40, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_27

    .end local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_27
    move-exception v2

    move-object/from16 v40, v41

    .end local v41    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_26

    .line 1179
    .end local v40    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v44    # "thumbSize":I
    .restart local v22    # "fileSize":J
    .restart local v35    # "ret":I
    .restart local v45    # "updateValues":Landroid/content/ContentValues;
    :catchall_b
    move-exception v2

    move-object v3, v8

    goto :goto_24

    .line 1129
    .end local v12    # "contentUri":Landroid/net/Uri;
    .end local v22    # "fileSize":J
    .end local v35    # "ret":I
    .end local v45    # "updateValues":Landroid/content/ContentValues;
    .restart local v18    # "fileByteArray":[B
    :catchall_c
    move-exception v2

    goto/16 :goto_1c

    .line 1097
    .end local v18    # "fileByteArray":[B
    :catchall_d
    move-exception v2

    goto/16 :goto_19

    .line 1081
    .end local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "finalBytes":[B
    .end local v36    # "retryCount":I
    .restart local v9    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_e
    move-exception v2

    goto/16 :goto_13

    .end local v9    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_f
    move-exception v2

    move-object v9, v10

    .end local v10    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v9, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_13

    .local v9, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_28
    move-exception v2

    goto/16 :goto_12

    .line 1052
    .end local v9    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v30, "oldImage":Lcom/oneplus/media/EncodedImage;
    :catchall_10
    move-exception v2

    goto/16 :goto_d

    .line 1038
    .end local v30    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v26    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catchall_11
    move-exception v2

    goto/16 :goto_b

    .end local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catchall_12
    move-exception v2

    move-object/from16 v27, v28

    .end local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v27, "newImageStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_b

    .end local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_29
    move-exception v2

    move-object/from16 v27, v28

    .end local v28    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_a

    .line 1022
    .end local v26    # "newImage":Lcom/oneplus/media/EncodedImage;
    .end local v27    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v37    # "size":Landroid/util/Size;
    .restart local v38    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_13
    move-exception v2

    goto/16 :goto_4

    .end local v38    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v39    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_14
    move-exception v2

    move-object/from16 v38, v39

    .end local v39    # "stream":Ljava/io/ByteArrayInputStream;
    .local v38, "stream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v38    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v39    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_2a
    move-exception v2

    move-object/from16 v38, v39

    .end local v39    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v38    # "stream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3
.end method

.method private rescheduleProcessWatermark(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V
    .locals 8
    .param p1, "pictureInfo"    # Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .prologue
    .line 1236
    if-nez p1, :cond_0

    .line 1237
    return-void

    .line 1240
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->refreshToken()V

    .line 1243
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    invoke-virtual {p1}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->getToken()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermark:Lcom/oneplus/camera/watermark/Watermark;

    iget-object v5, p1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    iget-object v6, p1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBounds:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkText:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/Object;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1244
    .local v0, "task":Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1233
    return-void
.end method

.method private resetTimeoutToClearPictureTables(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    const v1, -0x5573a

    .line 1251
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1249
    return-void
.end method

.method private scheduleProcessWatermark(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 9
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "watermark"    # Lcom/oneplus/camera/watermark/Watermark;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1260
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1261
    :cond_0
    return-void

    .line 1260
    :cond_1
    if-eqz p3, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 1265
    .local v8, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-nez v8, :cond_2

    .line 1267
    new-instance v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .end local v8    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    invoke-direct {v8, v2}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;-><init>(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V

    .line 1268
    .restart local v8    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    iput-object p1, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    .line 1269
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v1, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ">> [PictureInfo \'"

    iget-object v3, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] scheduleProcessWatermark() - "

    invoke-static {v1, v2, v3, v4, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1275
    :cond_2
    iput-object p2, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    .line 1276
    iput-object p3, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermark:Lcom/oneplus/camera/watermark/Watermark;

    .line 1277
    iput-object p4, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBounds:Landroid/graphics/Rect;

    .line 1278
    iput-object p5, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkText:Ljava/lang/String;

    .line 1279
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v1, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 1282
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-camera-OPPictureProcessService$ProcessStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    invoke-virtual {v2}, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1296
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    const-string/jumbo v3, "\'] scheduleProcessWatermark() - Offline is processing, wait for reschedule: "

    invoke-static {v1, v2, p1, v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1257
    :goto_0
    return-void

    .line 1287
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    iget-object v3, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    const-string/jumbo v4, "\'] scheduleProcessWatermark() - Process watermark: "

    invoke-static {v1, v2, v3, v4, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1290
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;

    invoke-virtual {v8}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->getToken()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    iget-object v4, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermark:Lcom/oneplus/camera/watermark/Watermark;

    iget-object v5, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    iget-object v6, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBounds:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkText:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/Object;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1291
    .local v0, "task":Lcom/oneplus/camera/OPPictureProcessService$ProcessWatermarkTask;
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->WATERMARK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 354
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_Messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 365
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 367
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v2, Lcom/oneplus/camera/OPPictureProcessService$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/OPPictureProcessService$3;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    .line 379
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_Messenger:Landroid/os/Messenger;

    .line 382
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Replace File Handler Thread"

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 383
    .local v1, "replaceFileHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 384
    new-instance v2, Lcom/oneplus/camera/OPPictureProcessService$4;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/OPPictureProcessService$4;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    .line 395
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Camera Handler Thread"

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 396
    .local v0, "cameraHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 397
    new-instance v2, Lcom/oneplus/camera/OPPictureProcessService$5;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/OPPictureProcessService$5;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraHandler:Landroid/os/Handler;

    .line 408
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraHandler:Landroid/os/Handler;

    const v3, -0x50911

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 411
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    .line 412
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraHandler:Landroid/os/Handler;

    const v3, -0x50913

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraHandler:Landroid/os/Handler;

    const v1, -0x50912

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 426
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraHandler:Landroid/os/Handler;

    const v1, -0x50914

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 433
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 418
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 701
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRebind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 699
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 711
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 715
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    .line 718
    const/4 v0, 0x1

    return v0
.end method

.method public onUnprocessedPictureReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "halPictureId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 726
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 727
    .local v1, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-nez v1, :cond_0

    .line 729
    new-instance v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .end local v1    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    invoke-direct {v1, v3}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;-><init>(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V

    .line 730
    .restart local v1    # "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ">> [PictureInfo \'"

    const-string/jumbo v4, "\'] onUnprocessedPictureReceived() - "

    invoke-static {v2, v3, p1, v4, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 736
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_TempProcessedInfos:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 737
    .local v0, "halPictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-eqz v0, :cond_1

    .line 739
    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v2, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 740
    iget-object v2, v0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    iput-object v2, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    .line 744
    :cond_1
    iput-object p1, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    .line 745
    iput-object p2, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->halPictureId:Ljava/lang/String;

    .line 746
    iget-object v2, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v2, v3, :cond_2

    .line 747
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->PROCESSING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v2, v1, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 750
    :cond_2
    const-wide/32 v2, 0x493e0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/OPPictureProcessService;->resetTimeoutToClearPictureTables(J)V

    .line 723
    return-void
.end method

.method public onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 758
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessingPictureInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;

    .line 759
    .local v7, "pictureInfo":Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v1, v2, :cond_1

    .line 761
    :cond_0
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnprocessedPictureSaved() - Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void

    .line 766
    :cond_1
    iput-object p2, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    .line 767
    iput-object p3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->contentUri:Landroid/net/Uri;

    .line 770
    iget-object v1, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->REPLACING:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    if-ne v1, v2, :cond_2

    .line 772
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[PictureInfo \'"

    const-string/jumbo v3, "\'] onUnprocessedPictureSaved() - Replace: "

    invoke-static {v1, v2, p1, v3, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 774
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;

    iget-object v2, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    iget-object v3, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    iget-object v4, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->contentUri:Landroid/net/Uri;

    iget-object v5, v7, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    sget-object v6, Lcom/oneplus/camera/PictureProcessService$ProcessType;->OFFLINE:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BLcom/oneplus/camera/PictureProcessService$ProcessType;)V

    .line 775
    .local v0, "task":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ReplaceFileHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    .end local v0    # "task":Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
    :cond_2
    return-void
.end method
