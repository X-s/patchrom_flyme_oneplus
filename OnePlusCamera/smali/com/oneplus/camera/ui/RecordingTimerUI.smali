.class final Lcom/oneplus/camera/ui/RecordingTimerUI;
.super Lcom/oneplus/camera/UIComponent;
.source "RecordingTimerUI.java"


# static fields
.field private static final DURATION_RECORDING_TIMER_INVISIBLE:J = 0x3e8L

.field private static final MSG_SHOW_RECORDING_TIMER:I = 0x2710


# instance fields
.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

.field private m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/ZoomController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/RecordingTimerUI;Lcom/oneplus/camera/VideoCaptureState;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/base/Rotation;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->hideRecordingTimer()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/RecordingTimerUI;J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/RecordingTimerUI;->updateRecordingTimer(J)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 34
    const-string/jumbo v0, "Recording Timer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 32
    return-void
.end method

.method private getRecordingTimerString(J)Ljava/lang/String;
    .locals 9
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 139
    div-long v0, p1, v4

    .line 140
    .local v0, "hours":J
    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    .line 141
    div-long v2, p1, v6

    .line 142
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 144
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private hideRecordingTimer()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    .line 54
    return-void
.end method

.method private showRecordingTimer()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRecordingTimerString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    .line 123
    :cond_0
    return-void
.end method

.method private updateRecordingTimer(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_RecordingTimerHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRecordingTimerString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 39
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 68
    const-class v1, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 69
    const-class v1, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ZoomController;

    iput-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 73
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$1;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 81
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$2;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 103
    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/RecordingTimerUI$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$3;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 62
    :cond_0
    return-void
.end method
