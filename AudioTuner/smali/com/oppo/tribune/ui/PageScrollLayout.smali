.class public Lcom/oppo/tribune/ui/PageScrollLayout;
.super Landroid/widget/LinearLayout;
.source "PageScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/ui/PageScrollLayout$1;,
        Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;,
        Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x78

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field private mIsFirstMove:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field private mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

.field private mPreScreen:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingBounce:I

.field protected mScrollingSpeed:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWillIntercept:Z

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oppo/tribune/ui/PageScrollLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/ui/PageScrollLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0xc8

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingSpeed:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingBounce:I

    .line 34
    iput-boolean v3, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mFirstLayout:Z

    .line 35
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    .line 36
    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 37
    iput v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    .line 42
    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 270
    iput v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    .line 272
    iput-boolean v3, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    .line 479
    iput-object v4, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    .line 559
    iput-object v4, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/PageScrollLayout;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0xc8

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingSpeed:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingBounce:I

    .line 34
    iput-boolean v3, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mFirstLayout:Z

    .line 35
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    .line 36
    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 37
    iput v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    .line 42
    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 270
    iput v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    .line 272
    iput-boolean v3, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    .line 479
    iput-object v4, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    .line 559
    iput-object v4, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/PageScrollLayout;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private doEndScroll()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    if-eq v0, v1, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->selectEnd()V

    .line 193
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->sameScreen()V

    goto :goto_0
.end method

.method private getMaxScrollX()I
    .locals 4

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f1e353f    # 0.618f

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 157
    :cond_0
    return v0
.end method

.method private getMinScrollX()I
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3e9fbe77    # 0.312f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRightBounds()I
    .locals 4

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, "normalMaxScrollX":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v1

    .line 163
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 164
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 167
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/PageScrollLayout;->setHapticFeedbackEnabled(Z)V

    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/PageScrollLayout;->initWorkspace(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->requestFocus()Z

    .line 62
    return-void
.end method

.method private initWorkspace(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchSlop:I

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mMaximumVelocity:I

    .line 70
    return-void
.end method

.method private isScreenLegal(I)Z
    .locals 1
    .param p1, "screen"    # I

    .prologue
    .line 551
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sameScreen()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    invoke-interface {v0}, Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;->onSameScreen()V

    .line 601
    :cond_0
    return-void
.end method

.method private screenScroll()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;->onScreenScroll(I)V

    .line 607
    :cond_0
    return-void
.end method

.method private selectEnd()V
    .locals 3

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 589
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    iget v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    invoke-interface {v1, v2}, Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;->onSelectEnd(I)V

    .line 592
    :cond_1
    return-void
.end method

.method private selectStart()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;->onSelectStart(I)V

    .line 580
    :cond_0
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getWidth()I

    move-result v0

    .line 404
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 406
    .local v1, "whichScreen":I
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 407
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 175
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->scrollTo(II)V

    .line 177
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->postInvalidate()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 179
    const/4 v0, 0x0

    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 181
    iput v3, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    .line 182
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->doEndScroll()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    return v0
.end method

.method public getTotalScreen()I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getViewByPostion(I)Landroid/view/View;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 616
    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .local v0, "size":I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 619
    iget-object v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 622
    .end local v0    # "size":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInScrolling()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToScreen(II)V
    .locals 9
    .param p1, "currentScreen"    # I
    .param p2, "intentScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 410
    sub-int v0, p1, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sub-int v0, p1, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 412
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 430
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 416
    iput p2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    .line 418
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 419
    .local v8, "screenDelta":I
    const/4 v6, 0x1

    .line 420
    .local v6, "durationOffset":I
    if-nez v8, :cond_2

    .line 421
    const/16 v6, 0x14

    .line 423
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingSpeed:I

    add-int v5, v0, v6

    .line 424
    .local v5, "duration":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getWidth()I

    move-result v0

    mul-int v7, p2, v0

    .line 425
    .local v7, "newX":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v0

    sub-int v3, v7, v0

    .line 427
    .local v3, "delta":I
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 428
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_1

    .line 212
    iget v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    if-eqz v10, :cond_1

    .line 213
    iput-boolean v9, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    .line 267
    :cond_0
    :goto_0
    return v8

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 220
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 222
    .local v5, "y":F
    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_2
    :goto_1
    iget v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 224
    :pswitch_0
    iget v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 225
    .local v3, "xDiff":I
    iget v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v6, v10

    .line 227
    .local v6, "yDiff":I
    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchSlop:I

    .line 228
    .local v1, "touchSlop":I
    if-le v3, v1, :cond_4

    move v4, v8

    .line 229
    .local v4, "xMoved":Z
    :goto_2
    if-le v6, v1, :cond_5

    move v7, v8

    .line 230
    .local v7, "yMoved":Z
    :goto_3
    iget v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    if-nez v10, :cond_2

    .line 231
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    .line 232
    :cond_3
    mul-int/lit8 v10, v6, 0x3

    if-le v3, v10, :cond_2

    iget-boolean v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    if-nez v10, :cond_2

    .line 233
    iput v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 234
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->selectStart()V

    goto :goto_1

    .end local v4    # "xMoved":Z
    .end local v7    # "yMoved":Z
    :cond_4
    move v4, v9

    .line 228
    goto :goto_2

    .restart local v4    # "xMoved":Z
    :cond_5
    move v7, v9

    .line 229
    goto :goto_3

    .line 242
    .end local v1    # "touchSlop":I
    .end local v3    # "xDiff":I
    .end local v4    # "xMoved":Z
    .end local v6    # "yDiff":I
    :pswitch_1
    iput v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    .line 243
    iput v5, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionY:F

    .line 245
    iget-object v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v9

    :goto_4
    iput v10, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    goto :goto_1

    :cond_6
    move v10, v8

    goto :goto_4

    .line 251
    :pswitch_2
    iput v9, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 252
    iput-boolean v9, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v3

    .line 131
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 132
    invoke-virtual {p0, v4}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 135
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 137
    add-int/2addr v1, v2

    .line 131
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 112
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v6

    .line 113
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 114
    invoke-virtual {p0, v7}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 119
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    mul-int/2addr v0, v8

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->scrollTo(II)V

    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    mul-int v3, v2, v8

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 122
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mFirstLayout:Z

    .line 124
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;

    .line 102
    .local v0, "savedState":Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;
    invoke-virtual {v0}, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 103
    iget v1, v0, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 104
    iget v1, v0, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;->currentScreen:I

    iput v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 105
    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 96
    .local v0, "state":Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;
    iget v1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    iput v1, v0, Lcom/oppo/tribune/ui/PageScrollLayout$SavedState;->currentScreen:I

    .line 97
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    .line 172
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 277
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 280
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 281
    :cond_1
    const/16 v16, 0x1

    .line 398
    :goto_0
    return v16

    .line 284
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 286
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 287
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 289
    .local v13, "y":F
    packed-switch v2, :pswitch_data_0

    .line 398
    :cond_3
    :goto_1
    const/16 v16, 0x1

    goto :goto_0

    .line 292
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_4

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->abortAnimation()V

    .line 295
    :cond_4
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    .line 296
    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionY:F

    goto :goto_1

    .line 301
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 302
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    .line 303
    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionY:F

    .line 304
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    .line 305
    const/16 v16, 0x1

    goto :goto_0

    .line 308
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    move/from16 v16, v0

    sub-float v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v11, v0

    .line 310
    .local v11, "xDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v13, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v14, v0

    .line 312
    .local v14, "yDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v11, v0, :cond_a

    const/4 v12, 0x1

    .line 313
    .local v12, "xMoved":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_b

    const/4 v15, 0x1

    .line 314
    .local v15, "yMoved":Z
    :goto_3
    if-nez v12, :cond_6

    if-eqz v15, :cond_7

    .line 315
    :cond_6
    mul-int/lit8 v16, v14, 0x3

    move/from16 v0, v16

    if-le v11, v0, :cond_7

    .line 316
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getCurrentScreen()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->selectStart()V

    .line 322
    .end local v11    # "xDiff":I
    .end local v12    # "xMoved":Z
    .end local v14    # "yDiff":I
    .end local v15    # "yMoved":Z
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    move/from16 v16, v0

    sub-float v16, v16, v10

    move/from16 v0, v16

    float-to-int v3, v0

    .line 325
    .local v3, "deltaX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingBounce:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 326
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mLastMotionX:F

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v7

    .line 329
    .local v7, "tScrollX":I
    if-gez v3, :cond_d

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getMinScrollX()I

    move-result v5

    .line 331
    .local v5, "minX":I
    add-int v16, v7, v3

    if-gez v16, :cond_8

    .line 332
    if-gez v7, :cond_c

    .line 333
    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 338
    :cond_8
    :goto_4
    add-int v16, v7, v3

    move/from16 v0, v16

    if-ge v0, v5, :cond_9

    .line 339
    sub-int v3, v5, v7

    .line 341
    :cond_9
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->scrollBy(II)V

    goto/16 :goto_1

    .line 312
    .end local v3    # "deltaX":I
    .end local v5    # "minX":I
    .end local v7    # "tScrollX":I
    .restart local v11    # "xDiff":I
    .restart local v14    # "yDiff":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 313
    .restart local v12    # "xMoved":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    .line 335
    .end local v11    # "xDiff":I
    .end local v12    # "xMoved":Z
    .end local v14    # "yDiff":I
    .restart local v3    # "deltaX":I
    .restart local v5    # "minX":I
    .restart local v7    # "tScrollX":I
    :cond_c
    neg-int v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-int v18, v7, v3

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    goto :goto_4

    .line 342
    .end local v5    # "minX":I
    :cond_d
    if-lez v3, :cond_3

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getMaxScrollX()I

    move-result v4

    .line 344
    .local v4, "maxX":I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getRightBounds()I

    move-result v6

    .line 345
    .local v6, "rightX":I
    add-int v16, v7, v3

    move/from16 v0, v16

    if-le v0, v6, :cond_e

    .line 346
    if-le v7, v6, :cond_e

    .line 347
    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 351
    :cond_e
    add-int v16, v7, v3

    move/from16 v0, v16

    if-le v0, v4, :cond_f

    .line 352
    sub-int v3, v4, v7

    .line 354
    :cond_f
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->scrollBy(II)V

    goto/16 :goto_1

    .line 362
    .end local v3    # "deltaX":I
    .end local v4    # "maxX":I
    .end local v6    # "rightX":I
    .end local v7    # "tScrollX":I
    :pswitch_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    .line 364
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 367
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 368
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    move/from16 v0, v16

    float-to-int v9, v0

    .line 370
    .local v9, "velocityX":I
    const/16 v16, 0x78

    move/from16 v0, v16

    if-le v9, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    move/from16 v16, v0

    if-lez v16, :cond_11

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 379
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->recycle()V

    .line 381
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 385
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->screenScroll()V

    .line 386
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    goto/16 :goto_1

    .line 372
    .restart local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v9    # "velocityX":I
    :cond_11
    const/16 v16, -0x78

    move/from16 v0, v16

    if-ge v9, v0, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    goto :goto_5

    .line 376
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToDestination()V

    goto :goto_5

    .line 391
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v9    # "velocityX":I
    :pswitch_3
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mIsFirstMove:Z

    .line 393
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    .line 394
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    goto/16 :goto_1

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;Z)V
    .locals 10
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "isInfoSame"    # Z

    .prologue
    const/4 v9, -0x1

    .line 482
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->removeAllViews()V

    .line 483
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    .line 484
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iput-object p1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mAdapter:Landroid/widget/Adapter;

    .line 489
    if-nez p2, :cond_2

    .line 490
    iput v9, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mPreScreen:I

    .line 492
    :cond_2
    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    if-nez v8, :cond_3

    .line 493
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    .line 496
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    .local v5, "preViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 499
    .local v6, "sizePre":I
    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mAdapter:Landroid/widget/Adapter;

    if-eqz v8, :cond_8

    .line 501
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 504
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 505
    const/4 v7, 0x0

    .line 506
    .local v7, "view":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_5

    .line 507
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 508
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "view":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .line 506
    .restart local v7    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 511
    :cond_5
    invoke-interface {p1, v2, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_6

    .line 514
    invoke-virtual {p0, v0, v2, v4}, Lcom/oppo/tribune/ui/PageScrollLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 516
    :cond_6
    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->views:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 519
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v7    # "view":Landroid/view/View;
    :cond_7
    iget v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    iget-object v9, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v9}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v8, v9, :cond_8

    .line 520
    iget-object v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 521
    iget v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 524
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mTouchState:I

    goto/16 :goto_0
.end method

.method public setOnItemSelectChangedListener(Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mOnItemChangedListener:Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;

    .line 574
    return-void
.end method

.method public setScreen(I)V
    .locals 3
    .param p1, "screen"    # I

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/PageScrollLayout;->isScreenLegal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iput p1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    .line 537
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/PageScrollLayout;->snapToScreen(I)V

    .line 542
    return-void

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchIntercept(Z)V
    .locals 0
    .param p1, "intercept"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mWillIntercept:Z

    .line 74
    return-void
.end method

.method protected snapToScreen(I)V
    .locals 9
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 435
    iput p1, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mNextScreen:I

    .line 437
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 438
    .local v8, "screenDelta":I
    const/4 v6, 0x1

    .line 439
    .local v6, "durationOffset":I
    if-nez v8, :cond_0

    .line 440
    const/16 v6, 0x14

    .line 442
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScrollingSpeed:I

    add-int v5, v0, v6

    .line 443
    .local v5, "duration":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 444
    .local v7, "newX":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v0

    sub-int v3, v7, v0

    .line 446
    .local v3, "delta":I
    iget-object v0, p0, Lcom/oppo/tribune/ui/PageScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 448
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PageScrollLayout;->invalidate()V

    .line 449
    return-void
.end method
