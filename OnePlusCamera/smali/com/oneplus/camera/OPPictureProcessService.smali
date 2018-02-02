.class public Lcom/oneplus/camera/OPPictureProcessService;
.super Landroid/app/Service;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/OPPictureProcessService$1;,
        Lcom/oneplus/camera/OPPictureProcessService$2;,
        Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field private static final INTENT_NOTIFY_TO_CLEAR_IMAGE_CACHE:Ljava/lang/String; = "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

.field private static final INTENT_THUMBNAIL_CREATED:Ljava/lang/String; = "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

.field private static final IS_BUBUG:Z = false

.field private static final MSG_CLEAR_PICTURE_TABLES:I = -0x1fbda

.field private static final MSG_COMPLETE_PROCESSING_TASK:I = -0x1fc02

.field private static final MSG_FAKE_RECEIVE_PROCESSED_PICTURE:I = -0x330d0e

.field private static final MSG_OPEN_ONEPLUS_SERVICE_CAMERA:I = -0x1fbd5

.field private static final MSG_RELEASE_ONEPLUS_SERVICE_CAMERA:I = -0x1fbd6

.field private static final MSG_START_THREAD_MONITOR:I = -0x1fbe4

.field private static final MSG_STOP_THREAD_MONITOR:I = -0x1fbe5

.field private static final MSG_UNPROCESSED_PICTURE_RECEIVED:I = -0x1fbd1

.field private static final MSG_UNPROCESSED_PICTURE_SAVED:I = -0x1fbd2

.field private static final OFFLINE_JPEG_EXIF_TAG_ID:I = 0x1

.field private static final SYNC_ACTIVE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_TO_CLEAR_PICTURE_TABLES:J = 0x493e0L


# instance fields
.field private m_ActiveCounts:I

.field private m_AsyncHandler:Landroid/os/Handler;

.field private m_AsyncHandlerThread:Landroid/os/HandlerThread;

.field private m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private m_MainHandler:Landroid/os/Handler;

.field private m_Messenger:Landroid/os/Messenger;

.field private m_OpCameraService:Landroid/hardware/Camera;

.field private m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private m_ProcessedPictureTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

.field private m_UnprocessedPictureInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    return-object v0
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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

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
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->handleAsyncMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/OPPictureProcessService;[B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->onProcessedPictureReceived([B)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/OPPictureProcessService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->openOnePlusServiceCamera()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/oneplus/camera/OPPictureProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService$1;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 84
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService$2;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private completeServiceTask()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "completeServiceTask() - Stop self"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/camera/OPPictureProcessService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    const v1, -0x1fc02

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 196
    const/4 v1, 0x0

    return v1

    .line 152
    :sswitch_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 162
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    .line 198
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 166
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->openOnePlusServiceCamera()V

    goto :goto_0

    .line 170
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->releaseOnePlusServiceCamera()V

    goto :goto_0

    .line 174
    :sswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 183
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "fileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPPictureProcessService;->onUnprocessedPictureReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 188
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "fileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contentUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/OPPictureProcessService;->onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 192
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/oneplus/camera/OPPictureProcessService;->onProcessedPictureReceived([B)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x330d0e -> :sswitch_7
        -0x1fbe5 -> :sswitch_4
        -0x1fbe4 -> :sswitch_3
        -0x1fbda -> :sswitch_0
        -0x1fbd6 -> :sswitch_2
        -0x1fbd5 -> :sswitch_1
        -0x1fbd2 -> :sswitch_6
        -0x1fbd1 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 219
    const/4 v1, 0x0

    return v1

    .line 209
    :sswitch_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, "asyncMsg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 211
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    .end local v0    # "asyncMsg":Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 215
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x1fc02 -> :sswitch_1
        -0x1fbd2 -> :sswitch_0
        -0x1fbd1 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDependencyThread()Z
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onProcessedPictureReceived([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const v12, -0x1fbda

    const/4 v9, 0x0

    .line 309
    if-nez p1, :cond_0

    .line 311
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onProcessedPictureReceived() - data is null"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 316
    :cond_0
    const-string/jumbo v6, ""

    .line 319
    .local v6, "processedPictureId":Ljava/lang/String;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v8}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v5

    .line 320
    .local v5, "metaData":Lcom/oneplus/media/PhotoMetadata;
    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 321
    .local v4, "markerNote":[B
    if-eqz v4, :cond_4

    .line 324
    const/4 v1, 0x0

    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_0
    new-instance v2, Lcom/oneplus/media/IfdEntryEnumerator;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v10, 0x0

    invoke-direct {v2, v8, v10, v11}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 326
    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v2, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 328
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v8

    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v0

    .line 335
    .local v0, "dataInteger":[I
    if-eqz v0, :cond_1

    array-length v8, v0

    if-lez v8, :cond_1

    .line 336
    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v6

    goto :goto_0

    .line 348
    .end local v0    # "dataInteger":[I
    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    :catch_0
    move-exception v7

    .local v7, "tr":Ljava/lang/Throwable;
    move-object v1, v2

    .line 347
    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onProcessedPictureReceived() - Error when IFD enumerator"

    invoke-static {v8, v9, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v7    # "tr":Ljava/lang/Throwable;
    :cond_4
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onProcessedPictureReceived() - processedPictureId : "

    invoke-static {v8, v9, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;

    .line 378
    .local v3, "info":Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
    if-eqz v3, :cond_9

    .line 381
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v3}, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/oneplus/camera/OPPictureProcessService;->replaceProcessedPicture(Ljava/nio/ByteBuffer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    sget-object v9, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v9

    .line 386
    :try_start_4
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v9

    .line 400
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gtz v8, :cond_5

    .line 402
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 403
    :cond_5
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    :goto_4
    return-void

    .line 348
    .end local v3    # "info":Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_2
    move-exception v8

    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_5
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_6
    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_7
    if-eqz v9, :cond_8

    :try_start_7
    throw v9

    .line 346
    :catch_3
    move-exception v7

    .restart local v7    # "tr":Ljava/lang/Throwable;
    goto :goto_2

    .line 348
    .end local v7    # "tr":Ljava/lang/Throwable;
    :catch_4
    move-exception v10

    if-nez v9, :cond_7

    move-object v9, v10

    goto :goto_7

    :cond_7
    if-eq v9, v10, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 384
    .restart local v3    # "info":Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 392
    :cond_9
    sget-object v9, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v9

    .line 394
    :try_start_8
    sget-object v8, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onProcessedPictureReceived() - jpeg is not ready yet"

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 392
    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    .line 405
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    goto :goto_4

    .line 348
    .end local v3    # "info":Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_3
    move-exception v8

    goto :goto_6

    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_4
    move-exception v8

    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_6

    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_5
    move-exception v8

    move-object v1, v2

    .end local v2    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_5

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private openOnePlusServiceCamera()V
    .locals 8

    .prologue
    .line 490
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :try_start_0
    const-class v3, Landroid/hardware/Camera;

    const-string/jumbo v4, "openOPService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 496
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

    .line 504
    .end local v0    # "openOpServiceMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 506
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Camera is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Failed to open op camera service"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
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

    .line 513
    .local v1, "setCallbackMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_PictureCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v3, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_CameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    .end local v1    # "setCallbackMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 519
    :catch_1
    move-exception v2

    .line 520
    .restart local v2    # "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openOnePlusServiceCamera() - Failed prepare opservice camera"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private releaseOnePlusServiceCamera()V
    .locals 5

    .prologue
    .line 528
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 532
    :try_start_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseOnePlusServiceCamera()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 534
    .local v0, "releaseMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_OpCameraService:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0    # "releaseMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseOnePlusServiceCamera() - Failed to release camera service"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replaceProcessedPicture(Ljava/nio/ByteBuffer;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 36
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 549
    if-nez p2, :cond_0

    .line 551
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - File path is null, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void

    .line 555
    :cond_0
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 561
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 564
    .local v8, "compressedImage":[B
    const/16 v18, 0x0

    .line 565
    .local v18, "newImage":Lcom/oneplus/media/EncodedImage;
    const/4 v3, 0x0

    const/16 v19, 0x0

    .local v19, "newImageStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 567
    .end local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v20, "newImageStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static/range {v20 .. v20}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    move-result-object v18

    .line 572
    .local v18, "newImage":Lcom/oneplus/media/EncodedImage;
    if-eqz v20, :cond_1

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    if-eqz v3, :cond_c

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 570
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Throwable;
    move-object/from16 v19, v20

    .line 571
    .end local v18    # "newImage":Lcom/oneplus/media/EncodedImage;
    .end local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :goto_1
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to create new image"

    invoke-static {v2, v3, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v18, :cond_3

    .line 577
    const/16 v22, 0x0

    .line 578
    .local v22, "oldImage":Lcom/oneplus/media/EncodedImage;
    const/4 v3, 0x0

    const/16 v23, 0x0

    .local v23, "oldImageStream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 580
    .end local v23    # "oldImageStream":Ljava/io/FileInputStream;
    .local v24, "oldImageStream":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static/range {v24 .. v24}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1d
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    move-result-object v22

    .line 585
    .local v22, "oldImage":Lcom/oneplus/media/EncodedImage;
    if-eqz v24, :cond_2

    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    :cond_2
    :goto_3
    if-eqz v3, :cond_10

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 583
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Throwable;
    move-object/from16 v23, v24

    .line 584
    .end local v22    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .end local v24    # "oldImageStream":Ljava/io/FileInputStream;
    :goto_4
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Error to create old image"

    invoke-static {v2, v3, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_5
    if-eqz v22, :cond_3

    .line 589
    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/oneplus/media/XMPContainer;

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/oneplus/media/XMPContainer;

    if-eqz v2, :cond_3

    .line 591
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Insert XMP back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v22

    .line 592
    check-cast v25, Lcom/oneplus/media/XMPContainer;

    .local v25, "oldXMPImage":Lcom/oneplus/media/XMPContainer;
    move-object/from16 v21, v18

    .line 593
    check-cast v21, Lcom/oneplus/media/XMPContainer;

    .line 594
    .local v21, "newXMPImage":Lcom/oneplus/media/XMPContainer;
    invoke-interface/range {v25 .. v25}, Lcom/oneplus/media/XMPContainer;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lcom/oneplus/media/XMPContainer;->replaceXMPMeta(Lcom/adobe/xmp/XMPMeta;)V

    .line 600
    .end local v21    # "newXMPImage":Lcom/oneplus/media/XMPContainer;
    .end local v25    # "oldXMPImage":Lcom/oneplus/media/XMPContainer;
    :cond_3
    const/4 v3, 0x0

    const/16 v28, 0x0

    .local v28, "stream":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v29, Ljava/io/FileOutputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1c
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 602
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .local v29, "stream":Ljava/io/FileOutputStream;
    :try_start_9
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - write buffer - start"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v18, :cond_14

    .line 604
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/oneplus/media/EncodedImage;->save(Ljava/io/OutputStream;)Z

    .line 607
    :goto_6
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - write buffer - end, length: "

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 612
    if-eqz v29, :cond_4

    :try_start_a
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f

    :cond_4
    :goto_7
    if-eqz v3, :cond_16

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 610
    :catch_2
    move-exception v32

    .local v32, "tr":Ljava/lang/Throwable;
    move-object/from16 v28, v29

    .line 611
    .end local v29    # "stream":Ljava/io/FileOutputStream;
    :goto_8
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Failed to replace processed picture"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    .end local v32    # "tr":Ljava/lang/Throwable;
    :goto_9
    :try_start_c
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 618
    .local v14, "fileSize":J
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Replaced file size: "

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .local v33, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 621
    const-string/jumbo v2, "date_modified"

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_data = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 623
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    move-result v2

    if-eqz v2, :cond_1c

    .line 625
    :cond_5
    const/16 v34, 0x0

    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 626
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 627
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 628
    const-string/jumbo v5, "_data=? "

    .line 629
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    .line 625
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 631
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 633
    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 634
    .local v9, "contentUriId":I
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 637
    .end local v9    # "contentUriId":I
    :cond_6
    if-eqz v10, :cond_7

    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_11

    :cond_7
    :goto_a
    if-eqz v34, :cond_1d

    :try_start_f
    throw v34
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 646
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "fileSize":J
    .end local v33    # "updateValues":Landroid/content/ContentValues;
    :catch_3
    move-exception v12

    .line 647
    .local v12, "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to update media store"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    .end local v12    # "ex":Ljava/lang/Throwable;
    :goto_b
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "image/jpeg"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string/jumbo v2, "filePath"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPPictureProcessService;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 661
    .local v31, "thumbSize":I
    :try_start_10
    move/from16 v0, v31

    move/from16 v1, v31

    invoke-static {v8, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_14

    move-result-object v30

    .line 670
    :goto_c
    if-eqz v30, :cond_21

    .line 672
    const/4 v3, 0x0

    const/16 v26, 0x0

    .local v26, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_11
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_16
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 674
    .end local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v27, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_12
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 675
    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 676
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "replaceProcessedPicture() - Compressed thumbnail size : "

    array-length v5, v8

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1b
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 682
    if-eqz v27, :cond_8

    :try_start_13
    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_15

    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    :try_start_14
    throw v3
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    .line 679
    :catch_4
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .line 680
    .end local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_e
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to compress thumbnail image"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    const/4 v8, 0x0

    .line 693
    .end local v8    # "compressedImage":[B
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_9
    :goto_f
    if-eqz p3, :cond_a

    :try_start_15
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 694
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 695
    :cond_b
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_19

    .line 696
    .end local v16    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    :try_start_16
    const-string/jumbo v2, "image/jpeg"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string/jumbo v2, "compressed-thumbnail-image"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPPictureProcessService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1a

    .line 546
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v31    # "thumbSize":I
    :goto_10
    return-void

    .line 572
    .restart local v8    # "compressedImage":[B
    .restart local v18    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v3

    goto/16 :goto_0

    :cond_c
    move-object/from16 v19, v20

    .end local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v19, "newImageStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2

    .local v18, "newImage":Lcom/oneplus/media/EncodedImage;
    .local v19, "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v2

    .end local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :goto_11
    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    :goto_12
    if-eqz v19, :cond_d

    :try_start_18
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    :cond_d
    :goto_13
    if-eqz v3, :cond_f

    :try_start_19
    throw v3

    .line 570
    :catch_7
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 572
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v4

    if-nez v3, :cond_e

    move-object v3, v4

    goto :goto_13

    :cond_e
    if-eq v3, v4, :cond_d

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_f
    throw v2
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_7

    .line 585
    .end local v18    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v22    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v24    # "oldImageStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    goto/16 :goto_3

    :cond_10
    move-object/from16 v23, v24

    .end local v24    # "oldImageStream":Ljava/io/FileInputStream;
    .local v23, "oldImageStream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .local v22, "oldImage":Lcom/oneplus/media/EncodedImage;
    .local v23, "oldImageStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    .end local v23    # "oldImageStream":Ljava/io/FileInputStream;
    :goto_14
    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :catchall_1
    move-exception v3

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    :goto_15
    if-eqz v23, :cond_11

    :try_start_1b
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    :cond_11
    :goto_16
    if-eqz v3, :cond_13

    :try_start_1c
    throw v3

    .line 583
    :catch_b
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Throwable;
    goto/16 :goto_4

    .line 585
    .end local v11    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v4

    if-nez v3, :cond_12

    move-object v3, v4

    goto :goto_16

    :cond_12
    if-eq v3, v4, :cond_11

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_13
    throw v2
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_b

    .line 606
    .end local v22    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v29    # "stream":Ljava/io/FileOutputStream;
    :cond_14
    :try_start_1d
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto/16 :goto_6

    .line 612
    :catch_d
    move-exception v2

    move-object/from16 v28, v29

    .end local v29    # "stream":Ljava/io/FileOutputStream;
    :goto_17
    :try_start_1e
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :catchall_2
    move-exception v3

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    :goto_18
    if-eqz v28, :cond_15

    :try_start_1f
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    :cond_15
    :goto_19
    if-eqz v3, :cond_18

    :try_start_20
    throw v3

    .line 610
    :catch_e
    move-exception v32

    .restart local v32    # "tr":Ljava/lang/Throwable;
    goto/16 :goto_8

    .line 612
    .end local v32    # "tr":Ljava/lang/Throwable;
    .restart local v29    # "stream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v3

    goto/16 :goto_7

    :cond_16
    move-object/from16 v28, v29

    .end local v29    # "stream":Ljava/io/FileOutputStream;
    .local v28, "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v28    # "stream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v4

    if-nez v3, :cond_17

    move-object v3, v4

    goto :goto_19

    :cond_17
    if-eq v3, v4, :cond_15

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_18
    throw v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 637
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "fileSize":J
    .restart local v33    # "updateValues":Landroid/content/ContentValues;
    :catch_11
    move-exception v34

    goto/16 :goto_a

    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_12
    move-exception v2

    :try_start_21
    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    :catchall_3
    move-exception v3

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    :goto_1a
    if-eqz v10, :cond_19

    :try_start_22
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_13

    :cond_19
    :goto_1b
    if-eqz v3, :cond_1b

    :try_start_23
    throw v3

    :catch_13
    move-exception v4

    if-nez v3, :cond_1a

    move-object v3, v4

    goto :goto_1b

    :cond_1a
    if-eq v3, v4, :cond_19

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_1b
    throw v2

    .line 641
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/OPPictureProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 643
    :cond_1d
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceProcessedPicture() - contentUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3

    goto/16 :goto_b

    .line 664
    .end local v14    # "fileSize":J
    .end local v33    # "updateValues":Landroid/content/ContentValues;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v31    # "thumbSize":I
    :catch_14
    move-exception v12

    .line 665
    .restart local v12    # "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - Fail to create thumbnail image"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    const/16 v30, 0x0

    .local v30, "thumb":Landroid/graphics/Bitmap;
    goto/16 :goto_c

    .line 682
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v30    # "thumb":Landroid/graphics/Bitmap;
    .restart local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_15
    move-exception v3

    goto/16 :goto_d

    .end local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_16
    move-exception v2

    .end local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_1c
    :try_start_24
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :catchall_4
    move-exception v3

    move-object/from16 v35, v3

    move-object v3, v2

    move-object/from16 v2, v35

    :goto_1d
    if-eqz v26, :cond_1e

    :try_start_25
    invoke-virtual/range {v26 .. v26}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_18

    :cond_1e
    :goto_1e
    if-eqz v3, :cond_20

    :try_start_26
    throw v3

    .line 679
    :catch_17
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_e

    .line 682
    .end local v12    # "ex":Ljava/lang/Throwable;
    :catch_18
    move-exception v4

    if-nez v3, :cond_1f

    move-object v3, v4

    goto :goto_1e

    :cond_1f
    if-eq v3, v4, :cond_1e

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_20
    throw v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    .line 686
    :cond_21
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - No thumbnail image to compress"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v8, 0x0

    .local v8, "compressedImage":[B
    goto/16 :goto_f

    .line 701
    .end local v8    # "compressedImage":[B
    :catch_19
    move-exception v12

    .line 702
    .restart local v12    # "ex":Ljava/lang/Throwable;
    :goto_1f
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "broadcastThumbnailImage() - Fail to send broadcast"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 706
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v31    # "thumbSize":I
    :cond_22
    sget-object v2, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "replaceProcessedPicture() - no file to replace"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 701
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v31    # "thumbSize":I
    :catch_1a
    move-exception v12

    .restart local v12    # "ex":Ljava/lang/Throwable;
    move-object/from16 v16, v17

    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    goto :goto_1f

    .line 682
    .end local v12    # "ex":Ljava/lang/Throwable;
    .local v8, "compressedImage":[B
    .restart local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v2

    goto :goto_1d

    .end local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_6
    move-exception v2

    move-object/from16 v26, v27

    .end local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v26, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1d

    .end local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1b
    move-exception v2

    move-object/from16 v26, v27

    .end local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1c

    .line 637
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v26    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v31    # "thumbSize":I
    .restart local v14    # "fileSize":J
    .restart local v33    # "updateValues":Landroid/content/ContentValues;
    :catchall_7
    move-exception v2

    move-object/from16 v3, v34

    goto/16 :goto_1a

    .line 612
    .end local v14    # "fileSize":J
    .end local v33    # "updateValues":Landroid/content/ContentValues;
    .local v28, "stream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v2

    goto/16 :goto_18

    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .restart local v29    # "stream":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v2

    move-object/from16 v28, v29

    .end local v29    # "stream":Ljava/io/FileOutputStream;
    .local v28, "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_18

    .local v28, "stream":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v2

    goto/16 :goto_17

    .line 585
    .end local v28    # "stream":Ljava/io/FileOutputStream;
    .restart local v22    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .restart local v23    # "oldImageStream":Ljava/io/FileInputStream;
    :catchall_a
    move-exception v2

    goto/16 :goto_15

    .end local v23    # "oldImageStream":Ljava/io/FileInputStream;
    .restart local v24    # "oldImageStream":Ljava/io/FileInputStream;
    :catchall_b
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "oldImageStream":Ljava/io/FileInputStream;
    .local v23, "oldImageStream":Ljava/io/FileInputStream;
    goto/16 :goto_15

    .end local v23    # "oldImageStream":Ljava/io/FileInputStream;
    .restart local v24    # "oldImageStream":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "oldImageStream":Ljava/io/FileInputStream;
    .restart local v23    # "oldImageStream":Ljava/io/FileInputStream;
    goto/16 :goto_14

    .line 572
    .end local v22    # "oldImage":Lcom/oneplus/media/EncodedImage;
    .end local v23    # "oldImageStream":Ljava/io/FileInputStream;
    .restart local v18    # "newImage":Lcom/oneplus/media/EncodedImage;
    .restart local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catchall_c
    move-exception v2

    goto/16 :goto_12

    .end local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catchall_d
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .local v19, "newImageStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_12

    .end local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    :catch_1e
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "newImageStream":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "newImageStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_11
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 240
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_Messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 251
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService$3;-><init>(Lcom/oneplus/camera/OPPictureProcessService;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    .line 260
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_MainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_Messenger:Landroid/os/Messenger;

    .line 263
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    .line 264
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v0, Lcom/oneplus/camera/OPPictureProcessService$4;

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/OPPictureProcessService$4;-><init>(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    .line 278
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const v1, -0x1fbd5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    .line 282
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const v1, -0x1fbe4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const v1, -0x1fbd6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const v1, -0x1fbe5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 302
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 288
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 413
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRebind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 411
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ActiveCounts:I

    .line 427
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public onUnprocessedPictureReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 438
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnprocessedPictureReceived() - Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 435
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    const v4, -0x1fbda

    .line 449
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnprocessedPictureSaved() - Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", contentUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/camera/OPPictureProcessService;->replaceProcessedPicture(Ljava/nio/ByteBuffer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 478
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_ProcessedPictureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_AsyncHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    :goto_1
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 465
    :cond_1
    sget-object v1, Lcom/oneplus/camera/OPPictureProcessService;->SYNC_ACTIVE:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_1
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUnprocessedPictureSaved() - Processed picture not ready yet"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService;->m_UnprocessedPictureInfoTable:Ljava/util/HashMap;

    new-instance v2, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;

    invoke-direct {v2, p2, p3}, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 465
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService;->completeServiceTask()V

    goto :goto_1
.end method
