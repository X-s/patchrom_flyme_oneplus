.class public Lcom/android/systemui_ex/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/SwipeHelper$LongPressListener;,
        Lcom/android/systemui_ex/SwipeHelper$Callback;,
        Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;
    }
.end annotation


# static fields
.field public static SWIPE_PROGRESS_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDismissSwipingRight:Z

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mNotificationClickHintAnimationHelper:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

.field private mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui_ex/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui_ex/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 64
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 65
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mMinSwipeProgress:F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mMaxSwipeProgress:F

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mTmpPos:[I

    .line 109
    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 111
    iput p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    .line 112
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mDensityScale:F

    .line 114
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mPagingTouchSlop:F

    .line 116
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressTimeout:J

    .line 117
    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mFalsingThreshold:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->showNotificationSwipeBackground(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui_ex/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mDismissSwipingRight:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/SwipeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/SwipeHelper$LongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 153
    iget v1, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 153
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 769
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui_ex/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 159
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 186
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 187
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 188
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 189
    .local v1, "pos":F
    sget v4, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 190
    sget v4, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 194
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 191
    :cond_1
    sget v4, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 192
    sget v4, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private hideNotificationSwipeBackground(Landroid/view/View;)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "hint_ani"

    const-string v1, "hide 11111111111111 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setNotificationBackgroundVisibility(Z)V

    .line 563
    :cond_0
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 216
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui_ex/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 219
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 227
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 229
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 230
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 164
    iget v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showNotificationSwipeBackground(Landroid/view/View;)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "hint_ani"

    const-string v1, "show ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setNotificationBackgroundVisibility(Z)V

    .line 570
    :cond_0
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    .line 200
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    if-eqz p2, :cond_0

    .line 202
    move v0, v1

    .line 203
    .local v0, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 204
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 208
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 211
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {p1}, Lcom/android/systemui_ex/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 212
    return-void

    .line 206
    .restart local v0    # "alpha":F
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 442
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui_ex/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 443
    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J

    .prologue
    .line 455
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 456
    .local v1, "animView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 459
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mSwipeDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 463
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    neg-float v3, v6

    .line 470
    .local v3, "newPos":F
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-nez v6, :cond_6

    .line 471
    iget v6, p0, Lcom/android/systemui_ex/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v6

    .line 472
    .local v4, "duration":J
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-eqz v6, :cond_5

    .line 473
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 484
    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 485
    invoke-direct {p0, v1, v3}, Lcom/android/systemui_ex/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 486
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_7

    .line 487
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 492
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-lez v6, :cond_2

    .line 493
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 495
    :cond_2
    new-instance v6, Lcom/android/systemui_ex/SwipeHelper$2;

    invoke-direct {v6, p0, v1, p1, p3}, Lcom/android/systemui_ex/SwipeHelper$2;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    new-instance v6, Lcom/android/systemui_ex/SwipeHelper$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper$3;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 519
    return-void

    .line 464
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "newPos":F
    .end local v4    # "duration":J
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 465
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 467
    .end local v3    # "newPos":F
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    neg-float v3, v6

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 478
    .restart local v4    # "duration":J
    :cond_5
    iget v6, p0, Lcom/android/systemui_ex/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v6

    goto :goto_1

    .line 481
    .end local v4    # "duration":J
    :cond_6
    move-wide v4, p7

    .restart local v4    # "duration":J
    goto :goto_1

    .line 489
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    sget-object v6, Lcom/android/systemui_ex/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2
.end method

.method public hideCurrentHorizontallySwipedNotificationBackground()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    move v5, v4

    :goto_1
    return v5

    .line 255
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 256
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    .line 257
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    .line 259
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mDismissSwipingRight:Z

    .line 261
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 262
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 263
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 265
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui_ex/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 267
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/systemui_ex/SwipeHelper;->hideNotificationSwipeBackground(Landroid/view/View;)V

    .line 269
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mInitialTouchPos:F

    .line 272
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    .line 274
    new-instance v6, Lcom/android/systemui_ex/SwipeHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui_ex/SwipeHelper$1;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 289
    :cond_3
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    if-nez v6, :cond_0

    .line 297
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 299
    .local v3, "pos":F
    iget v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v3, v6

    .line 300
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 302
    iput-boolean v5, p0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mInitialTouchPos:F

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui_ex/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 313
    .end local v2    # "delta":F
    .end local v3    # "pos":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_5

    :cond_4
    move v1, v5

    .line 317
    .local v1, "captured":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    .line 318
    iput-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 319
    iput-object v7, p0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 320
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui_ex/SwipeHelper;->removeLongPressCallback()V

    .line 322
    if-eqz v1, :cond_0

    goto/16 :goto_1

    .end local v1    # "captured":Z
    :cond_5
    move v1, v4

    .line 313
    goto :goto_2

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressSent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 583
    const/16 v28, 0x1

    .line 728
    :goto_0
    return v28

    .line 586
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_1

    .line 591
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 592
    const/16 v28, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/SwipeHelper;->removeLongPressCallback()V

    .line 598
    const/16 v28, 0x0

    goto :goto_0

    .line 602
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 604
    .local v5, "action":I
    packed-switch v5, :pswitch_data_0

    .line 728
    :cond_3
    :goto_1
    const/16 v28, 0x1

    goto :goto_0

    .line 607
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 608
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mInitialTouchPos:F

    move/from16 v29, v0

    sub-float v10, v28, v29

    .line 609
    .local v10, "delta":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 610
    .local v4, "absDelta":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/SwipeHelper;->getFalsingThreshold()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v4, v28

    if-ltz v28, :cond_4

    .line 611
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 614
    :cond_4
    const/high16 v28, 0x428c0000    # 70.0f

    div-float v20, v4, v28

    .line 615
    .local v20, "scale":F
    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v28, v20, v28

    if-lez v28, :cond_5

    const/high16 v20, 0x3f800000    # 1.0f

    .line 619
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    .line 621
    .local v6, "canChildBeDismissed":Z
    const/16 v28, 0x0

    cmpl-float v28, v10, v28

    if-lez v28, :cond_b

    const/16 v16, 0x1

    .line 622
    .local v16, "isMovingRight":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->canSwipedNotificationGetOpened(Landroid/view/View;)Z

    move-result v15

    .line 625
    .local v15, "isChildOpenable":Z
    if-eqz v6, :cond_6

    if-nez v15, :cond_7

    .line 626
    :cond_6
    if-eqz v16, :cond_c

    if-eqz v15, :cond_c

    .line 641
    :cond_7
    :goto_3
    const/16 v22, 0x0

    .line 642
    .local v22, "swipeNotificationNotifierIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 643
    if-eqz v16, :cond_8

    if-eqz v15, :cond_9

    :cond_8
    if-nez v16, :cond_10

    if-nez v6, :cond_10

    .line 645
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setNotificationBackgroundVisibility(Z)V

    .line 669
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v10}, Lcom/android/systemui_ex/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 670
    if-eqz v22, :cond_3

    .line 671
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 672
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 621
    .end local v15    # "isChildOpenable":Z
    .end local v16    # "isMovingRight":Z
    .end local v22    # "swipeNotificationNotifierIcon":Landroid/view/View;
    :cond_b
    const/16 v16, 0x0

    goto :goto_2

    .line 628
    .restart local v15    # "isChildOpenable":Z
    .restart local v16    # "isMovingRight":Z
    :cond_c
    if-eqz v6, :cond_d

    if-eqz v16, :cond_7

    .line 632
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v21

    .line 633
    .local v21, "size":F
    const v28, 0x3e19999a    # 0.15f

    mul-float v17, v28, v21

    .line 634
    .local v17, "maxScrollDistance":F
    cmpl-float v28, v4, v21

    if-ltz v28, :cond_f

    .line 635
    const/16 v28, 0x0

    cmpl-float v28, v10, v28

    if-lez v28, :cond_e

    move/from16 v10, v17

    :goto_5
    goto :goto_3

    :cond_e
    move/from16 v0, v17

    neg-float v10, v0

    goto :goto_5

    .line 637
    :cond_f
    div-float v28, v10, v21

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    mul-float v10, v17, v28

    goto/16 :goto_3

    .line 647
    .end local v17    # "maxScrollDistance":F
    .end local v21    # "size":F
    .restart local v22    # "swipeNotificationNotifierIcon":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getX()F

    move-result v25

    .line 648
    .local v25, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getY()F

    move-result v26

    .line 649
    .local v26, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getZ()F

    move-result v27

    .line 650
    .local v27, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v24

    .line 651
    .local v24, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v14

    .line 652
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationY(F)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const v29, 0x3dcccccd    # 0.1f

    sub-float v29, v27, v29

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationZ(F)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1, v14}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationWidthAndHeight(FI)V

    .line 655
    if-eqz v16, :cond_11

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->showOpenNotificationBackground()V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setDismissNotificationIconVisibility(Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setOpenNotificationIconVisibility(Z)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->getSwipeOpenNotificationIcon()Landroid/view/View;

    move-result-object v22

    .line 666
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setNotificationBackgroundVisibility(Z)V

    goto/16 :goto_4

    .line 661
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->showDismissNotificationBackground()V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setDismissNotificationIconVisibility(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setOpenNotificationIconVisibility(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->getSwipeDeleteNotificationIcon()Landroid/view/View;

    move-result-object v22

    goto :goto_6

    .line 681
    .end local v4    # "absDelta":F
    .end local v6    # "canChildBeDismissed":Z
    .end local v10    # "delta":F
    .end local v14    # "height":I
    .end local v15    # "isChildOpenable":Z
    .end local v16    # "isMovingRight":Z
    .end local v20    # "scale":F
    .end local v22    # "swipeNotificationNotifierIcon":Landroid/view/View;
    .end local v24    # "width":F
    .end local v25    # "x":F
    .end local v26    # "y":F
    .end local v27    # "z":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mDensityScale:F

    move/from16 v29, v0

    mul-float v18, v28, v29

    .line 683
    .local v18, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    const/16 v29, 0x3e8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mDensityScale:F

    move/from16 v29, v0

    mul-float v12, v28, v29

    .line 685
    .local v12, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v23

    .line 686
    .local v23, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v19

    .line 689
    .local v19, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    cmpl-double v28, v28, v30

    if-lez v28, :cond_13

    const/4 v8, 0x1

    .line 691
    .local v8, "childSwipedFarEnough":Z
    :goto_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v28

    cmpl-float v28, v28, v12

    if-lez v28, :cond_16

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-lez v28, :cond_16

    const/16 v28, 0x0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_14

    const/16 v28, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v29

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_15

    const/16 v29, 0x1

    :goto_9
    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    const/4 v9, 0x1

    .line 694
    .local v9, "childSwipedFastEnough":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v28

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    move/from16 v28, v0

    if-nez v28, :cond_17

    const/4 v13, 0x1

    .line 697
    .local v13, "falsingDetected":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_18

    if-nez v13, :cond_18

    if-nez v9, :cond_12

    if-eqz v8, :cond_18

    :cond_12
    const/4 v11, 0x1

    .line 700
    .local v11, "dismissChild":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v28

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_19

    const/16 v16, 0x1

    .line 701
    .restart local v16    # "isMovingRight":Z
    :goto_d
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/SwipeHelper;->mDismissSwipingRight:Z

    .line 702
    const-string v28, "fast"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dismiss child "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " far "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " fast "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v11, :cond_1d

    .line 704
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->canSwipedNotificationGetOpened(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_1a

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 689
    .end local v8    # "childSwipedFarEnough":Z
    .end local v9    # "childSwipedFastEnough":Z
    .end local v11    # "dismissChild":Z
    .end local v13    # "falsingDetected":Z
    .end local v16    # "isMovingRight":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 691
    .restart local v8    # "childSwipedFarEnough":Z
    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_9

    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 694
    .restart local v9    # "childSwipedFastEnough":Z
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 697
    .restart local v13    # "falsingDetected":Z
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 700
    .restart local v11    # "dismissChild":Z
    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 707
    .restart local v16    # "isMovingRight":Z
    :cond_1a
    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->isOnKeyguard()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->performClick()Z

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 712
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v9, :cond_1c

    .end local v23    # "velocity":F
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .restart local v23    # "velocity":F
    :cond_1c
    const/16 v23, 0x0

    goto :goto_e

    .line 715
    :cond_1d
    if-eqz v16, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->canSwipedNotificationGetOpened(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_20

    if-nez v13, :cond_20

    if-nez v9, :cond_1e

    if-eqz v8, :cond_20

    :cond_1e
    const/4 v7, 0x1

    .line 718
    .local v7, "canChildGetOpenedByMovingRightFastOrFarEnough":Z
    :goto_f
    if-eqz v7, :cond_1f

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->performClick()Z

    .line 721
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui_ex/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 715
    .end local v7    # "canChildGetOpenedByMovingRightFastOrFarEnough":Z
    :cond_20
    const/4 v7, 0x0

    goto :goto_f

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 248
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 128
    iput p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mDensityScale:F

    .line 129
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui_ex/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mLongPressListener:Lcom/android/systemui_ex/SwipeHelper$LongPressListener;

    .line 125
    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0
    .param p1, "maxSwipeProgress"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mMaxSwipeProgress:F

    .line 182
    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0
    .param p1, "minSwipeProgress"    # F

    .prologue
    .line 177
    iput p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mMinSwipeProgress:F

    .line 178
    return-void
.end method

.method public setNotificationSwipeHelper(Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/android/systemui_ex/SwipeHelper;->mPagingTouchSlop:F

    .line 133
    return-void
.end method

.method public showNotificationSwipeIndicationOnKeyguard(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationClickHintAnimationHelper:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationClickHintAnimationHelper:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->cancel()V

    .line 336
    :cond_2
    new-instance v0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationClickHintAnimationHelper:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    .line 337
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper;->mNotificationClickHintAnimationHelper:Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->start()V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 522
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper;->mCallback:Lcom/android/systemui_ex/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui_ex/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 524
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui_ex/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 525
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 526
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 527
    new-instance v4, Lcom/android/systemui_ex/SwipeHelper$4;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/SwipeHelper$4;-><init>(Lcom/android/systemui_ex/SwipeHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 534
    new-instance v4, Lcom/android/systemui_ex/SwipeHelper$5;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui_ex/SwipeHelper$5;-><init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 549
    return-void
.end method
