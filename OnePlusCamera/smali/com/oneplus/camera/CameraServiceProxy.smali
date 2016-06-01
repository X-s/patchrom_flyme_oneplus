.class public Lcom/oneplus/camera/CameraServiceProxy;
.super Lcom/oneplus/camera/UIComponent;
.source "CameraServiceProxy.java"

# interfaces
.implements Lcom/oneplus/camera/CameraService;


# static fields
.field private static final CAMERA_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.oneplus.camera.service.CameraService"

.field private static final CAMERA_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.camera.service"

.field private static final MSG_CHECK_SUPPORTED_STATE:I = -0x1339ea

.field private static final MSG_RESULT_SUPPORTED_STATE:I = -0x133a1c

.field private static final MSG_TORCH_FLASH:I = -0x133a44

.field private static final SUPPORTED_STATE_TORCH:I = 0x7594

.field private static final TORCH_FLASH_OFF:I = 0x0

.field private static final TORCH_FLASH_ON:I = 0x1


# instance fields
.field private m_LocalMessenger:Landroid/os/Messenger;

.field private m_ServiceConnection:Landroid/content/ServiceConnection;

.field private m_ServiceMessenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 49
    const-string v0, "Camera System Service Proxy"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 29
    new-instance v0, Lcom/oneplus/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/CameraServiceProxy$1;-><init>(Lcom/oneplus/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    .line 52
    sget-object v0, Lcom/oneplus/camera/CameraServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 53
    sget-object v0, Lcom/oneplus/camera/CameraServiceProxy;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/CameraServiceProxy;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraServiceProxy;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/CameraServiceProxy;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/CameraServiceProxy;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraServiceProxy;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraServiceProxy;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/CameraServiceProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/CameraServiceProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/camera/CameraServiceProxy;->torchFlashRemote(Z)V

    return-void
.end method

.method private checkTorchFlashSupportedState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    const v2, -0x1339ea

    const/16 v3, 0x7594

    const/4 v4, 0x0

    invoke-static {v5, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 61
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_LocalMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "checkTorchFlashSupportedState()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "checkTorchFlashSupportedState() - Send message failed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 139
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 140
    sget-object v0, Lcom/oneplus/camera/CameraServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0}, Lcom/oneplus/camera/CameraServiceProxy;->checkTorchFlashSupportedState()V

    .line 144
    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    .line 151
    sget-object v0, Lcom/oneplus/camera/CameraServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method private onSupportedStateResult(IZ)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "isSupported"    # Z

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 161
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/CameraServiceProxy;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/CameraServiceProxy;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/camera/SupportedState;->NOT_SUPPORTED:Lcom/oneplus/camera/SupportedState;

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7594
        :pswitch_0
    .end packed-switch
.end method

.method private torchFlashRemote(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 203
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 204
    .local v0, "arg":I
    :goto_0
    const v4, -0x133a44

    invoke-static {v5, v4, v0, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 207
    .local v2, "message":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "torchFlashRemote() - Torch: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iget-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    return-void

    .end local v0    # "arg":I
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    move v0, v3

    .line 203
    goto :goto_0

    .line 210
    .restart local v0    # "arg":I
    .restart local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "torchFlashRemote() - Send flash message failed"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 89
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/oneplus/camera/CameraServiceProxy;->onSupportedStateResult(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch -0x133a1c
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 107
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "onDeinitialize() - Error when unbind service"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 114
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraServiceProxy;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 118
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.oneplus.camera.service"

    const-string v4, "com.oneplus.camera.service.CameraService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_ServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    new-instance v3, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraServiceProxy;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->m_LocalMessenger:Landroid/os/Messenger;

    .line 132
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "onInitialize() - Error when bind service"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public torchFlash()Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    sget-object v1, Lcom/oneplus/camera/CameraServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "torchFlash() - Service is not connected"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v0

    .line 179
    :cond_0
    sget-object v1, Lcom/oneplus/camera/CameraServiceProxy;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    if-eq v1, v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/oneplus/camera/CameraServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "torchFlash() - Torch flash is not suppoerted"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/oneplus/camera/CameraServiceProxy$2;

    const-string v1, "Torch Flash Service"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraServiceProxy$2;-><init>(Lcom/oneplus/camera/CameraServiceProxy;Ljava/lang/String;)V

    .line 195
    .local v0, "handle":Lcom/oneplus/base/Handle;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->torchFlashRemote(Z)V

    goto :goto_0
.end method
