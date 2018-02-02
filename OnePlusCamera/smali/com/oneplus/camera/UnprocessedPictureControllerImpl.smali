.class final Lcom/oneplus/camera/UnprocessedPictureControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "UnprocessedPictureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/UnprocessedPictureController;


# instance fields
.field private m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

.field private m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/oneplus/camera/CaptureHandle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->onMediaSaved(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->onUnprocessedPictureReceived(Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 22
    const-string/jumbo v0, "Unprocessed picture controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;

    .line 20
    return-void
.end method

.method private onMediaSaved(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMediaSaved() - m_CameraSystemService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaSaved() - captureHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "pictureId":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaSaved() - pictureId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz p3, :cond_3

    .end local p3    # "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/camera/PictureProcessService;->onUnprocessedPictureSaved(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v0    # "pictureId":Ljava/lang/String;
    :cond_2
    return-void

    .line 84
    .restart local v0    # "pictureId":Ljava/lang/String;
    .restart local p3    # "contentUri":Landroid/net/Uri;
    :cond_3
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method private onUnprocessedPictureReceived(Lcom/oneplus/camera/UnprocessedPictureEventArgs;)V
    .locals 3
    .param p1, "args"    # Lcom/oneplus/camera/UnprocessedPictureEventArgs;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureReceived() - args is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnprocessedPictureReceived() - m_CameraSystemService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnprocessedPictureReceived() - arg.getCaptureHandle(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , arg.getPictureId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_UnprocessedPicutreIdTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getPictureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/UnprocessedPictureEventArgs;->getHALPictureId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/PictureProcessService;->onUnprocessedPictureReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 34
    const-class v1, Lcom/oneplus/camera/PictureProcessService;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PictureProcessService;

    iput-object v1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    .line 37
    invoke-virtual {p0}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 38
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;-><init>(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 46
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$2;-><init>(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 55
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_UNPROCESSED_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$3;-><init>(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 28
    return-void
.end method
