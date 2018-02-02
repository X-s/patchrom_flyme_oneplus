.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 114
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 101
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 106
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 119
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 150
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 873
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 897
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 271
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 276
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 277
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 279
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 281
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 284
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    .line 285
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 287
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 288
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 290
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 291
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 292
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 845
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 847
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 849
    if-nez p2, :cond_0

    .line 852
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 853
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 854
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_0

    .line 861
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 862
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 863
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 865
    if-nez p2, :cond_1

    .line 868
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 869
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 871
    :goto_1
    return-void

    .line 859
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 866
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 310
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 311
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 526
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_2
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 687
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 688
    if-ltz v0, :cond_0

    .line 691
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 689
    return v0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 700
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveToStart(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 892
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 893
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 894
    invoke-direct {p0, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 895
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 938
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 939
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 940
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-eq v2, v3, :cond_0

    .line 946
    :goto_0
    return-void

    .line 943
    :cond_0
    if-eqz v1, :cond_1

    .line 944
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 943
    goto :goto_1
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 389
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 391
    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    .line 386
    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 189
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2

    .prologue
    .line 394
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-ne v0, p1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 396
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 397
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 398
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 399
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 930
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    .line 931
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 932
    if-nez p2, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 933
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_1

    .line 433
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 v2, 0x12c

    .line 441
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 443
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 444
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 445
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 446
    return-object v0

    .line 430
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    return-object v4
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 425
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 421
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 407
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 413
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 906
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 907
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 912
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 920
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 921
    if-nez p2, :cond_1

    .line 924
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 925
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 926
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0

    .line 922
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 366
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 372
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 373
    if-nez p1, :cond_1

    .line 376
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 377
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 623
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 614
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_5

    :goto_0
    return v2

    .line 615
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 616
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_2

    :goto_1
    move v0, v2

    :goto_2
    return v0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-lez v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-lt v3, v0, :cond_3

    goto :goto_1

    :cond_5
    move v2, v1

    .line 620
    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-ltz v0, :cond_0

    .line 297
    add-int/lit8 v0, p1, -0x1

    if-eq p2, v0, :cond_1

    .line 300
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-ge p2, v0, :cond_2

    .line 305
    return p2

    .line 296
    :cond_0
    return p2

    .line 299
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    return v0

    .line 302
    :cond_2
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 629
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 631
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 633
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_2

    .line 637
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    :cond_1
    return v2

    .line 633
    :cond_2
    if-nez v0, :cond_0

    .line 634
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    goto :goto_0

    .line 637
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_1

    .line 642
    packed-switch v0, :pswitch_data_0

    .line 683
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    return v0

    .line 644
    :pswitch_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 645
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 646
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 647
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 648
    cmpl-float v1, v0, v3

    if-nez v1, :cond_5

    .line 649
    return v2

    .line 651
    :cond_5
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_1

    .line 655
    :pswitch_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-eq v0, v4, :cond_6

    .line 660
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 661
    cmpl-float v1, v0, v3

    if-nez v1, :cond_7

    .line 662
    return v2

    .line 656
    :cond_6
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v2

    .line 664
    :cond_7
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr v0, v1

    .line 665
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    .line 666
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 667
    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 668
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 673
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 678
    :pswitch_4
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 679
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 546
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 547
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 553
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 556
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 557
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 558
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 559
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 560
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 561
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 562
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v1

    .line 563
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v2

    .line 564
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    .line 566
    return-void

    .line 548
    :cond_0
    return-void

    .line 551
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    goto :goto_0

    .line 554
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 570
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 571
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 574
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 577
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 581
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 583
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    const/4 v1, -0x1

    .line 587
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 589
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 595
    :goto_3
    return-void

    .line 572
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    goto :goto_0

    .line 575
    :cond_2
    return-void

    .line 583
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez v1, :cond_0

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 585
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_1

    .line 590
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-eq v1, v2, :cond_5

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    :cond_5
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 705
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 707
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_2

    .line 711
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 713
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 707
    :cond_2
    if-nez v0, :cond_0

    .line 708
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    goto :goto_0

    .line 711
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    packed-switch v0, :pswitch_data_0

    .line 841
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    .line 718
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 723
    :pswitch_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 724
    if-ltz v0, :cond_5

    .line 729
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 730
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 731
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 732
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 733
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, v1, v0

    const/4 v2, 0x0

    .line 734
    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 735
    const/4 v0, 0x0

    return v0

    .line 725
    :cond_5
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    return v0

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 737
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 738
    float-to-double v4, v2

    const-wide v6, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    .line 739
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v4, v0, v4

    .line 740
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    :goto_2
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 742
    mul-float/2addr v6, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    .line 744
    div-float v5, v4, v5

    float-to-double v6, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v4, v6, v4

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 746
    mul-float v5, v0, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    .line 748
    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v6

    .line 751
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 754
    :goto_3
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v2, :cond_b

    .line 758
    :goto_4
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_e

    .line 759
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v2, :cond_c

    .line 762
    :goto_5
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v2, 0x4c

    if-gt v1, v2, :cond_d

    :cond_7
    :goto_6
    const v1, 0x3f4ccccd    # 0.8f

    .line 767
    mul-float/2addr v1, v3

    .line 768
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 769
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    :cond_8
    :goto_7
    const v1, 0x3ecccccd    # 0.4f

    .line 777
    mul-float/2addr v1, v3

    const/high16 v2, -0x41800000    # -0.25f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 778
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 779
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto/16 :goto_1

    .line 740
    :cond_9
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    goto/16 :goto_2

    .line 752
    :cond_a
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    goto :goto_3

    .line 755
    :cond_b
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 756
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_4

    .line 760
    :cond_c
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_5

    .line 762
    :cond_d
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 765
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_6

    .line 771
    :cond_e
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 774
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_7

    .line 785
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 786
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto/16 :goto_1

    .line 791
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 796
    :pswitch_5
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 802
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 803
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 804
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 805
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 806
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 807
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_8
    const/4 v0, -0x1

    .line 836
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 837
    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v1, 0x1

    .line 797
    if-eq v0, v1, :cond_10

    .line 800
    :goto_9
    const/4 v0, 0x0

    return v0

    .line 798
    :cond_10
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 810
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 811
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    .line 813
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_12

    .line 833
    :goto_a
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 834
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_8

    .line 814
    :cond_12
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    goto :goto_a

    .line 716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 482
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 509
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 510
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 493
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 494
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 497
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 498
    return-void

    .line 495
    :cond_0
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    .prologue
    .line 540
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 541
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 324
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 455
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 474
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 464
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1

    .prologue
    .line 227
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 228
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 230
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 207
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 208
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 209
    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 211
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 212
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    if-nez p1, :cond_1

    .line 354
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 356
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 342
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 344
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_2

    .line 347
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v0, v0

    .line 349
    :goto_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 351
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 352
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 345
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 236
    if-nez p1, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 240
    if-eqz p1, :cond_2

    .line 243
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 248
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 250
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 236
    if-eq p1, v0, :cond_0

    .line 237
    return-void

    .line 241
    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_0
.end method
