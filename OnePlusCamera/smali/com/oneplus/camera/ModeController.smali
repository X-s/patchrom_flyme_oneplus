.class public abstract Lcom/oneplus/camera/ModeController;
.super Lcom/oneplus/camera/CameraComponent;
.source "ModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ModeController$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TUI::",
        "Lcom/oneplus/base/component/Component;",
        ">",
        "Lcom/oneplus/camera/CameraComponent;"
    }
.end annotation


# static fields
.field private static final MSG_ENTER:I = -0x2710

.field private static final MSG_EXIT:I = -0x2711

.field private static final MSG_LINK:I = -0x2712


# instance fields
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

.field private m_IsEntered:Z

.field private m_UI:Lcom/oneplus/base/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTUI;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 48
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 32
    new-instance v0, Lcom/oneplus/camera/ModeController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ModeController$1;-><init>(Lcom/oneplus/camera/ModeController;)V

    iput-object v0, p0, Lcom/oneplus/camera/ModeController;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 46
    return-void
.end method


# virtual methods
.method final enter(I)Z
    .locals 7
    .param p1, "flags"    # I

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/16 v0, -0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 63
    const/16 v1, -0x2710

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enter() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v3

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/ModeController;->m_IsEntered:Z

    if-eqz v0, :cond_2

    .line 73
    return v5

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enter()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enter() - Fail to enter mode"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v3

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enter() - Fail to enter mode"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return v3

    .line 93
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_3
    iput-boolean v5, p0, Lcom/oneplus/camera/ModeController;->m_IsEntered:Z

    .line 94
    return v5
.end method

.method final exit(I)V
    .locals 7
    .param p1, "flags"    # I

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/16 v0, -0x2710

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 108
    const/16 v1, -0x2711

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 109
    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ModeController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exit()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/camera/ModeController;->m_IsEntered:Z

    .line 102
    return-void

    .line 124
    :catch_0
    move-exception v6

    .line 125
    .local v6, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exit() - Error occurred while exiting mode"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final getUI()Lcom/oneplus/base/component/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTUI;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->m_UI:Lcom/oneplus/base/component/Component;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ModeController;->enter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Fail to enter mode asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ModeController;->exit(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/base/component/Component;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ModeController;->link(Lcom/oneplus/base/component/Component;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch -0x2712
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final isEntered()Z
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    iget-boolean v0, p0, Lcom/oneplus/camera/ModeController;->m_IsEntered:Z

    return v0
.end method

.method protected final isUILinked()Z
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->m_UI:Lcom/oneplus/base/component/Component;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final link(Lcom/oneplus/base/component/Component;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTUI;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    .local p1, "ui":Lcom/oneplus/base/component/Component;, "TTUI;"
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "link() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ModeController;->m_UI:Lcom/oneplus/base/component/Component;

    .line 204
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ModeController;->onUILinked(Lcom/oneplus/base/component/Component;)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const/16 v0, -0x2712

    invoke-static {p0, v0, v1, v1, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/oneplus/camera/ModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "link() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 251
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    return-void
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 261
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ModeController;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 262
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 259
    return-void
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 218
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 226
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 272
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ModeController;->m_CameraChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/camera/ModeController;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ModeController;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 270
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ModeController;->m_UI:Lcom/oneplus/base/component/Component;

    .line 235
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onRelease()V

    .line 232
    return-void
.end method

.method protected onUILinked(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTUI;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/oneplus/camera/ModeController;, "Lcom/oneplus/camera/ModeController<TTUI;>;"
    .local p1, "ui":Lcom/oneplus/base/component/Component;, "TTUI;"
    return-void
.end method
