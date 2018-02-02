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
.field private static final MSG_UNPROCESSED_PICTURE_RECEIVED:I = -0x1fbd1

.field private static final MSG_UNPROCESSED_PICTURE_SAVED:I = -0x1fbd2

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

.field private m_ServiceConnection:Landroid/content/ServiceConnection;

.field private m_ServiceMessenger:Landroid/os/Messenger;


# direct methods
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

    .line 64
    const-string/jumbo v0, "Picture Process Service Proxy"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    .line 33
    new-instance v0, Lcom/oneplus/camera/PictureProcessServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/PictureProcessServiceProxy$1;-><init>(Lcom/oneplus/camera/PictureProcessServiceProxy;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    .line 51
    new-instance v0, Lcom/oneplus/camera/PictureProcessServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/PictureProcessServiceProxy$2;-><init>(Lcom/oneplus/camera/PictureProcessServiceProxy;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 68
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 62
    return-void
.end method

.method private connectToService()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 78
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.oneplus.camera"

    const-string/jumbo v4, "com.oneplus.camera.OPPictureProcessService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "connectToService() - Error when bind service"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onClearCacheIntentReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 103
    .local v4, "contentUri":Landroid/net/Uri;
    const-string/jumbo v5, "filePath"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "filePath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    return-void

    .line 112
    :cond_1
    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 113
    .local v0, "e":Lcom/oneplus/camera/media/MediaEventArgs;
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 99
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClearCacheIntentReceived() - "

    iget-object v5, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, " picture(s) left"

    invoke-static {v1, v2, v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 167
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 168
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 176
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public isPictureProcessing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 94
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

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    sget-object v1, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 144
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 125
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDeinitialize() - Error when unbind service"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 155
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method public onUnprocessedPictureReceived(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v3, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/PictureProcessServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onUnprocessedPictureReceived() - Id: "

    invoke-static {v3, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "fileId"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x0

    const v4, -0x1fbd1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 202
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onUnprocessedPictureReceived() - Send message failed"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 214
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/oneplus/camera/PictureProcessServiceProxy;->connectToService()V

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureSaved() - Id: "

    const-string/jumbo v3, ", filePath: "

    const-string/jumbo v5, ", contentUri:"

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "fileId"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "filePath"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "contentUri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    const v1, -0x1fbd2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 230
    .local v9, "message":Landroid/os/Message;
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v9    # "message":Landroid/os/Message;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    sget-object v0, Lcom/oneplus/camera/PictureProcessServiceProxy;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/PictureProcessServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 211
    :cond_1
    return-void

    .line 234
    :catch_0
    move-exception v8

    .line 235
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureSaved() - Send message failed"

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/camera/PictureProcessServiceProxy;->m_ProcessingFilePaths:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
