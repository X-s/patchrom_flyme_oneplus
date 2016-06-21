.class public final Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui_ex/statusbar/phone/BarTransitions;
.source "PhoneStatusBarTransitions.java"


# instance fields
.field private mBattery:Landroid/view/View;

.field private mClock:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mSignalCluster:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;

.field private final mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    .prologue
    const/4 v2, 0x1

    .line 40
    const v1, 0x7f020421

    invoke-direct {p0, p1, v1}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    .line 42
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d001f

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    .line 44
    return-void
.end method

.method private applyMode(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x3

    .line 87
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v1

    .line 89
    .local v1, "newAlpha":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v2

    .line 90
    .local v2, "newAlphaBC":F
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 93
    :cond_2
    if-eqz p2, :cond_5

    .line 94
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    .local v0, "anims":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 97
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 104
    :cond_3
    if-ne p1, v6, :cond_4

    .line 105
    const-wide/16 v4, 0x2ee

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 107
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 108
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    .line 111
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 112
    :cond_6
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    :cond_7
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 114
    :cond_8
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 115
    :cond_9
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 71
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    goto :goto_0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 65
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    goto :goto_0
.end method

.method private isOpaque(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 76
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "toAlpha"    # F

    .prologue
    .line 61
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f0180

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 49
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f002f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f0084

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->applyModeBackground(IIZ)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->getMode()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    .line 58
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    goto :goto_0
.end method

.method protected onTransition(IIZ)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    .line 84
    return-void
.end method
