.class public Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;
.super Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;
.source "CameraSwitchAnimationImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraSwitchAnimation;


# static fields
.field private static final ANIMATION_FADE_OUT_DELAY:J = 0x0L

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0x96L

.field private static final ANIMATION_ROTATE_HALF_DURATION:J = 0xc8L

.field private static final MSG_FADE_OUT:I = 0x186a0


# instance fields
.field private m_IsAnimationEnd:Z

.field private m_IsFirstPreviewFrameReceived:Z

.field private m_PreviewBounds:Landroid/graphics/RectF;

.field private m_SwitchAnimationContainer:Landroid/view/View;

.field private m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 36
    const-string v0, "Camera Switch Animation Impl"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->onFlipperAnimationEnd()V

    return-void
.end method

.method private onFlipperAnimationEnd()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFlipperAnimationEnd()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsAnimationEnd:Z

    .line 77
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->startFadeOutAnimation()V

    .line 79
    :cond_0
    return-void
.end method

.method private startFadeOutAnimation()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "startFadeOutAnimation()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$1;-><init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 182
    return-void
.end method

.method private startFlipperAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "startFlipperAnimation()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;-><init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 217
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->handleMessage(Landroid/os/Message;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->startFadeOutAnimation()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFirstPreviewFrameReceived()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onFirstPreviewFrameReceived()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    .line 65
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x186a0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 67
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Lcom/oneplus/camera/ui/BaseSwitchAnimationImpl;->onInitialize()V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 90
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 91
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize() - Cannot find Viewfinder component"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    .line 96
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/ImageView;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    const v4, 0x7f0b002d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    const v4, 0x7f0b002e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    .line 100
    return-void
.end method

.method protected onLastPreviewImageCreated([Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "images"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    sget-object v1, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "onLastPreviewImageCreated() - Already stopped"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 122
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 125
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 126
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 129
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 131
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->startFlipperAnimation()V

    .line 138
    sget-object v1, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "onReset()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const v0, 0x186a0

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 152
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsAnimationEnd:Z

    .line 153
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_IsFirstPreviewFrameReceived:Z

    .line 156
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_SwitchAnimationContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->m_PreviewBounds:Landroid/graphics/RectF;

    .line 166
    :cond_0
    return-void
.end method
