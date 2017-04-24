.class public Lcom/android/server/policy/UcFingerScrollView;
.super Lcom/android/server/policy/UcPowerScrollView;
.source "UcFingerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DECELERATE_FACTOR:F = 0.1f

.field private static final DELAY_MILLIS:I = 0x10

.field private static final PHASE_IN_DURATION:I = 0x258

.field public static final POS_BASE_Y:I = 0x6f9

.field public static final POS_EXIT_Y:I = 0x807

.field public static final POS_SHUTDOWN_Y:I = 0x3c0

.field private static final RESTORE_DURATION:I = 0x320

.field private static final RESTORE_TO_BASE_FROM_BOTTOM_CHECKING_DELAY:I = 0x12c

.field private static final RESTORE_TO_SHUTDOWN_FROM_BOTTOM_CHECKING_DELAY:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "UcFingerScrollView"


# instance fields
.field private mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

.field private mIsShutingDown:Z

.field private mMaxYVelocity:I

.field private mMinYVelocity:I

.field private mPreviousPosition:I

.field private mRestoreScrollerFromBottomToBaseTask:Ljava/lang/Runnable;

.field private mRestoreScrollerFromBottomToShutdownTask:Ljava/lang/Runnable;

.field private mScrollChecker:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcPowerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    new-instance v1, Lcom/android/server/policy/UcFingerScrollView$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcFingerScrollView$2;-><init>(Lcom/android/server/policy/UcFingerScrollView;)V

    iput-object v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mRestoreScrollerFromBottomToBaseTask:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Lcom/android/server/policy/UcFingerScrollView$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcFingerScrollView$3;-><init>(Lcom/android/server/policy/UcFingerScrollView;)V

    iput-object v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mRestoreScrollerFromBottomToShutdownTask:Ljava/lang/Runnable;

    .line 217
    new-instance v1, Lcom/android/server/policy/UcFingerScrollView$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcFingerScrollView$4;-><init>(Lcom/android/server/policy/UcFingerScrollView;)V

    iput-object v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

    .line 38
    new-instance v1, Lcom/android/server/policy/UcFingerScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcFingerScrollView$1;-><init>(Lcom/android/server/policy/UcFingerScrollView;)V

    iput-object v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;

    .line 52
    iget-object v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 53
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/UcFingerScrollView;->mMaxYVelocity:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/UcFingerScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mPreviousPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/UcFingerScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/android/server/policy/UcFingerScrollView;->mPreviousPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/UcFingerScrollView;)Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/UcFingerScrollView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/UcFingerScrollView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToBase(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/UcFingerScrollView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToShutdown(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/UcFingerScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mYVelocity:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/UcFingerScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcFingerScrollView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I

    return v0
.end method

.method private deinitVelocityTracker()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 98
    :cond_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    :cond_0
    return-void
.end method

.method private restoreScrollerToBase(II)V
    .locals 6
    .param p1, "scrollPosY"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsShutingDown:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    rsub-int v4, p1, 0x6f9

    .line 174
    .local v4, "deltaY":I
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/policy/UcFingerScrollView;->invalidate()V

    goto :goto_0
.end method

.method private restoreScrollerToShutdown(II)V
    .locals 6
    .param p1, "scrollPosY"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsShutingDown:Z

    .line 181
    rsub-int v4, p1, 0x3c0

    .line 182
    .local v4, "deltaY":I
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/policy/UcFingerScrollView;->invalidate()V

    .line 185
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 5
    .param p1, "velocityY"    # I

    .prologue
    .line 190
    if-gez p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/server/policy/UcFingerScrollView;->getScrollY()I

    move-result v2

    add-int/lit16 v2, v2, -0x3c0

    int-to-float v2, v2

    const v3, 0x444e4000    # 825.0f

    div-float v0, v2, v3

    .line 194
    .local v0, "scale":F
    const-string v2, "UcFingerScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 196
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 200
    .local v1, "scaledVelocity":I
    :goto_0
    const-string v2, "UcFingerScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaledVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const v2, 0x3dcccccd    # 0.1f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-super {p0, v2}, Lcom/android/server/policy/UcPowerScrollView;->fling(I)V

    .line 206
    .end local v0    # "scale":F
    .end local v1    # "scaledVelocity":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mFlingListener:Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;

    invoke-interface {v2}, Lcom/android/server/policy/UcFingerScrollView$OnFlingListener;->onFlingStarted()V

    .line 208
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/UcFingerScrollView;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_1
    return-void

    .line 198
    .restart local v0    # "scale":F
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "scaledVelocity":I
    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/UcPowerScrollView;->onScrollChanged(IIII)V

    .line 68
    const/16 v0, 0x6f9

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsPhaseInDone:Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 75
    iget-boolean v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsShutingDown:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3c0

    if-ne p2, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v0}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollToShutdown()V

    .line 79
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x807

    const/16 v5, 0x320

    .line 103
    iget-boolean v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsPhaseInDone:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/policy/UcPowerScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 154
    :goto_0
    return v2

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, "action":I
    invoke-direct {p0}, Lcom/android/server/policy/UcFingerScrollView;->initVelocityTracker()V

    .line 107
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 109
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 154
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/server/policy/UcPowerScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mIsShutingDown:Z

    .line 112
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 113
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/UcFingerScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/android/server/policy/UcFingerScrollView;->mMaxYVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 120
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mYVelocity:I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/policy/UcFingerScrollView;->getScrollY()I

    move-result v1

    .line 127
    .local v1, "scrollPosY":I
    iget v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mYVelocity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mMinYVelocity:I

    if-eqz v2, :cond_4

    .line 128
    if-lt v1, v6, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v2}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollToExit()V

    .line 150
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/UcFingerScrollView;->deinitVelocityTracker()V

    goto :goto_1

    .line 132
    :cond_2
    if-ge v1, v6, :cond_3

    const/16 v2, 0x3c0

    if-le v1, v2, :cond_3

    .line 134
    invoke-direct {p0, v1, v5}, Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToBase(II)V

    goto :goto_2

    .line 136
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/server/policy/UcFingerScrollView;->restoreScrollerToShutdown(II)V

    goto :goto_2

    .line 142
    :cond_4
    if-nez v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mRestoreScrollerFromBottomToShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/UcFingerScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    iget-object v2, p0, Lcom/android/server/policy/UcFingerScrollView;->mRestoreScrollerFromBottomToShutdownTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/policy/UcFingerScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected phaseIn()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/server/policy/UcFingerScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    const/16 v2, 0x807

    const/16 v4, -0x10e

    const/16 v5, 0x258

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 62
    return-void
.end method

.method protected scrollSync(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 84
    return-void
.end method
