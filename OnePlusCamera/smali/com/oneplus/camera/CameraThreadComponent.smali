.class public abstract Lcom/oneplus/camera/CameraThreadComponent;
.super Lcom/oneplus/base/component/BasicComponent;
.source "CameraThreadComponent.java"

# interfaces
.implements Lcom/oneplus/base/AsyncHandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;
    }
.end annotation


# static fields
.field private static final MSG_QUIT:I = -0x7b77


# instance fields
.field private m_AsyncHandler:Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

.field private final m_CameraThread:Lcom/oneplus/camera/CameraThread;

.field private final m_HasAsyncHandler:Z

.field private m_WorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/CameraThreadComponent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p3, "cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p4, "hasHandler"    # Z

    .prologue
    .line 101
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;ZZ)V

    .line 99
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p3, "cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p4, "hasHandler"    # Z
    .param p5, "hasAsyncHandler"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p4}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 116
    iput-object p3, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    .line 117
    iput-boolean p5, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_HasAsyncHandler:Z

    .line 113
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p3, "hasHandler"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;Z)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p3, "hasHandler"    # Z
    .param p4, "hasAsyncHandler"    # Z

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;ZZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public final getAsyncHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_AsyncHandler:Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

    return-object v0
.end method

.method protected getCamera()Lcom/oneplus/camera/Camera;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/oneplus/camera/CameraThread;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method protected getScreenSize()Lcom/oneplus/base/ScreenSize;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_CameraThread:Lcom/oneplus/camera/CameraThread;

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_AsyncHandler:Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;->release()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch -0x7b77
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_HasAsyncHandler:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_AsyncHandler:Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

    const/16 v1, -0x7b77

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;->sendEmptyMessage(I)Z

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 199
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 216
    iget-boolean v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_HasAsyncHandler:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oneplus/camera/CameraThreadComponent;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " worker thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v0, Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;-><init>(Lcom/oneplus/camera/CameraThreadComponent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/camera/CameraThreadComponent;->m_AsyncHandler:Lcom/oneplus/camera/CameraThreadComponent$AsyncHandler;

    .line 212
    :cond_0
    return-void
.end method
