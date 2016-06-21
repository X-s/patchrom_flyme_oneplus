.class public Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui_ex/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
.implements Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;
.implements Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# instance fields
.field private bMove:Z

.field private isCancelHeader:Z

.field private mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private final mBackgroundMovingLeftBg:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundMovingRightBg:Landroid/graphics/drawable/Drawable;

.field private mClockAnimationTarget:I

.field private mClockAnimator:Landroid/animation/ObjectAnimator;

.field private mClockPositionAlgorithm:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mConflictingQsExpansionGesture:Z

.field private mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mDozing:Z

.field private mEmptyDragAmount:F

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimatingIn:Z

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsCTA:Z

.field private mIsExpanding:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mKeyguardLockShadeShowing:Z

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mNotificationContainerParent:Landroid/view/View;

.field private final mNotificationParentWidth:I

.field private mNotificationScrimWaitDistance:I

.field private final mNotificationSidePadding:I

.field private mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFullyExpanded:Z

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mReserveNotificationSpace:Landroid/view/View;

.field private mScreenWidth:I

.field private mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

.field private mShadeEmpty:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field private mStatusBarState:I

.field private mSwipeBackground:Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

.field private mTaskManagerPanel:Landroid/widget/LinearLayout;

.field private mTopPaddingAdjustment:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpand:Z

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private final mUpdateHeader:Ljava/lang/Runnable;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isCancelHeader:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 172
    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 174
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 176
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 188
    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 201
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 1092
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1100
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1107
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 1117
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    .line 1134
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1167
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1187
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1207
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1872
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->bMove:Z

    .line 2284
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScreenWidth:I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackgroundMovingLeftBg:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackgroundMovingRightBg:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationSidePadding:I

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationParentWidth:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.ctaSwitch.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isCancelHeader:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/systemui_ex/qs/QSContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    return p1
.end method

.method private animateHeaderSlidingIn()V
    .locals 2

    .prologue
    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    .line 1163
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1165
    return-void
.end method

.method private animateKeyguardStatusBarIn()V
    .locals 4

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1198
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1205
    return-void
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1185
    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    .prologue
    .line 1691
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1698
    .local v2, "notificationHeight":F
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    if-eqz v4, :cond_0

    .line 1700
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 1704
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1707
    .local v1, "maxQsHeight":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 1708
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1710
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int v5, v1, v4

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int/2addr v4, v6

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 1716
    .local v3, "totalHeight":F
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1717
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 1721
    .local v0, "fullyCollapsedHeight":F
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1723
    .end local v0    # "fullyCollapsedHeight":F
    :cond_2
    float-to-int v4, v3

    return v4

    .line 1710
    .end local v3    # "totalHeight":F
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 1683
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 1684
    .local v0, "emptyBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    .line 1686
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1687
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .prologue
    .line 1452
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 1459
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int v1, v3, v4

    .line 1462
    .local v1, "maxNotifications":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    .line 1463
    .local v2, "maxQs":I
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1466
    .local v0, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1478
    .end local v0    # "max":I
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :goto_1
    return v3

    .restart local v1    # "maxNotifications":I
    .restart local v2    # "maxQs":I
    :cond_1
    move v0, v2

    .line 1463
    goto :goto_0

    .line 1468
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 1469
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    .line 1470
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1474
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    goto :goto_1

    .line 1478
    :cond_4
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_1
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1516
    :cond_0
    return-void
.end method

.method private flingQsWithCurrentVelocity(Z)V
    .locals 1
    .param p1, "isCancelMotionEvent"    # Z

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v0

    .line 715
    .local v0, "vel":F
    return-void
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1506
    const/4 v0, 0x0

    .line 1509
    :goto_0
    return v0

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1509
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 957
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 956
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    .prologue
    .line 1435
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 1436
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1438
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderTranslation()F
    .locals 4

    .prologue
    const v3, 0x40033333    # 2.05f

    const/4 v0, 0x0

    .line 1798
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return v0

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1803
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1806
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1809
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1421
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1422
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1424
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSwipeBackground:Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    return-object v0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    .line 1843
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    goto :goto_0
.end method

.method private getQsExpansionFraction()F
    .locals 4

    .prologue
    .line 733
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    .prologue
    .line 1727
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_0

    .line 1728
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1730
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    .prologue
    .line 1675
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1676
    .local v0, "qsTempMaxExpansion":I
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1677
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    .line 1679
    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 862
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 867
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    .line 871
    :cond_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1501
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1502
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 2235
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isInSettings()Z
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    return v0
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 890
    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 891
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 892
    const/4 v5, 0x0

    .line 893
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 895
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 896
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 898
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 953
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 900
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 901
    iput v8, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 902
    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 906
    iget v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 907
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 908
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 912
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 913
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 915
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 916
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 917
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 918
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 919
    iget v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 920
    iput v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 921
    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    move v2, v9

    .line 915
    goto :goto_1

    .line 926
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    .line 927
    .local v1, "h":F
    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 928
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    .line 929
    iput-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 931
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 936
    .end local v1    # "h":F
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 937
    iput v11, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 938
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 939
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 940
    .local v0, "fraction":F
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_7

    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v0, v10

    if-nez v10, :cond_5

    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_7

    .line 942
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 947
    :goto_3
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 948
    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 949
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_6
    move v9, v2

    .line 942
    goto :goto_2

    .line 945
    :cond_7
    iput v11, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    goto :goto_3

    .line 898
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

.method private positionClockAndNotifications()V
    .locals 11

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v8

    .line 459
    .local v8, "animate":Z
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v9

    .line 461
    .local v9, "bottom":I
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v9

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v10, v0, v1

    .line 464
    .local v10, "stackScrollerPadding":I
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 484
    .end local v9    # "bottom":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v10}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 485
    invoke-direct {p0, v8}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 486
    return-void

    .line 461
    .end local v10    # "stackScrollerPadding":I
    .restart local v9    # "bottom":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v10, v0, v1

    goto :goto_0

    .line 466
    .end local v9    # "bottom":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getMaxKeyguardNotifications()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardStatusView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIFIIIF)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 475
    if-nez v8, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->startClockAnimation(I)V

    .line 480
    :goto_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateClock(FF)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v10, v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 482
    .restart local v10    # "stackScrollerPadding":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto :goto_1

    .line 478
    .end local v10    # "stackScrollerPadding":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setY(F)V

    goto :goto_2
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1483
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v5

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 1488
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1489
    return-void

    :cond_2
    move v0, v1

    .line 1483
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private resetDownStates(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 695
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 697
    :cond_0
    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "goingToFullShade"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1216
    if-eqz p2, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1218
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1235
    :goto_0
    return-void

    .line 1225
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1228
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 8
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1239
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1242
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1243
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1249
    if-eqz p2, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1278
    :cond_2
    :goto_0
    return-void

    .line 1255
    :cond_3
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p1, v2, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1258
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1259
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1260
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    .line 1261
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1267
    :cond_4
    if-ne p1, v2, :cond_5

    .line 1268
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1269
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1270
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    goto :goto_0

    .line 1273
    :cond_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1274
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1275
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    .line 1905
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 1906
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/qs/QSPanel;->setListening(Z)V

    .line 1907
    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 5
    .param p1, "expanded"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "changed":Z
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v3, :cond_7

    .line 1033
    const/4 v0, 0x0

    .line 1034
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v4, :cond_5

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v3, p1, :cond_4

    move v0, v1

    .line 1036
    :goto_0
    if-eqz v0, :cond_3

    .line 1037
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v4, :cond_2

    .line 1039
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1041
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    .line 1058
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    .line 1034
    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 1047
    :cond_7
    if-eqz p1, :cond_8

    move v0, v1

    .line 1048
    :goto_2
    if-eqz v0, :cond_3

    .line 1049
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1051
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 1047
    goto :goto_2
.end method

.method private setQsExpansion(F)V
    .locals 6
    .param p1, "height"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1344
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v0, :cond_7

    .line 1345
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_0

    .line 1346
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p1, v0

    .line 1353
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1355
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_9

    .line 1357
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1369
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v0, :cond_2

    .line 1370
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 1371
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1376
    :cond_2
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1377
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getHeaderExpansionFraction()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setExpansion(F)V

    .line 1378
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1379
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateNotificationScrim(F)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    .line 1382
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 1385
    :cond_3
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_4

    .line 1393
    :cond_4
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v0, :cond_5

    .line 1394
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c00b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1396
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 1403
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v0, :cond_6

    .line 1404
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isCancelHeader:Z

    if-eqz v0, :cond_a

    .line 1418
    :cond_6
    :goto_3
    return-void

    .line 1348
    :cond_7
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float p1, v0

    goto :goto_0

    :cond_8
    move v0, v2

    .line 1353
    goto :goto_1

    .line 1359
    :cond_9
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_2

    .line 1405
    :cond_a
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getY()F

    move-result v0

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_6

    .line 1406
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isCancelHeader:Z

    .line 1407
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method private setQsTranslation(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui_ex/qs/QSContainer;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSContainer;->setY(F)V

    .line 1446
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setY(F)V

    .line 1449
    :cond_1
    return-void
.end method

.method private setupAffordanceHelperNeededChildViews()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNotificationStackScrollLayout()Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setNotificationStackScrollLayout(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardStatusView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setKeyguardStatusView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardWallpaperView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setKeyguardWallpaperView(Landroid/widget/ImageView;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardMediaWallpaperView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setKeyguardMediaWallpaperView(Landroid/widget/ImageView;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getCameraIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setCameraIcon(Landroid/widget/ImageView;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getGauseShadow()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setGauseShadow(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v1, 0x0

    .line 1567
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_0

    .line 1580
    :goto_0
    return v1

    .line 1570
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .line 1571
    .local v0, "header":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 1580
    .local v1, "onHeader":Z
    :cond_1
    goto :goto_0

    .line 1570
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "onHeader":Z
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    goto :goto_1
.end method

.method private startClockAnimation(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 489
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    if-ne v0, p1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 492
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)V
    .locals 8
    .param p1, "icon"    # Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .prologue
    .line 2080
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2089
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1493
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 1495
    return-void
.end method

.method private updateClock(FF)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "scale"    # F

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardStatusView;->setScaleX(F)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardStatusView;->setScaleY(F)V

    .line 524
    return-void
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 2270
    return-void
.end method

.method private updateHeader()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1783
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    .line 1788
    :goto_0
    return-void

    .line 1785
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderKeyguard()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1814
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1818
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1827
    .local v0, "alphaNotifications":F
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 1828
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1829
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v6, v2

    .line 1830
    .local v1, "alphaQsExpansion":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1834
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    sub-float v3, v6, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    .line 1836
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1837
    return-void

    .line 1825
    .end local v0    # "alphaNotifications":F
    .end local v1    # "alphaQsExpansion":F
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .restart local v0    # "alphaNotifications":F
    goto :goto_0
.end method

.method private updateHeaderShade()V
    .locals 2

    .prologue
    .line 1791
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 1794
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1795
    return-void
.end method

.method private updateNotificationScrim(F)V
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 1429
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    add-int v1, v2, v3

    .line 1430
    .local v1, "startDistance":I
    int-to-float v2, v1

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1431
    .local v0, "progress":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1432
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1734
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getItemHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1737
    .local v0, "alpha":F
    const/4 v1, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1738
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1739
    cmpl-float v1, v0, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-eq v1, v7, :cond_1

    .line 1740
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v8}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1745
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 1746
    return-void

    .line 1741
    :cond_1
    cmpl-float v1, v0, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private updateQsState()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x2

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1282
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1285
    .local v0, "expandVisually":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v1, :cond_c

    .line 1286
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v7, :cond_9

    .line 1287
    :cond_0
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_7

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 1288
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_8

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setExpanded(Z)V

    .line 1299
    :goto_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f090025

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1304
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v0, :cond_f

    move v1, v3

    :goto_3
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/qs/QSPanel;->setVisibility(I)V

    .line 1308
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v1, :cond_13

    .line 1309
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v7, :cond_11

    .line 1310
    :cond_4
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_10

    if-nez v0, :cond_10

    :goto_4
    invoke-virtual {v1, v5}, Lcom/android/systemui_ex/qs/QSContainer;->setVisibility(I)V

    .line 1324
    :goto_5
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    .line 1326
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 1328
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v3, :cond_5

    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_6

    .line 1338
    :cond_6
    return-void

    :cond_7
    move v1, v2

    .line 1287
    goto :goto_0

    :cond_8
    move v1, v3

    .line 1288
    goto :goto_1

    .line 1290
    :cond_9
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_a

    move v1, v3

    :goto_6
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 1291
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_b

    move v1, v3

    :goto_7
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setExpanded(Z)V

    goto :goto_2

    :cond_a
    move v1, v2

    .line 1290
    goto :goto_6

    :cond_b
    move v1, v4

    .line 1291
    goto :goto_7

    .line 1294
    :cond_c
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_d

    move v1, v3

    :goto_8
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    .line 1295
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_e

    move v1, v3

    :goto_9
    invoke-virtual {v6, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setExpanded(Z)V

    goto :goto_2

    :cond_d
    move v1, v2

    .line 1294
    goto :goto_8

    :cond_e
    move v1, v4

    .line 1295
    goto :goto_9

    :cond_f
    move v1, v5

    .line 1304
    goto :goto_3

    :cond_10
    move v5, v3

    .line 1310
    goto :goto_4

    .line 1314
    :cond_11
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_12

    if-nez v0, :cond_12

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/qs/QSContainer;->setVisibility(I)V

    goto :goto_5

    :cond_12
    move v1, v3

    goto :goto_a

    .line 1318
    :cond_13
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/qs/QSContainer;->setVisibility(I)V

    goto :goto_5

    :cond_14
    move v1, v3

    goto :goto_b
.end method

.method private updateUnlockIcon()V
    .locals 8

    .prologue
    .line 1759
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 1762
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v1

    .line 1763
    .local v1, "lockIcon":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_4

    .line 1764
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1765
    const v2, 0x3f99999a    # 1.2f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 1773
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 1775
    .end local v0    # "active":Z
    .end local v1    # "lockIcon":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    :cond_2
    return-void

    .line 1761
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1767
    .restart local v0    # "active":Z
    .restart local v1    # "lockIcon":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    :cond_4
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_1

    .line 1768
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1770
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    goto :goto_1
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 557
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 561
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 562
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 528
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 530
    return-void
.end method

.method public canSwipedNotificationGetOpened(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2402
    instance-of v2, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-nez v2, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return v1

    .line 2405
    :cond_1
    const v2, 0x7f0f0165

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2406
    .local v0, "openFlag":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2407
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected cancelSingleHandModeWhenCollapse()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSingleHandDisabled()V

    .line 756
    :cond_0
    return-void
.end method

.method protected cancelSingleHandModeWhenFling()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSingleHandDisabled()V

    .line 767
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->clearSingleHandSideEffectWhenFlingPanelView()V

    .line 769
    :cond_0
    return-void
.end method

.method public closeQs()V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 552
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 553
    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSPanel;->closeDetail()V

    .line 2204
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2306
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2328
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 590
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected enableSingleHandOpsWhenSwipeOnEmptySpace()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isDraggingNotificationCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSingleHandEnabled()V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->enableSingleHandOpsWhenSwipeOnEmptySpace()V

    goto :goto_0
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui_ex/statusbar/GestureRecorder;

    move-result-object v0

    .line 579
    .local v0, "gr":Lcom/android/systemui_ex/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->fling(FZ)V

    .line 583
    return-void

    .line 580
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected flingExpands(FF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    .line 875
    invoke-super {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v0

    .line 878
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 881
    :cond_0
    return v0
.end method

.method public flingTopOverscroll(FZ)V
    .locals 1
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    .line 992
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1005
    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getCannedFlingDurationFactor()F
    .locals 1

    .prologue
    .line 2157
    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method public getCenterIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getDismissViewHeight()I

    move-result v0

    return v0
.end method

.method public getLeftIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 2

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getPhoneView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    .prologue
    .line 2124
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraPreview()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getPhonePreview()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMaxPanelHeight()I
    .locals 5

    .prologue
    .line 1610
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 1611
    .local v1, "min":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1613
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    const v4, 0x40033333    # 2.05f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 1615
    .local v2, "minHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1619
    .end local v2    # "minHeight":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 1621
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1625
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1626
    return v0

    .line 1623
    .end local v0    # "maxHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v0

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    .prologue
    .line 2093
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2146
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    const v1, 0x40033333    # 2.05f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRightIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 2

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getPhoneView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public getSwipeDeleteNotificationIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 2396
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeOpenNotificationIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 2391
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 1

    .prologue
    .line 1911
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->instantExpand()V

    .line 1912
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1913
    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2256
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 686
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 687
    .local v1, "yTransformed":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 688
    .local v0, "stackScrollerX":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v2

    if-eqz v2, :cond_0

    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 2216
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 1

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardLockShadeShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x0

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    .line 1604
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isUsingSingleHandMode()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isSingleHandNotificationCenterActivated()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->loadDimens()V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    .line 306
    new-instance v0, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 315
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 320
    return-void
.end method

.method public notifyVisibleChildrenChanged()V
    .locals 2

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2190
    :goto_0
    return-void

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2041
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2045
    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 3
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    const/4 v1, 0x1

    .line 2026
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, p1

    .line 2027
    .local v0, "start":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2028
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2029
    if-eqz v0, :cond_2

    .line 2030
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    .line 2034
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startLaunchTransitionTimeout()V

    .line 2035
    return-void

    .line 2026
    .end local v0    # "start":Z
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2032
    .restart local v0    # "start":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;->startSecureCameraLaunch()V

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;->create()V

    .line 419
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    if-ne p1, v0, :cond_0

    .line 2023
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1999
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2000
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 2001
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;->destroy()V

    .line 424
    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2301
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    .line 2302
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1890
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 1891
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 1892
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 1893
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    .line 1894
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1895
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1899
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 1900
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1901
    return-void

    .line 1897
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0
.end method

.method protected onExpandingStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1849
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 1850
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1851
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->bMove:Z

    if-eqz v0, :cond_1

    .line 1852
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->bMove:Z

    .line 1870
    :goto_0
    return-void

    .line 1858
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->bMove:Z

    goto :goto_0

    .line 1861
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 1862
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 1864
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onFinishInflate()V

    .line 238
    const v0, 0x7f0f014b

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .line 239
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    .line 241
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 242
    const v0, 0x7f0f0125

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/qs/QSContainer;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    .line 243
    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    .line 244
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    .line 246
    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    .line 247
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    .line 249
    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    .line 250
    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/view/View;

    .line 251
    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .line 253
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setmNotificationSwipeHelper(Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 267
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .line 268
    const v0, 0x7f0f00fa

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    .line 269
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScreenWidth:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    .line 270
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    .line 273
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    .line 275
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 288
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSwipeBackground:Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    .line 291
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 292
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 1976
    if-nez p1, :cond_0

    .line 1980
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1981
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 6
    .param p1, "expandedHeight"    # F

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 1643
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_0

    .line 1664
    :goto_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 1665
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 1666
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    .line 1667
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 1668
    return-void

    .line 1646
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 1649
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    .line 1650
    .local v1, "panelHeightQsExpanded":F
    sub-float v3, p1, v0

    sub-float v4, v1, v0

    div-float v2, v3, v4

    .line 1655
    .local v2, "t":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    cmpg-float v3, p1, v0

    if-lez v3, :cond_1

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_2

    .line 1658
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1661
    :cond_2
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 598
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mApplyDismissing:Z

    if-eqz v7, :cond_0

    .line 681
    :goto_0
    return v6

    .line 602
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 603
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 604
    .local v2, "pointerIndex":I
    if-gez v2, :cond_1

    .line 605
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 608
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 609
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 611
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 681
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 613
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 614
    iput v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 615
    iput v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 616
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 617
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 618
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 621
    :cond_3
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    .line 625
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 626
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 627
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 628
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto :goto_1

    .line 632
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 633
    .local v3, "upPointer":I
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v7, v3, :cond_2

    .line 635
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v3, :cond_4

    .line 636
    .local v1, "newIndex":I
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 637
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 638
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_1

    .end local v1    # "newIndex":I
    :cond_4
    move v1, v6

    .line 635
    goto :goto_2

    .line 643
    .end local v3    # "upPointer":I
    :pswitch_3
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v7

    .line 644
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 645
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v7, :cond_5

    .line 650
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v7, v0

    invoke-direct {p0, v7}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 651
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 652
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    .line 655
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v7, v8, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 660
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 661
    iput v5, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 662
    iput v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 663
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 664
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 665
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 672
    .end local v0    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 673
    iget-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v7, :cond_6

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(Z)V

    .line 676
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 678
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_1

    :cond_7
    move v6, v1

    .line 674
    goto :goto_3

    .line 611
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

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 350
    invoke-super/range {p0 .. p5}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setupAffordanceHelperNeededChildViews()V

    .line 361
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 362
    .local v0, "oldMaxHeight":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 365
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v1, :cond_4

    .line 366
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 377
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 387
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v1, :cond_5

    .line 388
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_1

    .line 389
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 391
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 402
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 405
    return-void

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSContainer;->getDesiredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsContainer:Lcom/android/systemui_ex/qs/QSContainer;

    invoke-virtual {v2}, Lcom/android/systemui_ex/qs/QSContainer;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    .line 394
    :cond_5
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 396
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateHeader()V

    goto :goto_2
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    .line 988
    return-void
.end method

.method public onOverscrolled(FFI)V
    .locals 1
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F
    .param p3, "amount"    # I

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 968
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 969
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 972
    :cond_0
    return-void
.end method

.method public onReset(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 1985
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2005
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 2007
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 2009
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 2296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mApplyDismissing:Z

    .line 2297
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 2293
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 1995
    return-void
.end method

.method public onSwipingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2098
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mSecureCameraLaunchManager:Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SecureCameraLaunchManager;->onSwipingStarted()V

    .line 2099
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2100
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mApplyDismissing:Z

    if-eqz v0, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v3

    .line 777
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    .line 780
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackdropView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackdropView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 787
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not allow to move AffornceHelper , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackdropView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_4

    .line 803
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 804
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 808
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 814
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsCTA:Z

    if-eqz v0, :cond_5

    .line 815
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5

    .line 816
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 821
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v0, :cond_6

    .line 822
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 823
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    .line 827
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 829
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 831
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_9

    .line 833
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 835
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 838
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 843
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 845
    :cond_a
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 790
    :cond_b
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1
.end method

.method protected onTrackingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1935
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 1936
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 1937
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1941
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 1947
    :cond_2
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .prologue
    const-wide/16 v4, 0x64

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1951
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1952
    if-eqz p1, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1956
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 1958
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_2

    .line 1959
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 1962
    :cond_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 1964
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v1

    .line 1965
    .local v1, "lockIcon":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1966
    const/high16 v2, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 1968
    .end local v1    # "lockIcon":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    :cond_4
    return-void
.end method

.method public openQs()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 571
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 572
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 574
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 540
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 542
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 546
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 548
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1062
    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_4

    :cond_0
    move v0, v2

    .line 1064
    .local v0, "keyguardShowing":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 1065
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    .line 1066
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 1069
    :cond_1
    if-eq p1, v2, :cond_2

    .line 1070
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mApplyDismissing:Z

    .line 1073
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1074
    invoke-direct {p0, p1, p3}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 1075
    if-eqz p3, :cond_5

    .line 1076
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1081
    :goto_1
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1082
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1084
    if-ne p1, v5, :cond_7

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardLockShadeShowing:Z

    .line 1086
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1087
    if-eqz p3, :cond_3

    .line 1088
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateHeaderSlidingIn()V

    .line 1090
    :cond_3
    return-void

    .end local v0    # "keyguardShowing":Z
    :cond_4
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1078
    .restart local v0    # "keyguardShowing":Z
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1079
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_6

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    move v2, v1

    .line 1084
    goto :goto_2
.end method

.method public setCameraLauchingInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mAfforanceHelper:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setCameraLauchingInProgress(Z)V

    .line 2424
    :cond_0
    return-void
.end method

.method public setDismissNotificationIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2380
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    return-void

    .line 2380
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDozing(ZZ)V
    .locals 3
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2239
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_1

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 2241
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_2

    .line 2242
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    goto :goto_0

    .line 2245
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2247
    if-eqz p2, :cond_0

    .line 2248
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn()V

    .line 2249
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimation()V

    goto :goto_0
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui_ex/statusbar/policy/KeyguardUserSwitcher;

    .line 2282
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2220
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2221
    return-void
.end method

.method public setNotificationBackgroundVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2385
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setVisibility(I)V

    .line 2386
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->invalidate()V

    .line 2387
    return-void

    .line 2385
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setOpenNotificationIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2375
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2376
    return-void

    .line 2375
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1917
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-eqz v0, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1922
    if-eqz p2, :cond_2

    .line 1923
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1929
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V

    goto :goto_0

    .line 1926
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_1
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2
    .param p1, "qsScrimEnabled"    # Z

    .prologue
    .line 2273
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 2274
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 2275
    if-eqz v0, :cond_0

    .line 2276
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2278
    :cond_0
    return-void

    .line 2273
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShadeEmpty(Z)V
    .locals 0
    .param p1, "shadeEmpty"    # Z

    .prologue
    .line 2260
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mShadeEmpty:Z

    .line 2261
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2262
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 229
    return-void
.end method

.method public setSwipeIndicationWidthAndHeight(FI)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # I

    .prologue
    const-wide v4, 0x3fee666666666666L    # 0.95

    .line 2346
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardLockShadeShowing:Z

    if-nez v1, :cond_0

    .line 2347
    float-to-double v2, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    .line 2348
    int-to-double v2, p2

    mul-double/2addr v2, v4

    double-to-int p2, v2

    .line 2350
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setActualHeight(I)V

    .line 2351
    const-string v1, "xxxxx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationParentWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationSidePadding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p1

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2353
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2354
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2355
    return-void
.end method

.method public setSwipeIndicationY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 2332
    const/high16 v0, 0x40a00000    # 5.0f

    .line 2333
    .local v0, "KEYGUARD_TOP_Y_PADDING":F
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mKeyguardLockShadeShowing:Z

    if-nez v1, :cond_0

    .line 2334
    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr p1, v1

    .line 2336
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setY(F)V

    .line 2337
    return-void
.end method

.method public setSwipeIndicationZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 2342
    return-void
.end method

.method public setTaskManagerVisibility(Z)V
    .locals 5
    .param p1, "mTaskManagerShowing"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1584
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090025

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    .line 1587
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1589
    .local v0, "expandVisually":Z
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui_ex/qs/QSPanel;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/qs/QSPanel;->setVisibility(I)V

    .line 1591
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mTaskManagerPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1594
    .end local v0    # "expandVisually":Z
    :cond_0
    return-void

    .restart local v0    # "expandVisually":Z
    :cond_1
    move v1, v3

    .line 1589
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1591
    goto :goto_1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2208
    const/4 v0, 0x1

    return v0
.end method

.method public showDismissNotificationBackground()V
    .locals 2

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackgroundMovingLeftBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2371
    return-void
.end method

.method public showOpenNotificationBackground()V
    .locals 2

    .prologue
    .line 2365
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getNotificationSwipeBackground()Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mBackgroundMovingRightBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2366
    return-void
.end method

.method public simulateSignalClick()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->performClick()Z

    .line 233
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 2072
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    .line 2073
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getCenterIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->startHighlightIconAnimation(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)V

    .line 2074
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 324
    .local v2, "panelWidth":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 325
    .local v1, "panelGravity":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 326
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    .line 327
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 328
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 335
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 336
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_2

    .line 342
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 343
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    :cond_2
    return-void
.end method
