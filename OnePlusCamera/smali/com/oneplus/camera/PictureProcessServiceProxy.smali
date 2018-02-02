.class public Lcom/oneplus/camera/PictureProcessServiceProxy;
.super Lcom/oneplus/camera/UIComponent;
.source "PictureProcessServiceProxy.java"

# interfaces
.implements Lcom/oneplus/camera/PictureProcessService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/PictureProcessServiceProxy$1;,
        Lcom/oneplus/camera/PictureProcessServiceProxy$2;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I = null

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.oneplus.camera.OPPictureProcessService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.camera"


# instance fields
.field private m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

.field private final m_ProcessingFilePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ProcessingWatermarkFilePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ServiceConnection:Landroid/content/ServiceConnection;

.field private m_ServiceMessenger:Landroid/os/Messenger;


# direct methods
.method private static synthetic -getcom-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->-com-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/PictureProcessServiceProxy;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->onClearCacheIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/PictureProcessServiceProxy;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/PictureProcessServiceProxy;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/PictureProcessServiceProxy;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 66
    const-string/jumbo v0, "Picture Process Service Proxy"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    .line 35
    new-instance v0, Lcom/oneplus/camera/PictureProcessServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/PictureProcessServiceProxy$1;-><init>(Lcom/oneplus/camera/PictureProcessServiceProxy;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v0, Lcom/oneplus/camera/PictureProcessServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/PictureProcessServiceProxy$2;-><init>(Lcom/oneplus/camera/PictureProcessServiceProxy;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 70
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 64
    return-void
.end method

.method private connectToService()V
    .locals 5

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 80
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.oneplus.camera"

    const-string/jumbo v4, "com.oneplus.camera.OPPictureProcessService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "connectToService() - Error when bind service"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onClearCacheIntentReceived(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 113
    .local v5, "contentUri":Landroid/net/Uri;
    const-string/jumbo v6, "pictureId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "pictureId":Ljava/lang/String;
    const-string/jumbo v6, "filePath"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "filePath":Ljava/lang/String;
    const-string/jumbo v6, "processTypes"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 116
    .local v9, "processTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 118
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClearCacheIntentReceived() - File path is empty"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClearCacheIntentReceived() - Process types is empty"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 128
    :cond_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "processTypeStr$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 130
    .local v7, "processTypeStr":Ljava/lang/String;
    const-class v6, Lcom/oneplus/camera/PictureProcessService$ProcessType;

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/PictureProcessService$ProcessType;

    .line 131
    .local v10, "type":Lcom/oneplus/camera/PictureProcessService$ProcessType;
    invoke-static {}, Lcom/oneplus/camera/PictureProcessServiceProxy;->-getcom-oneplus-camera-PictureProcessService$ProcessTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v10}, Lcom/oneplus/camera/PictureProcessService$ProcessType;->ordinal()I

    move-result v11

    aget v6, v6, v11

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - Offline picture processed: "

    invoke-static {v6, v11, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 140
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - Duplicated file path processed: "

    invoke-static {v6, v11, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_4
    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 146
    .local v0, "e":Lcom/oneplus/camera/media/MediaEventArgs;
    sget-object v6, Lcom/oneplus/camera/PictureProcessServiceProxy;->EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 149
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    sget-object v6, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - "

    iget-object v12, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, " picture(s) left"

    invoke-static {v6, v11, v12, v13}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    :pswitch_1
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - Watermark picture processed: "

    invoke-static {v6, v11, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 162
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - Duplicated file path processed: "

    invoke-static {v6, v11, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 167
    :cond_6
    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 168
    .restart local v0    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    sget-object v6, Lcom/oneplus/camera/PictureProcessServiceProxy;->EVENT_WATERMARK_PROCESSED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 171
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 172
    iget-object v6, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onClearCacheIntentReceived() - "

    iget-object v12, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, " picture(s) is processing watermark"

    invoke-static {v6, v11, v12, v13}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    .end local v7    # "processTypeStr":Ljava/lang/String;
    .end local v10    # "type":Lcom/oneplus/camera/PictureProcessService$ProcessType;
    :cond_7
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 232
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 233
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 241
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 238
    return-void
.end method


# virtual methods
.method public isPictureProcessing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWatermarkProcessing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 201
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 182
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeinitialize() - Error when unbind service"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 209
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 212
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 215
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "filter":Landroid/content/IntentFilter;
    :try_start_0
    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialize() - Error to add data type"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUnprocessedPictureReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "halPictureId"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-object v3, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/PictureProcessServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 253
    return-void

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onUnprocessedPictureReceived() - Picture id: "

    const-string/jumbo v5, ", HAL picture id: "

    invoke-static {v3, v4, p1, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "pictureId"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "halPictureId"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x0

    const v4, -0x1fbd1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 265
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    return-void

    .line 268
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onUnprocessedPictureReceived() - Send message failed"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 280
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureSaved() - Picture id: "

    const-string/jumbo v3, ", filePath: "

    const-string/jumbo v5, ", contentUri: "

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "pictureId"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v0, "filePath"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v0, "contentUri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    const v1, -0x1fbd2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 296
    .local v9, "message":Landroid/os/Message;
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v9    # "message":Landroid/os/Message;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 277
    :cond_1
    return-void

    .line 300
    :catch_0
    move-exception v8

    .line 301
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureSaved() - Send message failed"

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public scheduleProcessWatermark(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/camera/watermark/Watermark;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 10
    .param p1, "pictureId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "watermark"    # Lcom/oneplus/camera/watermark/Watermark;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 314
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "scheduleProcessWatermark() - Picture id: "

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string/jumbo v4, ", file: "

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const-string/jumbo v4, ", watermark: "

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const-string/jumbo v4, ", bounds: "

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/4 v4, 0x6

    aput-object p4, v3, v4

    const-string/jumbo v4, ", text: "

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const/16 v4, 0x8

    aput-object p5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pictureId"

    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v1, "filePath"

    invoke-virtual {v7, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v1, "watermark"

    invoke-virtual {v7, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 329
    const-string/jumbo v1, "watermarkBounds"

    invoke-virtual {v7, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string/jumbo v1, "watermarkText"

    invoke-virtual {v7, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x0

    const v2, -0x1fbd5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 332
    .local v9, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 333
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 337
    .local v0, "e":Lcom/oneplus/camera/media/MediaEventArgs;
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->EVENT_WATERMARK_PROCESSING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "e":Lcom/oneplus/camera/media/MediaEventArgs;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v9    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v8

    .line 341
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "scheduleProcessWatermark() - Send message failed"

    invoke-static {v1, v2, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingWatermarkFilePaths:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
