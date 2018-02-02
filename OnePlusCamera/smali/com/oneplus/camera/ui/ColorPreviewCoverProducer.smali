.class public Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;
.super Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.source "ColorPreviewCoverProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$1;,
        Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$2;,
        Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MIN:J = 0x64L

.field private static final ANIMATION_FADE_IN_DURATION:J = 0x64L

.field private static final ANIMATION_FADE_OUT_DURATION:J = 0xc8L


# instance fields
.field private m_Color:I

.field private final m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

.field private final m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

.field private final m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->onFadeInAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->onFadeOutAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->onReverseFadeOutAnimationEnd()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;I)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "color"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 18
    new-instance v0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$1;-><init>(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$2;-><init>(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer$3;-><init>(Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 50
    iput p2, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_Color:I

    .line 45
    return-void
.end method

.method private onFadeInAnimationEnd()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method private onFadeOutAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    sget-object v2, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private onReverseFadeOutAnimationEnd()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReverseFadeOutAnimationEnd()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 84
    return-void
.end method


# virtual methods
.method public isAlphaBlending()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected preparePreviewCover()Z
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "bgView":Landroid/view/View;
    iget v1, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_Color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    sget-object v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method protected reverseInAnimation()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected reverseOutAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 118
    sget-object v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v1, v4, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "reverseOutAnimation()"

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, v6, v1

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 126
    .local v2, "duration":J
    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 127
    const-wide/16 v2, 0x64

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 129
    iget-object v4, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnReverseFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 116
    return-void
.end method

.method protected startInAnimation(Z)V
    .locals 6
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 138
    sget-object v2, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v2, v3, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 145
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startInAnimation()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverContainer()Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "backgroundView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeInAnimationEndRunnable:Ljava/lang/Runnable;

    .line 155
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 159
    sget-object v2, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method protected startOutAnimation(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 168
    sget-object v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-eq v1, v2, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 175
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startOutAnimation()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->getPreviewCoverBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "backgroundView":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->m_OnFadeOutAnimationEndRunnable:Ljava/lang/Runnable;

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 185
    sget-object v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    return-void
.end method
