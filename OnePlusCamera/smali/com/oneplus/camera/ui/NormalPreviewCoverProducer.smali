.class public Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;
.super Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.source "NormalPreviewCoverProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$1;,
        Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;,
        Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$3;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADE_OUT_DURATION:J = 0xc8L


# instance fields
.field private final m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

.field private final m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

.field private final m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->onFadeOutAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->onFadeOutAnimationStart()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->onReverseFadeOutAnimationEnd()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 20
    new-instance v0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$1;-><init>(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$2;-><init>(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer$3;-><init>(Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private onFadeOutAnimationEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 68
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    sget-object v3, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method private onFadeOutAnimationStart()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method private onReverseFadeOutAnimationEnd()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 84
    return-void
.end method


# virtual methods
.method public isAlphaBlending()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected preparePreviewCover()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 96
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v8, :cond_0

    .line 97
    const-class v8, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {v2, v8}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 98
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v8, :cond_1

    .line 100
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "preparePreviewCover() - No viewfinder"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v10

    .line 105
    :cond_1
    sget-object v8, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v8}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    .line 106
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-nez v1, :cond_2

    .line 108
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "preparePreviewCover() - No camera"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return v10

    .line 113
    :cond_2
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v9, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 114
    .local v5, "previewBounds":Landroid/graphics/RectF;
    const/4 v6, 0x0

    .line 115
    .local v6, "previewFrame":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v8, :cond_3

    .line 116
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v9, Lcom/oneplus/camera/ui/Viewfinder;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 115
    if-eqz v8, :cond_3

    .line 117
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    .line 118
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    .line 120
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v7, v8

    .line 121
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v3, v8

    .line 122
    .local v3, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 123
    .local v6, "previewFrame":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    invoke-interface {v8, v6, v10}, Lcom/oneplus/camera/ui/Viewfinder;->copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 125
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "preparePreviewCover() - Cannot copy display preview frame"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v10

    .line 131
    .end local v3    # "height":I
    .end local v6    # "previewFrame":Landroid/graphics/Bitmap;
    .end local v7    # "width":I
    :cond_3
    if-nez v6, :cond_4

    .line 133
    iget-object v8, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "preparePreviewCover() - Preview frame is null"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v10

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 141
    .local v0, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 144
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 148
    sget-object v8, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v8, v9}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 150
    const/4 v8, 0x1

    return v8
.end method

.method protected reverseInAnimation()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected reverseOutAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 165
    sget-object v4, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v4, v5, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "reverseOutAnimation()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 172
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 173
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 174
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    sub-float v4, v6, v4

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 175
    .local v2, "duration":J
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 176
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 177
    iget-object v5, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 176
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 163
    return-void
.end method

.method protected startInAnimation(Z)V
    .locals 7
    .param p1, "animation"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 186
    sget-object v3, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v3, v4, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    if-nez p1, :cond_1

    .line 192
    sget-object v3, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 193
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startInAnimation()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 201
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 205
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 207
    sget-object v3, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 208
    sget-object v3, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method protected startOutAnimation(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 215
    sget-object v2, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v2, v3, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    if-nez p1, :cond_1

    .line 221
    iget-object v2, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 222
    return-void

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startOutAnimation()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->getPreviewCoverBaseImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 229
    .local v1, "baseImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 230
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 232
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnFadeOutAnimationStartRunnable:Ljava/lang/Runnable;

    .line 232
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 232
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 236
    sget-object v2, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
