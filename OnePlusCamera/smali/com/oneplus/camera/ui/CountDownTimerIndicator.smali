.class final Lcom/oneplus/camera/ui/CountDownTimerIndicator;
.super Lcom/oneplus/camera/UIComponent;
.source "CountDownTimerIndicator.java"


# static fields
.field private static final DURATION_TORCH_TIME_MILLIS:J = 0x1f4L

.field private static final DURATION_TORCH_TIME_MILLIS_SHORT:J = 0xfaL

.field private static final MSG_TORCH_FLASHLIGHT:I = 0x2711


# instance fields
.field private m_Container:Landroid/view/View;

.field private m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_TimerTextView:Landroid/widget/TextView;

.field private m_TorchFlashHandle:Lcom/oneplus/base/Handle;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 44
    const-string v0, "Count-down Timer Indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->onCountDownTimerStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->onCountDownTimerStopped()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/CountDownTimerIndicator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CountDownTimerIndicator;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->onCountDownTimerChanged(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->updateContainerBounds()V

    return-void
.end method

.method private onCountDownTimerChanged(J)V
    .locals 9
    .param p1, "remainingSeconds"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->setupUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->PROP_IS_COUNT_DOWN_FLASHLIGHT_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/CountDownTimer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 83
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->torchFlashlight(J)V

    goto :goto_0

    .line 84
    :cond_2
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 86
    :cond_3
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->torchFlashlight(J)V

    .line 87
    const/16 v2, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onCountDownTimerStarted()V
    .locals 7

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->setupUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method private onCountDownTimerStopped()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 113
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_1
    return-void
.end method

.method private setupUI()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return v4

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    .line 194
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->updateContainerBounds()V

    .line 195
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;J)V

    goto :goto_0
.end method

.method private torchFlashlight(J)V
    .locals 1
    .param p1, "durationMillis"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-nez v0, :cond_0

    .line 206
    const-class v0, Lcom/oneplus/camera/FlashController;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 210
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_FlashController:Lcom/oneplus/camera/FlashController;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/camera/FlashController;->torchFlash(J)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;

    .line 212
    :cond_1
    return-void
.end method

.method private updateContainerBounds()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 219
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v3, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 224
    .local v1, "previewBounds":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 225
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 226
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 227
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 228
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 229
    iget-object v2, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 62
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->torchFlashlight(J)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 130
    const-class v0, Lcom/oneplus/camera/CountDownTimer;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CountDownTimer;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    .line 131
    const-class v0, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CountDownTimerIndicator$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator$1;-><init>(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_CountDownTimer:Lcom/oneplus/camera/CountDownTimer;

    sget-object v1, Lcom/oneplus/camera/CountDownTimer;->PROP_REMAINING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CountDownTimerIndicator$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator$2;-><init>(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/CountDownTimerIndicator$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator$3;-><init>(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 167
    :cond_1
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->m_TimerTextView:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p2, v2, v3}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;J)V

    .line 179
    return-void
.end method
