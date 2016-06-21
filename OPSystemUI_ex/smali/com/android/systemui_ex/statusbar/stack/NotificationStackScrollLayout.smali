.class public Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui_ex/ExpandHelper$Callback;
.implements Lcom/android/systemui_ex/SwipeHelper$Callback;
.implements Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;
.implements Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui_ex/statusbar/policy/ScrollAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;
    }
.end annotation


# instance fields
.field public aBoostCpuBoost:I

.field public aBoostSchedBoost:I

.field public aBoostTimeOut:I

.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsEnabled:Z

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownHeight:I

.field private mChangePositionInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDelegateToScrollView:Z

.field private mDimmedNeedsAnimation:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mHideSensitiveNeedsAnimation:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterceptDelegateEnabled:Z

.field private mIntrinsicPadding:I

.field public mIsAnimationBoostEnabled:Z

.field private mIsBeingDragged:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mLastMotionY:I

.field private mLastSetStackHeight:F

.field private mListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNotificationTopPadding:I

.field private mOnEmptySpaceClickListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field public mPerf:Lorg/codeaurora/Performance;

.field private mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mRequestViewResizeAnimationOnLayout:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollingEnabled:Z

.field private mSidePaddings:I

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

.field private mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

.field private final mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

.field private mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalSwipeHelper:Lcom/android/systemui_ex/VerticalSwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 128
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    .line 129
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-direct {v2}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 135
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 139
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPerf:Lorg/codeaurora/Performance;

    .line 217
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsAnimationBoostEnabled:Z

    .line 218
    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostTimeOut:I

    .line 219
    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostCpuBoost:I

    .line 220
    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostSchedBoost:I

    .line 222
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 233
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 255
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 256
    .local v0, "maxHeight":I
    new-instance v2, Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/android/systemui_ex/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    .line 258
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/ExpandHelper;->setScrollAdapter(Lcom/android/systemui_ex/statusbar/policy/ScrollAdapter;)V

    .line 261
    new-instance v2, Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v4, p0, v3}, Lcom/android/systemui_ex/SwipeHelper;-><init>(ILcom/android/systemui_ex/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    .line 262
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/SwipeHelper;->setLongPressListener(Lcom/android/systemui_ex/SwipeHelper$LongPressListener;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsAnimationBoostEnabled:Z

    .line 273
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsAnimationBoostEnabled:Z

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostSchedBoost:I

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostTimeOut:I

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostCpuBoost:I

    .line 282
    :cond_0
    new-instance v2, Lcom/android/systemui_ex/VerticalSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui_ex/VerticalSwipeHelper;-><init>(Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVerticalSwipeHelper:Lcom/android/systemui_ex/VerticalSwipeHelper;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/EmptyShadeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/DismissView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    return-void
.end method

.method private applyCurrentState()V
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->apply()V

    .line 2246
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2249
    :cond_0
    return-void
.end method

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .prologue
    .line 1513
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 471
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 472
    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 474
    :cond_0
    return-void
.end method

.method private customScrollTo(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1249
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1250
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1251
    return-void
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 835
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 836
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 837
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 838
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 839
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1541
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1543
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 1545
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1546
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1548
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1549
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1551
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 5
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, -0x1

    .line 2319
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 2329
    :cond_0
    :goto_0
    return v1

    .line 2322
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2323
    const/4 v1, -0x2

    goto :goto_0

    .line 2325
    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;

    move-result-object v0

    .line 2326
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2327
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1426
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1427
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 1429
    .local v12, "scrollRange":I
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 1430
    .local v13, "topAmount":F
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 1431
    .local v11, "bottomAmount":F
    if-gez p1, :cond_1

    cmpl-float v0, v13, v2

    if-lez v0, :cond_1

    .line 1432
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1433
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1434
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1435
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1447
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v10, 0x3fffffff    # 1.9999999f

    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1450
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1452
    .end local v11    # "bottomAmount":F
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    :cond_0
    return-void

    .line 1437
    .restart local v11    # "bottomAmount":F
    .restart local v12    # "scrollRange":I
    .restart local v13    # "topAmount":F
    :cond_1
    if-lez p1, :cond_2

    cmpl-float v0, v11, v2

    if-lez v0, :cond_2

    .line 1438
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1439
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1440
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 1445
    :cond_2
    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    .prologue
    .line 1905
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 1910
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .prologue
    .line 1913
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1917
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 1918
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1882
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1883
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1884
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v4, 0x168

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1888
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1892
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1893
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1894
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .prologue
    .line 1817
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 1818
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 1819
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 1820
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 1821
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 1822
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 1823
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 1824
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 1825
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 1826
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 1827
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 1828
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 1829
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1831
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 6

    .prologue
    .line 1858
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1859
    .local v1, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1860
    .local v2, "childWasSwipedOut":Z
    if-eqz v2, :cond_0

    const/4 v0, 0x2

    .line 1863
    .local v0, "animationType":I
    :goto_1
    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1866
    .local v3, "event":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 1867
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1860
    .end local v0    # "animationType":I
    .end local v3    # "event":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1869
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childWasSwipedOut":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1870
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1871
    return-void
.end method

.method private generateDarkEvent()V
    .locals 3

    .prologue
    .line 1937
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    .line 1938
    new-instance v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1939
    .local v0, "ev":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 1940
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    .end local v0    # "ev":Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 1943
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 1926
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .prologue
    .line 1850
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1851
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1854
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1855
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .prologue
    .line 1946
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 1951
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .prologue
    .line 1929
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 1934
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1875
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1878
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1879
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1659
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_1

    .line 1660
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1671
    :goto_0
    return v0

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1667
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 1668
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1671
    goto :goto_0
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .prologue
    .line 1842
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1843
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1846
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1847
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    .prologue
    .line 1897
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 1902
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .prologue
    .line 1834
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 1839
    return-void
.end method

.method private getFirstChildBelowTranlsationY(F)Landroid/view/View;
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1341
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1342
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1343
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 1347
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1341
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1326
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1327
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1328
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1332
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1326
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1332
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1695
    instance-of v1, p1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1696
    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 1697
    .local v0, "expandableView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    .line 1699
    .end local v0    # "expandableView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getLayoutHeight()I
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxExpandHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1386
    instance-of v1, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1387
    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 1388
    .local v0, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 1390
    .end local v0    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2335
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2336
    .local v2, "notGoneIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2337
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2338
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 2345
    .end local v2    # "notGoneIndex":I
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    return v2

    .line 2341
    .restart local v2    # "notGoneIndex":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 2342
    add-int/lit8 v2, v2, 0x1

    .line 2336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2345
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 5
    .param p1, "requestedChild"    # Landroid/view/View;

    .prologue
    .line 1703
    const/4 v2, 0x0

    .line 1704
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1705
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1706
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 1716
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "position":I
    :goto_1
    return v2

    .line 1709
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "position":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 1710
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1711
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1712
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v3

    .line 1704
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1716
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const v0, 0x3eb33333    # 0.35f

    .line 1517
    if-nez p1, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return v0

    .line 1520
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_2

    .line 1521
    const v0, 0x3e19999a    # 0.15f

    goto :goto_0

    .line 1522
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-eqz v1, :cond_3

    .line 1523
    const v0, 0x3e570a3d    # 0.21f

    goto :goto_0

    .line 1524
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_0

    .line 1525
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 8

    .prologue
    .line 1304
    const/4 v4, 0x0

    .line 1305
    .local v4, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 1306
    .local v1, "firstChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 1308
    .local v0, "contentHeight":I
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getMaxExpandHeight(Landroid/view/View;)I

    move-result v2

    .line 1309
    .local v2, "firstChildMaxExpandHeight":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1311
    if-lez v4, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v3

    .line 1315
    .local v3, "lastChild":Landroid/view/View;
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1318
    .end local v0    # "contentHeight":I
    .end local v2    # "firstChildMaxExpandHeight":I
    .end local v3    # "lastChild":Landroid/view/View;
    :cond_0
    return v4
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1604
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1606
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 1610
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    goto :goto_0

    .line 1602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasVisibleNotifications()Z
    .locals 2

    .prologue
    .line 2797
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2798
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2799
    const/4 v1, 0x1

    .line 2802
    :goto_1
    return v1

    .line 2797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2802
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hideSwipeNotificationBackgroundWhileUpdatingSingleHandMode()V
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SwipeHelper;->hideCurrentHorizontallySwipedNotificationBackground()V

    .line 2822
    :cond_0
    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1621
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 1622
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1623
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 1624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 1627
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1621
    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1084
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1071
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1073
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 306
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 308
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 309
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 310
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    .line 320
    new-instance v1, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    .line 321
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    .line 326
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    .line 333
    return-void
.end method

.method private isBelowLastNotification(FF)Z
    .locals 8
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2493
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 2494
    .local v2, "lastChildNotGone":Lcom/android/systemui_ex/statusbar/ExpandableView;
    if-nez v2, :cond_2

    .line 2495
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 2495
    goto :goto_0

    .line 2497
    :cond_2
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    if-eq v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    if-eq v2, v5, :cond_3

    .line 2498
    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 2499
    :cond_3
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    if-ne v2, v5, :cond_4

    .line 2500
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->getY()F

    move-result v5

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 2502
    :cond_4
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/DismissView;->getY()F

    move-result v1

    .line 2503
    .local v1, "dismissY":F
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/DismissView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_7

    move v0, v3

    .line 2504
    .local v0, "belowDismissView":Z
    :goto_1
    if-nez v0, :cond_5

    cmpl-float v5, p2, v1

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/DismissView;->getX()F

    move-result v6

    sub-float v6, p1, v6

    sub-float v7, p2, v1

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui_ex/statusbar/DismissView;->isOnEmptySpace(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v4, v3

    :cond_6
    move v3, v4

    goto :goto_0

    .end local v0    # "belowDismissView":Z
    :cond_7
    move v0, v4

    .line 2503
    goto :goto_1
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method private isRubberbanded(Z)Z
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 1536
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private needsHeightAdaption()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 348
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1217
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1218
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_2

    .line 1219
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1225
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1217
    goto :goto_0

    .line 1222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    goto :goto_1
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1954
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1955
    const/4 v1, 0x0

    .line 2059
    :goto_0
    return v1

    .line 1968
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1969
    .local v8, "action":I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1970
    const/4 v1, 0x1

    goto :goto_0

    .line 1973
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2059
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 1984
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1985
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 1990
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1991
    .local v11, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_3

    .line 1992
    const-string v1, "NotificationStackScrollLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1997
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v14, v1

    .line 1998
    .local v14, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v12, v1

    .line 1999
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 2000
    .local v15, "yDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 2001
    .local v13, "xDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v15, v1, :cond_2

    if-le v15, v13, :cond_2

    .line 2002
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2003
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 2004
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 2005
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 2006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 2012
    .end local v9    # "activePointerId":I
    .end local v11    # "pointerIndex":I
    .end local v12    # "x":I
    .end local v13    # "xDiff":I
    .end local v14    # "y":I
    .end local v15    # "yDiff":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    .line 2013
    .restart local v14    # "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2014
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2015
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 2023
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 2024
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 2025
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 2026
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 2028
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2035
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v10, 0x1

    .line 2036
    .local v10, "isBeingDragged":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_1

    .line 2035
    .end local v10    # "isBeingDragged":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 2043
    .end local v14    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2044
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 2045
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 2051
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 981
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 984
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 985
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 986
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 843
    const/4 v2, 0x0

    .line 977
    :goto_0
    return v2

    .line 845
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 848
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 850
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 977
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 852
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 853
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 855
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v23, 0x1

    .line 856
    .local v23, "isBeingDragged":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 867
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 869
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_1

    .line 855
    .end local v23    # "isBeingDragged":Z
    :cond_5
    const/16 v23, 0x0

    goto :goto_2

    .line 873
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 874
    .local v17, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 875
    const-string v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 879
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 880
    .local v28, "y":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 881
    .local v26, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v20, v2, v28

    .line 882
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v26, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v27

    .line 883
    .local v27, "xDiff":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v29

    .line 884
    .local v29, "yDiff":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v29

    if-le v0, v2, :cond_7

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 885
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 886
    if-lez v20, :cond_9

    .line 887
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int v20, v20, v2

    .line 892
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 894
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 895
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    .line 896
    .local v8, "range":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_8

    .line 897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 901
    :cond_8
    if-gez v20, :cond_a

    .line 902
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v24

    .line 909
    .local v24, "scrollAmount":F
    :goto_4
    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_1

    .line 912
    const/4 v3, 0x0

    move/from16 v0, v24

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    goto/16 :goto_1

    .line 889
    .end local v8    # "range":I
    .end local v24    # "scrollAmount":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int v20, v20, v2

    goto :goto_3

    .line 904
    .restart local v8    # "range":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v24

    .restart local v24    # "scrollAmount":F
    goto :goto_4

    .line 918
    .end local v8    # "range":I
    .end local v17    # "activePointerIndex":I
    .end local v20    # "deltaY":I
    .end local v24    # "scrollAmount":F
    .end local v26    # "x":I
    .end local v27    # "xDiff":I
    .end local v28    # "y":I
    .end local v29    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 920
    .local v25, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 921
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 923
    .local v22, "initialVelocity":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 924
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .line 943
    :cond_b
    :goto_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    .line 926
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 927
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_f

    .line 928
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v19

    .line 929
    .local v19, "currentOverScrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-eqz v2, :cond_d

    if-lez v22, :cond_e

    .line 930
    :cond_d
    move/from16 v0, v22

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_5

    .line 932
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_5

    .line 935
    .end local v19    # "currentOverScrollTop":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto :goto_5

    .line 949
    .end local v22    # "initialVelocity":I
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 950
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 953
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    .line 958
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 959
    .local v21, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 960
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 961
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_1

    .line 965
    .end local v21    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 967
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 968
    .local v18, "activePointerIndexUp":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_11

    .line 969
    const-string v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 973
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_1

    .line 850
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1055
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1056
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1060
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1061
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1062
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1063
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1064
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1067
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1060
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1029
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1030
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1031
    .local v0, "currentBottomAmount":F
    int-to-float v6, p1

    add-float v2, v0, v6

    .line 1032
    .local v2, "newBottomAmount":F
    cmpl-float v6, v0, v5

    if-lez v6, :cond_0

    .line 1033
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1038
    :cond_0
    cmpg-float v6, v2, v5

    if-gez v6, :cond_2

    move v4, v2

    .line 1039
    .local v4, "scrollAmount":F
    :goto_0
    iget v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v6, v6

    add-float v3, v6, v4

    .line 1040
    .local v3, "newScrollY":F
    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    .line 1041
    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    .line 1043
    .local v1, "currentTopPixels":F
    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1046
    iput v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1047
    const/4 v4, 0x0

    .line 1049
    .end local v1    # "currentTopPixels":F
    :cond_1
    return v4

    .end local v3    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_2
    move v4, v5

    .line 1038
    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 996
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 997
    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 998
    .local v1, "currentTopAmount":F
    int-to-float v5, p1

    sub-float v3, v1, v5

    .line 999
    .local v3, "newTopAmount":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    .line 1000
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1005
    :cond_0
    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    neg-float v4, v3

    .line 1006
    .local v4, "scrollAmount":F
    :cond_1
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v2, v5, v4

    .line 1007
    .local v2, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    .line 1008
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    .line 1009
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    .line 1011
    .local v0, "currentBottomPixels":F
    add-float v5, v0, v2

    int-to-float v6, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1015
    .end local v0    # "currentBottomPixels":F
    :cond_2
    iput p2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1016
    const/4 v4, 0x0

    .line 1018
    :cond_3
    return v4
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1080
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 382
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 383
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 386
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 463
    :cond_0
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .prologue
    .line 2077
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 2078
    if-eqz p1, :cond_0

    .line 2079
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2080
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2082
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 2138
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 2139
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 2140
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 2141
    if-eqz v0, :cond_0

    .line 2142
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 2144
    :cond_0
    return-void

    .line 2138
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 427
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 428
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1204
    if-eqz p3, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    .line 1214
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1208
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1209
    if-eqz p2, :cond_1

    .line 1210
    invoke-direct {p0, p1, p4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1212
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 1241
    if-eqz p2, :cond_0

    .line 1242
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 756
    if-eqz p1, :cond_0

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 759
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 481
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 482
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 483
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 484
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 485
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 486
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 487
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 492
    :cond_1
    return-void
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1459
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1460
    .local v0, "topOverScroll":F
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private springBack()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1281
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    .line 1282
    .local v4, "scrollRange":I
    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v7, :cond_2

    move v3, v5

    .line 1283
    .local v3, "overScrolledTop":Z
    :goto_0
    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v7, v4, :cond_3

    move v2, v5

    .line 1284
    .local v2, "overScrolledBottom":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1287
    :cond_0
    if-eqz v3, :cond_4

    .line 1288
    const/4 v1, 0x1

    .line 1289
    .local v1, "onTop":Z
    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v7, v7

    int-to-float v0, v7

    .line 1290
    .local v0, "newAmount":F
    iput v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1291
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1297
    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1298
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1299
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6, v5}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1301
    .end local v0    # "newAmount":F
    .end local v1    # "onTop":Z
    :cond_1
    return-void

    .end local v2    # "overScrolledBottom":Z
    .end local v3    # "overScrolledTop":Z
    :cond_2
    move v3, v6

    .line 1282
    goto :goto_0

    .restart local v3    # "overScrolledTop":Z
    :cond_3
    move v2, v6

    .line 1283
    goto :goto_1

    .line 1293
    .restart local v2    # "overScrolledBottom":Z
    :cond_4
    const/4 v1, 0x0

    .line 1294
    .restart local v1    # "onTop":Z
    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v7, v4

    int-to-float v0, v7

    .line 1295
    .restart local v0    # "newAmount":F
    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1803
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    iget-wide v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;J)V

    .line 1809
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1813
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 1814
    return-void

    .line 1811
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sourceView"    # Landroid/view/View;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 1554
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1555
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1556
    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setLayoutHeight(I)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setTopPadding(I)V

    .line 433
    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1750
    return-void

    .line 1749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1754
    instance-of v1, p2, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1755
    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 1756
    .local v0, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 1758
    .end local v0    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui_ex/statusbar/stack/AmbientState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 450
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    goto :goto_0
.end method

.method private updateContentHeight()V
    .locals 7

    .prologue
    .line 1398
    const/4 v2, 0x0

    .line 1399
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1400
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1401
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 1402
    if-eqz v2, :cond_0

    .line 1404
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v5

    .line 1406
    :cond_0
    instance-of v5, v0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    move-object v4, v0

    .line 1407
    check-cast v4, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 1408
    .local v4, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 1399
    .end local v4    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1409
    :cond_2
    instance-of v5, v0, Lcom/android/systemui_ex/statusbar/ExpandableView;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 1410
    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 1411
    .local v1, "expandableView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 1415
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "expandableView":Lcom/android/systemui_ex/statusbar/ExpandableView;
    :cond_3
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 1416
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    .prologue
    .line 1740
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1741
    .local v3, "running":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1742
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1743
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1744
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v3, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1742
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1740
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "running":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1746
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "running":Z
    :cond_1
    return-void
.end method

.method private updatePadding(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->shouldScaleDimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 339
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 340
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 342
    return-void

    .line 336
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 2165
    instance-of v3, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 2166
    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .line 2167
    .local v1, "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2169
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 2170
    .local v0, "endPosition":F
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int v2, v3, v4

    .line 2172
    .local v2, "stackEnd":I
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 2173
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    int-to-float v4, v2

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2174
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2178
    .end local v0    # "endPosition":F
    .end local v1    # "row":Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;
    .end local v2    # "stackEnd":I
    :cond_0
    return-void
.end method

.method private updateScrollStateForRemovedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "removedChild"    # Landroid/view/View;

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 1681
    .local v2, "startingPosition":I
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int v0, v3, v4

    .line 1682
    .local v0, "childHeight":I
    add-int v1, v2, v0

    .line 1683
    .local v1, "endPosition":I
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v3, :cond_1

    .line 1686
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v2, v3, :cond_0

    .line 1690
    iput v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_0
.end method

.method private updateSpeedBump(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 2257
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v1, 0x1

    .line 2258
    .local v1, "notGoneBefore":Z
    :goto_0
    if-eq p1, v1, :cond_0

    .line 2259
    if-eqz p1, :cond_2

    .line 2260
    .local v0, "newVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->setVisibility(I)V

    .line 2261
    if-eqz p1, :cond_3

    .line 2263
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/SpeedBumpView;->setInvisible()V

    .line 2269
    .end local v0    # "newVisibility":I
    :cond_0
    :goto_2
    return-void

    .end local v1    # "notGoneBefore":Z
    :cond_1
    move v1, v0

    .line 2257
    goto :goto_0

    .restart local v1    # "notGoneBefore":Z
    :cond_2
    move v0, v2

    .line 2259
    goto :goto_1

    .line 2266
    .restart local v0    # "newVisibility":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    goto :goto_2
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 740
    const v1, 0x7f0f0164

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 741
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 696
    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/ExpandHelper;->cancel()V

    .line 2283
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1789
    .local v0, "currentIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1790
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1791
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 1792
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 1793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1794
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1795
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1799
    :cond_0
    return-void
.end method

.method public clearSingleHandSideEffectWhenFlingPanelView()V
    .locals 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setUsingSingleHandMode(Z)V

    .line 2780
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 2781
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1092
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1094
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1095
    .local v3, "oldX":I
    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1096
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 1097
    .local v11, "x":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 1099
    .local v12, "y":I
    if-ne v3, v11, :cond_0

    if-eq v4, v12, :cond_4

    .line 1100
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v6

    .line 1101
    .local v6, "range":I
    if-gez v12, :cond_1

    if-gez v4, :cond_2

    :cond_1
    if-le v12, v6, :cond_3

    if-gt v4, v6, :cond_3

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    .line 1103
    .local v10, "currVelocity":F
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-ltz v0, :cond_3

    .line 1104
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1108
    .end local v10    # "currVelocity":F
    :cond_3
    sub-int v1, v11, v3

    sub-int v2, v12, v4

    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v8, v0

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 1110
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1114
    .end local v6    # "range":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1116
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_5
    return-void
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .prologue
    .line 772
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui_ex/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 774
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .prologue
    .line 716
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 717
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 718
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 721
    :cond_0
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    if-eqz p2, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1779
    :cond_1
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    .prologue
    .line 2458
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 2459
    .local v3, "count":I
    const/4 v4, 0x0

    .line 2460
    .local v4, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2461
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 2462
    .local v1, "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 2460
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2465
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 2466
    .local v0, "bottom":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 2467
    move v4, v0

    goto :goto_1

    .line 2470
    .end local v0    # "bottom":F
    .end local v1    # "child":Lcom/android/systemui_ex/statusbar/ExpandableView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getBottomStackPeekSize()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;
    .locals 10
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 672
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 673
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 674
    .local v6, "slidingChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    instance-of v8, v6, Lcom/android/systemui_ex/statusbar/StackScrollerDecorView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    if-ne v6, v8, :cond_1

    .line 672
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 680
    .local v2, "childTop":F
    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    int-to-float v8, v8

    add-float v7, v2, v8

    .line 681
    .local v7, "top":F
    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v0, v2, v8

    .line 685
    .local v0, "bottom":F
    const/4 v4, 0x0

    .line 686
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    .line 688
    .local v5, "right":I
    cmpl-float v8, p2, v7

    if-ltz v8, :cond_0

    cmpg-float v8, p2, v0

    if-gtz v8, :cond_0

    int-to-float v8, v4

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_0

    int-to-float v8, v5

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_0

    .line 692
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "slidingChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v7    # "top":F
    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 736
    return-object p1
.end method

.method public getChildLocation(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;

    move-result-object v0

    .line 416
    .local v0, "childViewState":Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;
    if-nez v0, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 422
    :goto_0
    return v1

    .line 419
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-eqz v1, :cond_1

    .line 420
    const/16 v1, 0x40

    goto :goto_0

    .line 422
    :cond_1
    iget v1, v0, Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;->location:I

    goto :goto_0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui_ex/statusbar/ExpandableView;
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 636
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 637
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    .line 639
    .local v6, "localTouchY":F
    const/4 v3, 0x0

    .line 640
    .local v3, "closestChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 643
    .local v7, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 644
    .local v4, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 645
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 646
    .local v8, "slidingChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    instance-of v10, v8, Lcom/android/systemui_ex/statusbar/StackScrollerDecorView;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    if-ne v8, v10, :cond_1

    .line 644
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 652
    .local v2, "childTop":F
    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    .line 653
    .local v9, "top":F
    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v2, v10

    .line 655
    .local v0, "bottom":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 656
    .local v5, "dist":F
    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    .line 657
    move-object v3, v8

    .line 658
    move v7, v5

    goto :goto_1

    .line 661
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v5    # "dist":F
    .end local v8    # "slidingChild":Lcom/android/systemui_ex/statusbar/ExpandableView;
    .end local v9    # "top":F
    :cond_2
    return-object v3
.end method

.method public getCollapseSecondCardPadding()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1394
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1237
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getDismissViewHeight()I
    .locals 3

    .prologue
    .line 2442
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/DismissView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    add-int v0, v1, v2

    .line 2446
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_0

    .line 2448
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    .line 2450
    :cond_0
    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 3

    .prologue
    .line 2112
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int v0, v1, v2

    .line 2113
    .local v0, "emptyMargin":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->needsHeightAdaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2114
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int/2addr v0, v1

    .line 2118
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2116
    :cond_0
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

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

.method public getHostView()Landroid/view/View;
    .locals 0

    .prologue
    .line 2108
    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .prologue
    .line 2290
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1355
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1356
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1361
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1355
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1361
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMinStackHeight()I
    .locals 2

    .prologue
    .line 1500
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1369
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1370
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1371
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1372
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1373
    add-int/lit8 v2, v2, 0x1

    .line 1370
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1376
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1377
    add-int/lit8 v2, v2, -0x1

    .line 1379
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1380
    add-int/lit8 v2, v2, -0x1

    .line 1382
    :cond_3
    return v2
.end method

.method public getNotificationTopPadding()I
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    return v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .prologue
    .line 2297
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPeekHeight()I
    .locals 2

    .prologue
    .line 1508
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public goToFullShade(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 2272
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 2273
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/DismissView;->setInvisible()V

    .line 2274
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setInvisible()V

    .line 2275
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 2276
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 2277
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2278
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2279
    return-void
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .prologue
    .line 1761
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 751
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewNotGone()Z
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/DismissView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/DismissView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewVisible()Z
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/DismissView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isDraggingNotificationCenter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 746
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isExpandedVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReachingStackHeadToEnableSingleHandNotification()Z
    .locals 1

    .prologue
    .line 2774
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v0

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 2103
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 1

    .prologue
    .line 2098
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleHandNotificationCenterActivated()Z
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->isUsingSingleHandMode()Z

    move-result v0

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 618
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 620
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 625
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 0

    .prologue
    .line 2190
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2191
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 567
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 578
    :cond_0
    const v1, 0x7f0f0164

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 580
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 582
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 763
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 765
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/SwipeHelper;->setDensityScale(F)V

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 767
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/SwipeHelper;->setPagingTouchSlop(F)V

    .line 768
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 769
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 629
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 301
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .prologue
    .line 2122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->onExpansionStarted(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 2124
    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2127
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2128
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->onExpansionStopped()V

    .line 2129
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 2130
    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2133
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 2135
    :cond_0
    return-void
.end method

.method public onGoToKeyguard()V
    .locals 1

    .prologue
    .line 2486
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 2488
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2490
    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2149
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2150
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2151
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2152
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2153
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1560
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    if-eqz v6, :cond_2

    .line 1561
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1562
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1563
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 1564
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1597
    :cond_0
    :goto_0
    return v5

    .line 1567
    :cond_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v6, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1569
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1570
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, "expandWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1573
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui_ex/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1575
    :cond_3
    const/4 v2, 0x0

    .line 1576
    .local v2, "scrollWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v6, :cond_5

    .line 1577
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz v6, :cond_4

    .line 1578
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1580
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1581
    if-nez v2, :cond_0

    .line 1585
    :cond_5
    const/4 v3, 0x0

    .line 1586
    .local v3, "swipeWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v6, :cond_6

    .line 1590
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui_ex/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1593
    :cond_6
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVerticalSwipeHelper:Lcom/android/systemui_ex/VerticalSwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1594
    .local v4, "verticalSwipeWantsIt":Z
    const-string v6, "s_hand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onIntercept touch event 4 vertical swipe wants it ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v6, "s_hand"

    const-string v7, "onIntercept touch return may call super"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v1, v5

    .local v1, "holdsIt":Z
    :cond_8
    move v5, v1

    .line 1597
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 364
    .local v0, "centerX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 365
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 366
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 367
    .local v4, "width":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 368
    .local v2, "height":F
    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    const/4 v6, 0x0

    div-float v7, v4, v9

    add-float/2addr v7, v0

    float-to-int v7, v7

    float-to-int v8, v2

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":F
    .end local v4    # "width":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 374
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 378
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 353
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 354
    .local v1, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 355
    .local v2, "size":I
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 356
    .local v0, "childMeasureSpec":I
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->measureChildren(II)V

    .line 357
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1256
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1257
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1258
    .local v0, "oldX":I
    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1259
    .local v1, "oldY":I
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1260
    iput p2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1261
    if-eqz p4, :cond_0

    .line 1262
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    .line 1278
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :goto_0
    return-void

    .line 1264
    .restart local v0    # "oldX":I
    .restart local v1    # "oldY":I
    :cond_0
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1265
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->invalidateParentIfNeeded()V

    .line 1266
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1267
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    .line 1268
    .local v2, "overScrollTop":F
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v3, :cond_1

    .line 1269
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1271
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1275
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "overScrollTop":F
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->customScrollTo(I)V

    .line 1276
    iget v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollY:I

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ExpandableView;

    .prologue
    .line 2157
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->onReset(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2161
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 2162
    return-void
.end method

.method public onSingleHandDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2807
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isSingleHandNotificationCenterActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2808
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->hideSwipeNotificationBackgroundWhileUpdatingSingleHandMode()V

    .line 2809
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setUsingSingleHandMode(Z)V

    .line 2810
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui_ex/statusbar/stack/AmbientState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 2811
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimationForEnablingSingleHandMode(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 2812
    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2816
    :cond_0
    return-void
.end method

.method public onSingleHandEnabled()V
    .locals 3

    .prologue
    .line 2785
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isSingleHandNotificationCenterActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2794
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->hasVisibleNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->hideSwipeNotificationBackgroundWhileUpdatingSingleHandMode()V

    .line 2790
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setUsingSingleHandMode(Z)V

    .line 2791
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui_ex/statusbar/stack/AmbientState;Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    .line 2792
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAnimationForEnablingSingleHandMode(Lcom/android/systemui_ex/statusbar/stack/StackScrollState;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_3

    :cond_0
    move v2, v7

    .line 780
    .local v2, "isCancelOrUp":Z
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    if-eqz v8, :cond_4

    .line 781
    if-eqz v2, :cond_1

    .line 782
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 784
    :cond_1
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v6}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 785
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 831
    :cond_2
    :goto_1
    return v6

    .end local v2    # "isCancelOrUp":Z
    :cond_3
    move v2, v6

    .line 778
    goto :goto_0

    .line 787
    .restart local v2    # "isCancelOrUp":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "expandWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_6

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 790
    if-eqz v2, :cond_5

    .line 791
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v8, v6}, Lcom/android/systemui_ex/ExpandHelper;->onlyObserveMovements(Z)V

    .line 793
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 794
    .local v5, "wasExpandingBefore":Z
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui_ex/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 795
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v8, :cond_6

    .line 797
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    .line 801
    .end local v5    # "wasExpandingBefore":Z
    :cond_6
    const/4 v4, 0x0

    .line 802
    .local v4, "verticalSwipeWantsIt":Z
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mVerticalSwipeHelper:Lcom/android/systemui_ex/VerticalSwipeHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui_ex/VerticalSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 804
    const/4 v3, 0x0

    .line 805
    .local v3, "scrollerWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v8, :cond_7

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isSingleHandNotificationCenterActivated()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 807
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 812
    :goto_2
    const-string v8, "s_hand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouchEvent touch 3 scroller wants it "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_7
    const/4 v1, 0x0

    .line 815
    .local v1, "horizontalSwipeWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_8

    .line 819
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui_ex/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 822
    :cond_8
    if-eqz v0, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v8, :cond_a

    .line 823
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsAnimationBoostEnabled:Z

    if-ne v8, v7, :cond_9

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPerf:Lorg/codeaurora/Performance;

    if-nez v8, :cond_9

    .line 824
    new-instance v8, Lorg/codeaurora/Performance;

    invoke-direct {v8}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPerf:Lorg/codeaurora/Performance;

    .line 826
    :cond_9
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v8, :cond_a

    .line 827
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPerf:Lorg/codeaurora/Performance;

    iget v9, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostTimeOut:I

    const/4 v10, 0x2

    new-array v10, v10, [I

    iget v11, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostSchedBoost:I

    aput v11, v10, v6

    iget v11, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->aBoostCpuBoost:I

    aput v11, v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 831
    :cond_a
    if-nez v1, :cond_b

    if-nez v3, :cond_b

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_b
    move v6, v7

    goto/16 :goto_1

    .line 809
    .end local v1    # "horizontalSwipeWantsIt":Z
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_2
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1721
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1722
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    move-object v0, p1

    .line 1723
    check-cast v0, Lcom/android/systemui_ex/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 1726
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/DismissView;->showClearButton()V

    .line 1732
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1631
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1632
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p0}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    .line 1633
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v1, :cond_0

    .line 1650
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 1637
    check-cast v1, Lcom/android/systemui_ex/statusbar/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1638
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui_ex/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 1639
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Landroid/view/View;)V

    .line 1640
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    .line 1641
    .local v0, "animationGenerated":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1644
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 1646
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1649
    invoke-virtual {p1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2086
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2087
    if-nez p1, :cond_0

    .line 2088
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2090
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1125
    add-int v2, p4, p2

    .line 1127
    .local v2, "newScrollY":I
    neg-int v3, p8

    .line 1128
    .local v3, "top":I
    add-int v0, p8, p6

    .line 1130
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 1131
    .local v1, "clampedY":Z
    if-le v2, v0, :cond_1

    .line 1132
    move v2, v0

    .line 1133
    const/4 v1, 0x1

    .line 1139
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v2, v4, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->onOverScrolled(IIZZ)V

    .line 1141
    return v1

    .line 1134
    :cond_1
    if-ge v2, v3, :cond_0

    .line 1135
    move v2, v3

    .line 1136
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SwipeHelper;->removeLongPressCallback()V

    .line 2094
    return-void
.end method

.method public resetSingleHandNotificationState()V
    .locals 2

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setUsingSingleHandMode(Z)V

    .line 2828
    :cond_0
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "activatedChild"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v1, 0x1

    .line 2227
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 2228
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2229
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 2230
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2232
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2233
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .param p1, "animationsEnabled"    # Z

    .prologue
    .line 1735
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 1737
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 406
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    .line 2309
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setDark(Z)V

    .line 2310
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2311
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 2312
    invoke-direct {p0, p3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 2313
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2315
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2316
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 2
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2197
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 2198
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 2199
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 2200
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2201
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 2202
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2204
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2205
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 2429
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 2430
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/DismissView;->setDismissAllInProgress(Z)V

    .line 2431
    return-void
.end method

.method public setDismissView(Lcom/android/systemui_ex/statusbar/DismissView;)V
    .locals 1
    .param p1, "dismissView"    # Lcom/android/systemui_ex/statusbar/DismissView;

    .prologue
    .line 2349
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    .line 2350
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2351
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui_ex/statusbar/EmptyShadeView;)V
    .locals 1
    .param p1, "emptyShadeView"    # Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    .line 2355
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2356
    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui_ex/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/ExpandHelper;->setEnabled(Z)V

    .line 729
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2208
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    .line 2209
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2210
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2211
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/ExpandableView;

    .line 2212
    .local v2, "v":Lcom/android/systemui_ex/statusbar/ExpandableView;
    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 2210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2214
    .end local v2    # "v":Lcom/android/systemui_ex/statusbar/ExpandableView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 2215
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 2216
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 2217
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2219
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2221
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setInterceptDelegateEnabled(Z)V
    .locals 0
    .param p1, "interceptDelegateEnabled"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    .line 564
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .prologue
    .line 2286
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 2287
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui_ex/SwipeHelper$LongPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/SwipeHelper;->setLongPressListener(Lcom/android/systemui_ex/SwipeHelper$LongPressListener;)V

    .line 555
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    .line 556
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .prologue
    .line 2186
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 2187
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui_ex/statusbar/ExpandableView$OnHeightChangedListener;

    .line 2183
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1167
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1168
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .prologue
    .line 1180
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1181
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .prologue
    .line 1195
    if-eqz p4, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1198
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1199
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1155
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1156
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1230
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 2483
    return-void
.end method

.method public setScrollView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/ViewGroup;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    .line 560
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 725
    return-void
.end method

.method public setSpeedBumpView(Lcom/android/systemui_ex/statusbar/SpeedBumpView;)V
    .locals 0
    .param p1, "speedBumpView"    # Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    .line 2253
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2254
    return-void
.end method

.method public setStackHeight(F)V
    .locals 9
    .param p1, "height"    # F

    .prologue
    const/4 v7, 0x0

    .line 500
    iput p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    .line 501
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 502
    float-to-int v1, p1

    .line 503
    .local v1, "newStackHeight":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 505
    .local v0, "minStackHeight":I
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 507
    :cond_0
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 508
    move v3, v1

    .line 524
    .local v3, "stackHeight":I
    :goto_1
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v3, v5, :cond_1

    .line 525
    iput v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 526
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 527
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 529
    :cond_1
    return-void

    .line 501
    .end local v0    # "minStackHeight":I
    .end local v1    # "newStackHeight":I
    .end local v3    # "stackHeight":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 513
    .restart local v0    # "minStackHeight":I
    .restart local v1    # "newStackHeight":I
    :cond_3
    sub-int v4, v1, v0

    .line 516
    .local v4, "translationY":I
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 518
    .local v2, "partiallyThere":F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 519
    int-to-float v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    iget v8, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 521
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 522
    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    float-to-int v3, v5

    .restart local v3    # "stackHeight":I
    goto :goto_1
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 701
    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 702
    check-cast p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 704
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 707
    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 708
    check-cast p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 712
    return-void
.end method

.method public setmNotificationSwipeHelper(Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    if-eqz v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/SwipeHelper;->setNotificationSwipeHelper(Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;)V

    .line 2768
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x1

    return v0
.end method

.method public showActivatedNotificationOnKeyguard(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "activatedChild"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 2236
    if-nez p1, :cond_0

    .line 2238
    :goto_0
    return-void

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui_ex/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/SwipeHelper;->showNotificationSwipeIndicationOnKeyguard(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    goto :goto_0
.end method

.method public updateDismissView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2394
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/DismissView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 2395
    .local v2, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    move v1, v3

    .line 2396
    .local v1, "newVisibility":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 2397
    if-eq v1, v4, :cond_4

    .line 2398
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2399
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/DismissView;->cancelAnimation()V

    .line 2403
    :goto_2
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4, v1}, Lcom/android/systemui_ex/statusbar/DismissView;->setVisibility(I)V

    .line 2404
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2405
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2406
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2426
    :cond_0
    :goto_3
    return-void

    .line 2394
    .end local v1    # "newVisibility":I
    .end local v2    # "oldVisibility":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/DismissView;->getVisibility()I

    move-result v2

    goto :goto_0

    .restart local v2    # "oldVisibility":I
    :cond_2
    move v1, v4

    .line 2395
    goto :goto_1

    .line 2401
    .restart local v1    # "newVisibility":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/DismissView;->setInvisible()V

    goto :goto_2

    .line 2408
    :cond_4
    new-instance v0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2417
    .local v0, "dimissHideFinishRunnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/DismissView;->isButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    .line 2418
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2419
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v4, v3, v0}, Lcom/android/systemui_ex/statusbar/DismissView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2421
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2422
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/DismissView;->showClearButton()V

    goto :goto_3
.end method

.method public updateEmptyShadeView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2359
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 2360
    .local v1, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    move v0, v3

    .line 2361
    .local v0, "newVisibility":I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 2362
    if-eq v0, v4, :cond_4

    .line 2363
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2364
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->cancelAnimation()V

    .line 2368
    :goto_2
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4, v0}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 2369
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2370
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2371
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2391
    :cond_0
    :goto_3
    return-void

    .line 2359
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    goto :goto_0

    .restart local v1    # "oldVisibility":I
    :cond_2
    move v0, v4

    .line 2360
    goto :goto_1

    .line 2366
    .restart local v0    # "newVisibility":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setInvisible()V

    goto :goto_2

    .line 2373
    :cond_4
    new-instance v2, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2382
    .local v2, "onFinishedRunnable":Ljava/lang/Runnable;
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    .line 2383
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2384
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2386
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui_ex/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/EmptyShadeView;->setInvisible()V

    .line 2387
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "qsMinHeight"    # I

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/StackScrollAlgorithm;->updateIsSmallScreen(I)V

    .line 2479
    return-void
.end method

.method public updateSpeedBumpIndex(I)V
    .locals 3
    .param p1, "newIndex"    # I

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 392
    .local v0, "currentIndex":I
    if-lez p1, :cond_2

    const/4 v1, 0x1

    .line 393
    .local v1, "validIndex":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 395
    const/4 p1, -0x1

    .line 397
    :cond_0
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui_ex/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 400
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui_ex/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 402
    return-void

    .line 392
    .end local v1    # "validIndex":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public updateTopPadding(FIZZ)V
    .locals 6
    .param p1, "qsHeight"    # F
    .param p2, "scrollY"    # I
    .param p3, "animate"    # Z
    .param p4, "ignoreIntrinsicPadding"    # Z

    .prologue
    .line 1479
    int-to-float v4, p2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 1480
    .local v3, "start":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, v3

    .line 1481
    .local v2, "stackHeight":F
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 1482
    .local v0, "minStackHeight":I
    int-to-float v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 1483
    int-to-float v4, v0

    sub-float v1, v4, v2

    .line 1484
    .local v1, "overflow":F
    int-to-float v2, v0

    .line 1485
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v2

    .line 1486
    iput v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 1490
    .end local v1    # "overflow":F
    :goto_0
    if-eqz p4, :cond_1

    float-to-int v4, v3

    :goto_1
    invoke-direct {p0, v4, p3}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 1492
    iget v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 1493
    return-void

    .line 1488
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 1490
    :cond_1
    float-to-int v4, v3

    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v4

    goto :goto_1
.end method
