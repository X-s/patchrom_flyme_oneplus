.class final Lcom/oneplus/camera/ui/RecordingTimerUI;
.super Lcom/oneplus/camera/UIComponent;
.source "RecordingTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/RecordingTimerUI$4;
    }
.end annotation


# static fields
.field private static final DURATION_RECORDING_TIMER_INVISIBLE:J = 0x3e8L

.field private static final MSG_SHOW_RECORDING_TIMER:I = 0x2710


# instance fields
.field private m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_TimerTextView:Landroid/widget/TextView;

.field private m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 41
    const-string v0, "Recording Timer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/RecordingTimerUI;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/RecordingTimerUI;->updateRecordingTimer(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/camera/ui/RecordingTimerUI;Lcom/oneplus/camera/VideoCaptureState;)Lcom/oneplus/camera/VideoCaptureState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;
    .param p1, "x1"    # Lcom/oneplus/camera/VideoCaptureState;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/oneplus/camera/VideoCaptureState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->hideRecordingTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/camera/ZoomController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/RecordingTimerUI;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/RecordingTimerUI;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method private hideRecordingTimer()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 64
    return-void
.end method

.method private showRecordingTimer()V
    .locals 10

    .prologue
    const v9, 0x7f070058

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 131
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    move-object v3, v0

    .line 133
    check-cast v3, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 134
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f0b007b

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    .line 135
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/ui/RecordingTimerUI;->updateRecordingTimer(J)V

    .line 136
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/RecordingTimerUI;->addNavBarAlignedView(Landroid/view/View;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 141
    .local v2, "rotation":Lcom/oneplus/base/Rotation;
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 143
    sget-object v3, Lcom/oneplus/camera/ui/RecordingTimerUI$4;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 168
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/RecordingTimerUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 169
    return-void

    .line 147
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 148
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 150
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 154
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 156
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 160
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 162
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRecordingTimer(J)V
    .locals 11
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v8, 0xe10

    const-wide/16 v6, 0x3c

    .line 175
    iget-object v4, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    div-long v0, p1, v8

    .line 178
    .local v0, "hours":J
    mul-long v4, v0, v8

    sub-long/2addr p1, v4

    .line 179
    div-long v2, p1, v6

    .line 180
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 181
    iget-object v4, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 58
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 76
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$1;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 84
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$2;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 106
    const-class v1, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ZoomController;

    iput-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 107
    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v2, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/RecordingTimerUI$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$3;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 123
    :cond_0
    return-void
.end method
