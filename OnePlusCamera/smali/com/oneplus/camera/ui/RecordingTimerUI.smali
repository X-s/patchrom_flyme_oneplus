.class final Lcom/oneplus/camera/ui/RecordingTimerUI;
.super Lcom/oneplus/camera/UIComponent;
.source "RecordingTimerUI.java"


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final MSG_SHOW_RECORDING_TIMER:I = 0x2710


# instance fields
.field private m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

.field private m_TimerTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/RecordingTimerUI;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/RecordingTimerUI;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/RecordingTimerUI;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/RecordingTimerUI;Lcom/oneplus/camera/ui/SecondLayerBar;)Lcom/oneplus/camera/ui/SecondLayerBar;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->hideRecordingTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/RecordingTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/RecordingTimerUI;J)V
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
    .line 38
    const-string/jumbo v0, "Recording Timer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 36
    return-void
.end method

.method private getRecordingTimerString(J)Ljava/lang/String;
    .locals 9
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 45
    div-long v0, p1, v4

    .line 46
    .local v0, "hours":J
    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    .line 47
    div-long v2, p1, v6

    .line 48
    .local v2, "minutes":J
    mul-long v4, v2, v6

    sub-long/2addr p1, v4

    .line 50
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
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/RecordingTimerUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 71
    return-void
.end method

.method private showRecordingTimer()V
    .locals 8

    .prologue
    const v7, 0x7f090100

    const/16 v6, 0xc

    const/16 v5, 0xa

    .line 157
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v3, :cond_0

    .line 158
    return-void

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_SecondLayerBar:Lcom/oneplus/camera/ui/SecondLayerBar;

    sget-object v4, Lcom/oneplus/camera/ui/SecondLayerBar;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/ui/SecondLayerBar;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 164
    .local v2, "rotation":Lcom/oneplus/base/Rotation;
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 167
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 172
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 173
    invoke-static {}, Lcom/oneplus/camera/ui/RecordingTimerUI;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 188
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const v3, 0x7f090101

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 196
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/RecordingTimerUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 154
    return-void

    .line 176
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 184
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    const v3, 0x7f0900ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateRecordingTimer(J)V
    .locals 3
    .param p1, "seconds"    # J

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getRecordingTimerString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 56
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->showRecordingTimer()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/RecordingTimerUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 86
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 87
    iget-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_BaseContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v2, 0x7f0a0103

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/RecordingTimerUI;->m_TimerTextView:Landroid/widget/TextView;

    .line 90
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$1;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 98
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$2;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 120
    const-class v1, Lcom/oneplus/camera/ui/SecondLayerBar;

    new-instance v2, Lcom/oneplus/camera/ui/RecordingTimerUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/RecordingTimerUI$3;-><init>(Lcom/oneplus/camera/ui/RecordingTimerUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/RecordingTimerUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 79
    return-void
.end method
