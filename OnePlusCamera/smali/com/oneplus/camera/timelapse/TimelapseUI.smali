.class final Lcom/oneplus/camera/timelapse/TimelapseUI;
.super Lcom/oneplus/camera/ModeUI;
.source "TimelapseUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeUI",
        "<",
        "Lcom/oneplus/camera/timelapse/TimelapseController;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_SIDE:I = 0x870


# instance fields
.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ResolutionSelector:Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/timelapse/TimelapseUI;)Lcom/oneplus/base/HandleSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/timelapse/TimelapseUI;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/timelapse/TimelapseUI;)Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionSelector:Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/timelapse/TimelapseUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/timelapse/TimelapseUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 54
    const-string/jumbo v0, "Time-lapse UI"

    const-class v1, Lcom/oneplus/camera/timelapse/TimelapseController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onEnter(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 64
    .local v0, "camaraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    return v4

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    return v4

    .line 71
    :cond_1
    new-instance v2, Lcom/oneplus/base/HandleSet;

    new-array v3, v4, [Lcom/oneplus/base/Handle;

    invoke-direct {v2, v3}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 74
    iget-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionSelector:Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;

    if-nez v2, :cond_2

    .line 75
    new-instance v2, Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;

    invoke-direct {v2, v0}, Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionSelector:Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v2, :cond_4

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    iget-object v3, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_ResolutionSelector:Lcom/oneplus/camera/timelapse/TimelapseUI$ResolutionSelector;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 78
    .local v1, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Fail to change resolution selector"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v4

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v2, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 87
    .end local v1    # "handle":Lcom/oneplus/base/Handle;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x3e2aaaab

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->setRecordingTimeRatio(F)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 90
    const/4 v2, 0x1

    return v2
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_RecordingTimeRatioHandle:Lcom/oneplus/base/Handle;

    .line 102
    iget-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 105
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 96
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/timelapse/TimelapseUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 118
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v2, Lcom/oneplus/camera/timelapse/TimelapseUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/timelapse/TimelapseUI$1;-><init>(Lcom/oneplus/camera/timelapse/TimelapseUI;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 111
    return-void
.end method
