.class public Lcom/android/server/policy/ui/OpGlobalActionsView;
.super Landroid/widget/FrameLayout;
.source "OpGlobalActionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;,
        Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;
    }
.end annotation


# instance fields
.field private mBgView:Landroid/view/View;

.field private mConfirmedAnimation:Landroid/view/animation/AnimationSet;

.field private mOnViewTouchListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;

.field private mQuitListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;

.field private mShowAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    .line 19
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    .line 20
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    .line 26
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionsView;->initAnimation()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    .line 19
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    .line 20
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    .line 31
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionsView;->initAnimation()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    .line 19
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    .line 20
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    .line 36
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionsView;->initAnimation()V

    .line 37
    return-void
.end method

.method private initAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    const v3, 0x3f4ccccd    # 0.8f

    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 92
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 98
    .restart local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0xbb

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_3

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionsView;->removePowerView()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mOnViewTouchListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;

    invoke-interface {v0, p1}, Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;->OnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removePowerView()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mQuitListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mQuitListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;

    invoke-interface {v0}, Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;->OnQuit()V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnQuitListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mQuitListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnQuitListener;

    .line 41
    return-void
.end method

.method public setOnViewTouchListener(Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mOnViewTouchListener:Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;

    .line 45
    return-void
.end method

.method public startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/policy/OpGlobalActions$ActionState;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 76
    const v0, 0x50b0005

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
