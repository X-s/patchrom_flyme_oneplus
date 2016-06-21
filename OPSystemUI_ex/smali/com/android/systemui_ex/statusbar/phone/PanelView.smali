.class public abstract Lcom/android/systemui_ex/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field public mApplyDismissing:Z

.field mBackdropView:Landroid/view/View;

.field private mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

.field private mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

.field mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mCancelTranslationY:F

.field private mClosing:Z

.field private mCollapseAfterPeek:Z

.field private mDozingOnDown:Z

.field private mEdgeTapAreaWidth:I

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field private mExpanding:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mFlingToExpand:Z

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mIsCancelBounceAnimator:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekPending:Z

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPeekTouching:Z

.field private final mPostCollapseRunnable:Ljava/lang/Runnable;

.field private mScreenHeightInPortrait:I

.field protected mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mStatusBarState:I

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 76
    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mApplyDismissing:Z

    .line 94
    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBarState:I

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z

    .line 139
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1029
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1244
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PanelView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$14;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    .line 215
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 217
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 219
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Utils;->getDisplayHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mScreenHeightInPortrait:I

    .line 223
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 1101
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1102
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1103
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1104
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/phone/PanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private cancelHeightAnimator()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->endClosing()V

    .line 726
    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "targetHeight"    # F

    .prologue
    .line 1200
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1201
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PanelView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$13;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1207
    return-object v0
.end method

.method private endClosing()V
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onClosingFinished()V

    .line 733
    :cond_0
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 573
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 572
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    .line 740
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyBarPanelExpansionChanged()V
    .locals 4

    .prologue
    .line 1211
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui_ex/statusbar/phone/PanelView;FZ)V

    .line 1217
    return-void

    .line 1211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyExpandingFinished()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 167
    :cond_0
    return-void
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 160
    :cond_0
    return-void
.end method

.method private onMiddleClicked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1251
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1267
    :cond_0
    :goto_0
    return v0

    .line 1253
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    goto :goto_0

    .line 1258
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 1264
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    .line 1265
    const/4 v0, 0x0

    goto :goto_0

    .line 1251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreBounceAnimate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 578
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-nez v3, :cond_0

    .line 608
    :goto_0
    return-void

    .line 582
    :cond_0
    const/16 v1, 0x168

    .line 583
    .local v1, "animationTime":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_2

    .line 584
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 585
    .local v2, "tempAnimationTime":I
    if-ge v2, v1, :cond_1

    .line 586
    move v1, v2

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    .line 590
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 597
    .end local v2    # "tempAnimationTime":I
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mAlpha:F

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 598
    .local v0, "alphaSet":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PanelView$5;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 607
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private runPeekAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekHeight:F

    .line 179
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "expandedHeight"

    new-array v1, v4, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 184
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 209
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_0
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0xfa

    .line 1138
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1139
    .local v1, "target":F
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1140
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1141
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1142
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/PanelView$10;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1161
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1163
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/PanelView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$11;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1179
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1186
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1187
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1188
    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1195
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1196
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1197
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 238
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 239
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 240
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    .line 241
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 242
    return-void
.end method


# virtual methods
.method public cancelPeek()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1057
    return-void
.end method

.method protected cancelSingleHandModeWhenCollapse()V
    .locals 0

    .prologue
    .line 1310
    return-void
.end method

.method protected cancelSingleHandModeWhenFling()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method

.method protected cancelWallpaperAnimate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 613
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 617
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    .line 619
    :cond_1
    return-void
.end method

.method public collapse(Z)V
    .locals 4
    .param p1, "delayed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1008
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1009
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 1010
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1015
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 1017
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    .line 1018
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1019
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    .line 1020
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1021
    if-eqz p1, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1024
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1276
    const-string v1, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string v0, "T"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " (started)"

    :goto_3
    aput-object v0, v2, v3

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (started)"

    :goto_4
    aput-object v0, v2, v3

    const/16 v3, 0xa

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_5

    const-string v0, "T"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    return-void

    .line 1276
    :cond_0
    const-string v0, "f"

    goto :goto_0

    :cond_1
    const-string v0, "f"

    goto :goto_1

    :cond_2
    const-string v0, "f"

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, "f"

    goto :goto_5
.end method

.method protected enableSingleHandOpsWhenSwipeOnEmptySpace()V
    .locals 0

    .prologue
    .line 1309
    return-void
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 1040
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1041
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    .line 1045
    :cond_0
    return-void
.end method

.method protected fling(FZ)V
    .locals 10
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 786
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-eqz v4, :cond_0

    .line 788
    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 792
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v3, v4

    .line 797
    .local v3, "target":F
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v4

    if-nez v4, :cond_4

    move v7, v0

    .line 800
    .local v7, "clearAllExpandHack":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 803
    :cond_1
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    if-eqz p2, :cond_5

    .line 807
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingToExpand:Z

    .line 809
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 872
    :goto_2
    return-void

    .end local v3    # "target":F
    .end local v7    # "clearAllExpandHack":Z
    :cond_3
    move v3, v8

    .line 792
    goto :goto_0

    .restart local v3    # "target":F
    :cond_4
    move v7, v2

    .line 797
    goto :goto_1

    .line 812
    .restart local v7    # "clearAllExpandHack":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_8

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 813
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 814
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz p2, :cond_9

    .line 815
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v6

    .line 816
    .local v6, "belowFalsingThreshold":Z
    if-eqz v6, :cond_6

    .line 817
    const/4 p1, 0x0

    .line 819
    :cond_6
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 820
    if-eqz v6, :cond_7

    .line 821
    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 837
    .end local v6    # "belowFalsingThreshold":Z
    :cond_7
    :goto_4
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;

    invoke-direct {v0, p0, p2, v7}, Lcom/android/systemui_ex/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;ZZ)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 870
    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 871
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_8
    move v0, v2

    .line 812
    goto :goto_3

    .line 824
    .restart local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_9
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 828
    cmpl-float v0, p1, v8

    if-nez v0, :cond_a

    .line 829
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getCannedFlingDurationFactor()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 833
    :cond_a
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v0

    if-nez v0, :cond_7

    .line 834
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensor()V

    goto :goto_4
.end method

.method protected flingExpands(FF)Z
    .locals 4
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 768
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v0

    .line 771
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 774
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getCannedFlingDurationFactor()F
.end method

.method protected abstract getClearAllHeight()I
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 1

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->abortAnimations()V

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1094
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1095
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1097
    :cond_0
    return-void
.end method

.method public instantExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1060
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1061
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->abortAnimations()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 1064
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1067
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_1

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1070
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setVisibility(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->requestLayout()V

    .line 1089
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method protected abstract isDozing()Z
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 991
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .prologue
    .line 987
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method protected isUsingSingleHandMode()Z
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x0

    return v0
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 227
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 228
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    .line 229
    const v2, 0x7f0d008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintDistance:F

    .line 230
    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    .line 231
    const v2, 0x7f0d0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    .line 232
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 877
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 878
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 1108
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->loadDimens()V

    .line 760
    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1226
    const/4 v0, 0x1

    .line 1240
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onExpandingFinished()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->endClosing()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 150
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 752
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->loadDimens()V

    .line 754
    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 638
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v7, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v9

    .line 650
    :cond_1
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 651
    .local v2, "pointerIndex":I
    if-gez v2, :cond_2

    .line 652
    const/4 v2, 0x0

    .line 653
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 655
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 656
    .local v5, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 657
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v3

    .line 659
    .local v3, "scrolledToBottom":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 661
    :sswitch_0
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 662
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v7, :cond_4

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_5

    .line 664
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 665
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 666
    iput-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    move v9, v8

    .line 667
    goto :goto_0

    .line 669
    :cond_5
    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 670
    iput v5, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 671
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 672
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 673
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 674
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-nez v7, :cond_7

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 675
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 676
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 677
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isDozing()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 679
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 680
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_6
    move v7, v9

    .line 671
    goto :goto_1

    :cond_7
    move v8, v9

    .line 674
    goto :goto_2

    .line 683
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 684
    .local v4, "upPointer":I
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v7, v4, :cond_0

    .line 686
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v4, :cond_8

    move v1, v9

    .line 687
    .local v1, "newIndex":I
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 688
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 689
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_0

    .end local v1    # "newIndex":I
    :cond_8
    move v1, v8

    .line 686
    goto :goto_3

    .line 694
    .end local v4    # "upPointer":I
    :sswitch_2
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v6, v7

    .line 695
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 696
    if-nez v3, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-eqz v7, :cond_0

    .line 697
    :cond_9
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 699
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 700
    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 701
    iput v5, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 702
    iput-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    .line 703
    iput-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStarted()V

    move v9, v8

    .line 705
    goto/16 :goto_0

    .line 659
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 891
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 892
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 893
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 894
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_0

    .line 895
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->abortAnimations()V

    .line 896
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 899
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchDisabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 252
    sget-object v26, Lcom/android/systemui_ex/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "return touch when tracking: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInstantExpanding:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " , "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchDisabled:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    const/16 v26, 0x0

    .line 563
    :goto_0
    return v26

    .line 266
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 267
    .local v17, "pointerIndex":I
    if-gez v17, :cond_3

    .line 268
    const/16 v17, 0x0

    .line 269
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 271
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    .line 272
    .local v25, "y":F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    .line 274
    .local v24, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v26

    if-nez v26, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_8

    const/16 v26, 0x1

    :goto_1
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 277
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    :cond_5
    const/16 v23, 0x1

    .line 280
    .local v23, "waitForTouchSlop":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardBackdropView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    .line 563
    :cond_6
    :goto_3
    :pswitch_0
    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3b

    :cond_7
    const/16 v26, 0x1

    goto :goto_0

    .line 275
    .end local v23    # "waitForTouchSlop":Z
    :cond_8
    const/16 v26, 0x0

    goto :goto_1

    .line 277
    :cond_9
    const/16 v23, 0x0

    goto :goto_2

    .line 285
    .restart local v23    # "waitForTouchSlop":Z
    :pswitch_1
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 286
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBarState:I

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 289
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 290
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_11

    const/16 v26, 0x1

    :goto_4
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 292
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 293
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 295
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isDozing()Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    if-nez v26, :cond_a

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 300
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 301
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 303
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    :cond_e
    const/16 v26, 0x1

    :goto_5
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 311
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_10

    .line 314
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 316
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    .line 317
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mIsCancelBounceAnimator:Z

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-nez v26, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTranslationY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCancelTranslationY:F

    goto/16 :goto_3

    .line 291
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 305
    :cond_12
    const/16 v26, 0x0

    goto :goto_5

    .line 322
    :cond_13
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCancelTranslationY:F

    goto/16 :goto_3

    .line 329
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 330
    .local v19, "upPointer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 332
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    const/4 v14, 0x0

    .line 333
    .local v14, "newIndex":I
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 334
    .local v16, "newY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 335
    .local v15, "newX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 337
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 338
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    goto/16 :goto_3

    .line 332
    .end local v14    # "newIndex":I
    .end local v15    # "newX":F
    .end local v16    # "newY":F
    :cond_14
    const/4 v14, 0x1

    goto :goto_6

    .line 343
    .end local v19    # "upPointer":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_15

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->extendHighlightHintView()V

    .line 349
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    sub-float v10, v25, v26

    .line 350
    .local v10, "h":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBarState:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    .line 351
    sget-object v26, Lcom/android/systemui_ex/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Status Bar State is not match, won\'t handle this ACTION_MOVE event: previous="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBarState:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", current="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 357
    :cond_16
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_19

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v27, v0

    sub-float v27, v24, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_19

    .line 360
    :cond_17
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 361
    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v26, v0

    if-nez v26, :cond_19

    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_18

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 364
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 365
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 366
    const/4 v10, 0x0

    .line 368
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 370
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 376
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mScreenHeightInPortrait:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v10, v26

    if-gez v26, :cond_20

    .line 377
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mAlpha:F

    .line 383
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mAlpha:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setIndicationControllerAlpha(F)V

    .line 386
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v27, v0

    add-float v27, v27, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 387
    .local v13, "newHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekHeight:F

    move/from16 v26, v0

    cmpl-float v26, v13, v26

    if-lez v26, :cond_1b

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 391
    :cond_1a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 393
    :cond_1b
    neg-float v0, v10

    move/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_1c

    .line 394
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 396
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v26, v0

    if-nez v26, :cond_1e

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v26

    if-nez v26, :cond_1e

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isUsingSingleHandMode()Z

    move-result v26

    if-eqz v26, :cond_22

    .line 410
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-nez v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCancelTranslationY:F

    move/from16 v26, v0

    add-float v26, v26, v10

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-gtz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    if-eqz v26, :cond_1f

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCancelTranslationY:F

    move/from16 v27, v0

    add-float v27, v27, v10

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setTranslationY(F)V

    .line 416
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 378
    .end local v13    # "newHeight":F
    :cond_20
    const/16 v26, 0x0

    cmpl-float v26, v10, v26

    if-ltz v26, :cond_21

    .line 379
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mAlpha:F

    goto/16 :goto_7

    .line 381
    :cond_21
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mScreenHeightInPortrait:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v10, v27

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mAlpha:F

    goto/16 :goto_7

    .line 404
    .restart local v13    # "newHeight":F
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto :goto_8

    .line 421
    .end local v10    # "h":F
    .end local v13    # "newHeight":F
    :pswitch_4
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 422
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    move/from16 v26, v0

    if-nez v26, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v26, v0

    sub-float v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 427
    :cond_24
    const/16 v21, 0x0

    .line 428
    .local v21, "vel":F
    const/16 v20, 0x0

    .line 429
    .local v20, "vectorVel":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x3e8

    invoke-interface/range {v26 .. v27}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v21

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v20, v0

    .line 435
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v26

    if-nez v26, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    :cond_26
    const/4 v8, 0x1

    .line 439
    .local v8, "expand":Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v26, v0

    sub-float v22, v24, v26

    .line 440
    .local v22, "w":F
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v26, v26, v27

    if-lez v26, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v22, v26

    if-lez v26, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    if-eqz v26, :cond_27

    .line 444
    const/4 v8, 0x1

    .line 448
    :cond_27
    if-nez v8, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-eqz v26, :cond_33

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_28

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->extendHighlightHintView()V

    .line 460
    :cond_28
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 461
    .local v5, "absDeltaY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v26, v0

    sub-float v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 462
    .local v4, "absDeltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v5, v26

    if-lez v26, :cond_34

    cmpl-float v26, v5, v4

    if-lez v26, :cond_34

    const/4 v12, 0x1

    .line 466
    .local v12, "isYMovedFarEnough":Z
    :goto_b
    if-eqz v8, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-eqz v26, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isUsingSingleHandMode()Z

    move-result v26

    if-eqz v26, :cond_29

    if-nez v12, :cond_2b

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v26

    if-nez v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v26

    if-eqz v26, :cond_2b

    .line 469
    :cond_2a
    const/4 v8, 0x0

    .line 470
    sget-object v26, Lcom/android/systemui_ex/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v27, "set expand false when fully closed or bouncer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_2b
    if-eqz v8, :cond_2c

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->restoreBounceAnimate()V

    .line 480
    :cond_2c
    if-nez v8, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-nez v26, :cond_2d

    .line 483
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x451c4000    # 2500.0f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_35

    .line 484
    const/high16 v18, 0x40200000    # 2.5f

    .line 488
    .local v18, "scroll_vel":F
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2d

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setKeyguardWallpaperAnimating(Z)V

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mScreenHeightInPortrait:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTranslationY()F

    move-result v27

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    div-float v26, v26, v18

    move/from16 v0, v26

    float-to-long v6, v0

    .line 491
    .local v6, "duration":J
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewRestoreAnimator:Landroid/view/ViewPropertyAnimator;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mScreenHeightInPortrait:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v26

    new-instance v27, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v26

    new-instance v27, Lcom/android/systemui_ex/statusbar/phone/PanelView$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBackdropViewUnlockAnimator:Landroid/view/ViewPropertyAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 511
    .end local v6    # "duration":J
    .end local v18    # "scroll_vel":F
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 512
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v8, v0, v1, v2}, Lcom/android/systemui_ex/doze/DozeLog;->traceFling(ZZZZ)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isUsingSingleHandMode()Z

    move-result v26

    if-eqz v26, :cond_36

    if-eqz v12, :cond_36

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    const/16 v27, 0x0

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2e

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelSingleHandModeWhenCollapse()V

    .line 536
    :cond_2e
    :goto_d
    if-eqz v8, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v26, v0

    if-eqz v26, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    move/from16 v26, v0

    if-nez v26, :cond_38

    const/16 v26, 0x1

    :goto_e
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2f

    .line 538
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 541
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_39

    const/4 v11, 0x1

    .line 542
    .local v11, "isMovingDown":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v26

    if-eqz v26, :cond_30

    if-eqz v11, :cond_30

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v26, v0

    if-nez v26, :cond_30

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->enableSingleHandOpsWhenSwipeOnEmptySpace()V

    .line 556
    .end local v4    # "absDeltaX":F
    .end local v5    # "absDeltaY":F
    .end local v8    # "expand":Z
    .end local v11    # "isMovingDown":Z
    .end local v12    # "isYMovedFarEnough":Z
    .end local v20    # "vectorVel":F
    .end local v21    # "vel":F
    .end local v22    # "w":F
    :cond_30
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_31

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 558
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui_ex/statusbar/phone/VelocityTrackerInterface;

    .line 560
    :cond_31
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekTouching:Z

    goto/16 :goto_3

    .line 435
    .restart local v20    # "vectorVel":F
    .restart local v21    # "vel":F
    :cond_32
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 453
    .restart local v8    # "expand":Z
    .restart local v22    # "w":F
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v26

    if-eqz v26, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    if-eqz v26, :cond_28

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    goto/16 :goto_a

    .line 462
    .restart local v4    # "absDeltaX":F
    .restart local v5    # "absDeltaY":F
    :cond_34
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 486
    .restart local v12    # "isYMovedFarEnough":Z
    :cond_35
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/high16 v27, 0x447a0000    # 1000.0f

    div-float v18, v26, v27

    .restart local v18    # "scroll_vel":F
    goto/16 :goto_c

    .line 523
    .end local v18    # "scroll_vel":F
    :cond_36
    if-nez v8, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardMethodSecure()Z

    move-result v26

    if-nez v26, :cond_37

    .line 525
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mApplyDismissing:Z

    .line 526
    new-instance v26, Landroid/os/Handler;

    invoke-direct/range {v26 .. v26}, Landroid/os/Handler;-><init>()V

    new-instance v27, Lcom/android/systemui_ex/statusbar/phone/PanelView$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    const-wide/16 v28, 0x3e8

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    :cond_37
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_d

    .line 536
    :cond_38
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 541
    :cond_39
    const/4 v11, 0x0

    goto/16 :goto_f

    .line 547
    .end local v4    # "absDeltaX":F
    .end local v5    # "absDeltaY":F
    .end local v8    # "expand":Z
    .end local v12    # "isYMovedFarEnough":Z
    .end local v20    # "vectorVel":F
    .end local v21    # "vel":F
    .end local v22    # "w":F
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shrinkHighlightHintView()V

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v9

    .line 549
    .local v9, "expands":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mIsCancelBounceAnimator:Z

    move/from16 v26, v0

    if-eqz v26, :cond_30

    .line 551
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mIsCancelBounceAnimator:Z

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->restoreBounceAnimate()V

    goto/16 :goto_10

    .line 563
    .end local v9    # "expands":Z
    :cond_3b
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->endClosing()V

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 632
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 633
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 634
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    .line 625
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)V

    .line 626
    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 3

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    .line 905
    .local v0, "currentMaxPanelHeight":F
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekTouching:Z

    if-nez v1, :cond_1

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 914
    :cond_1
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui_ex/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    .line 1004
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1
    .param p1, "frac"    # F

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 976
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 887
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 7
    .param p1, "h"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    sub-float v0, v3, v4

    .line 920
    .local v0, "fhWithoutOverExpansion":F
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    .line 922
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    sget-boolean v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightHintViewVisible:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    .line 926
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v5, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setDialIgnoreViewVisibility(ZZ)V

    .line 930
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    .line 931
    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 932
    .local v1, "overExpansionPixels":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_2

    .line 933
    invoke-virtual {p0, v1, v6}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 935
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 943
    .end local v1    # "overExpansionPixels":F
    :cond_3
    :goto_0
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 944
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v2

    if-nez v4, :cond_5

    :goto_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 948
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 949
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 950
    return-void

    .line 937
    :cond_4
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 938
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_3

    .line 939
    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    goto :goto_0

    .line 944
    :cond_5
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    goto :goto_1
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 246
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    .line 1119
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1120
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
