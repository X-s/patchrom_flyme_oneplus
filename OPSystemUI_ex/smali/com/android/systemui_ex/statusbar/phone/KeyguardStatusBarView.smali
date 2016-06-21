.class public Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

.field private mBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

.field private mBatteryListening:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateNextLayoutChange()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 184
    .local v0, "systemIconsCurrentX":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    .line 185
    .local v1, "userSwitcherVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 226
    return-void

    .line 184
    .end local v1    # "userSwitcherVisible":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 86
    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 106
    .local v1, "marginEnd":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    return-void

    .line 105
    .end local v1    # "marginEnd":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUserSwitcher()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 128
    .local v0, "keyguardSwitcherAvailable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    .line 131
    return-void

    .line 127
    .end local v0    # "keyguardSwitcherAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->addView(Landroid/view/View;I)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 72
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    .line 73
    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 74
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/BatteryIconGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 81
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    .line 137
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/BatteryIconGroup;->setBatteryController(Lcom/android/systemui_ex/statusbar/policy/BatteryController;)V

    .line 139
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .line 169
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 171
    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 0
    .param p1, "showing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 180
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mBatteryIconGroup:Lcom/android/systemui_ex/BatteryIconGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui_ex/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui_ex/statusbar/policy/UserInfoController;

    .prologue
    .line 142
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui_ex/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui_ex/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 148
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 233
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 234
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 236
    :cond_0
    return-void
.end method
