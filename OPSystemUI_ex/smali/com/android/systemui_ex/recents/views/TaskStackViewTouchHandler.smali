.class Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;


# static fields
.field static INACTIVE_POINTER_ID:I

.field static final TAG:Ljava/lang/String;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui_ex/recents/views/TaskView;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mInitialMotionX:I

.field mInitialMotionY:I

.field mInitialP:F

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z

.field mLastMotionX:I

.field mLastMotionY:I

.field mLastP:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mPagingTouchSlop:F

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

.field mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

.field mTotalPMotion:F

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui_ex/recents/views/TaskStackView;
    .param p3, "config"    # Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .param p4, "scroller"    # Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui_ex/recents/views/TaskView;

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 64
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 65
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 66
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 67
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    .line 68
    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    .line 69
    iput-object p4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    .line 70
    iput-object p3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v3, "densityScale":F
    new-instance v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/recents/views/SwipeHelper;-><init>(ILcom/android/systemui_ex/recents/views/SwipeHelper$Callback;FFLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    .line 75
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->setMinAlpha(F)V

    .line 77
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 116
    .local v0, "pev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 117
    return-object v0
.end method

.method public dismissChildAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->dismissChildAnimated(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 446
    return-void
.end method

.method findViewAtPoint(II)Lcom/android/systemui_ex/recents/views/TaskView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 102
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 104
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :goto_1
    return-object v2

    .line 102
    .restart local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 110
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(I)Landroid/view/View;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 383
    .local v0, "childCount":I
    if-lt p1, v0, :cond_0

    .line 384
    const/4 v1, 0x0

    .line 387
    :goto_0
    return-object v1

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 387
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 91
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 397
    move-object v1, p1

    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 399
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 401
    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 404
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 405
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 422
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 424
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onTaskViewDismissed(Lcom/android/systemui_ex/recents/views/TaskView;)V

    .line 427
    return-void
.end method

.method public onChildDismissedAnimated(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 432
    move-object v0, p1

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 434
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 436
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onTaskViewDismissedAnimated(Lcom/android/systemui_ex/recents/views/TaskView;)V

    .line 439
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 461
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 354
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .end local v0    # "action":I
    :cond_0
    move v2, v3

    .line 370
    :cond_1
    :goto_0
    return v2

    .line 357
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 358
    .local v1, "vScroll":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 359
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusNextTask(ZZ)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusNextTask(ZZ)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    move v2, v8

    .line 124
    .local v2, "hasChildren":Z
    :goto_0
    if-nez v2, :cond_2

    .line 198
    :cond_0
    :goto_1
    return v7

    .end local v2    # "hasChildren":Z
    :cond_1
    move v2, v7

    .line 123
    goto :goto_0

    .line 129
    .restart local v2    # "hasChildren":Z
    :cond_2
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    invoke-virtual {v9, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 130
    iget-boolean v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v9, :cond_3

    move v7, v8

    .line 131
    goto :goto_1

    .line 134
    :cond_3
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v9, v9, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v9, v9, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    move v4, v8

    .line 136
    .local v4, "wasScrolling":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, "action":I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 198
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v9, :cond_0

    :cond_6
    move v7, v8

    goto :goto_1

    .end local v0    # "action":I
    .end local v4    # "wasScrolling":Z
    :cond_7
    move v4, v7

    .line 134
    goto :goto_2

    .line 140
    .restart local v0    # "action":I
    .restart local v4    # "wasScrolling":Z
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 142
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 143
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 144
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iget v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui_ex/recents/views/TaskView;

    .line 146
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 147
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 150
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 154
    :pswitch_1
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v10, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v9, v10, :cond_5

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 158
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 160
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 161
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-lt v1, v9, :cond_9

    .line 162
    :cond_8
    sget-object v9, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->TAG:Ljava/lang/String;

    const-string v10, "Error in getting activePointerIndex, dump related variables..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v9, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivePointerId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v9, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activePointerIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v9, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ev.getPointerCount()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 168
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 169
    .local v5, "x":I
    iget v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v9, v10, :cond_a

    .line 171
    iput-boolean v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 173
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 174
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_a

    .line 175
    invoke-interface {v3, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_a
    iput v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 180
    iput v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 181
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v9, v9, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_3

    .line 187
    .end local v1    # "activePointerIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 189
    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 190
    sget v9, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 191
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui_ex/recents/views/TaskView;

    .line 192
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapBackCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 451
    move-object v0, p1

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 453
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 456
    return-void
.end method

.method public onSwipeChanged(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # F

    .prologue
    .line 411
    move-object v0, p1

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 412
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 413
    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 414
    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/recents/views/TaskView;->setLockAnimationCurrentCount(F)V

    .line 416
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v18, 0x1

    .line 205
    .local v18, "hasChildren":Z
    :goto_0
    if-nez v18, :cond_1

    .line 206
    const/4 v2, 0x0

    .line 346
    :goto_1
    return v2

    .line 204
    .end local v18    # "hasChildren":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 210
    .restart local v18    # "hasChildren":Z
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui_ex/recents/views/SwipeHelper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    const/4 v2, 0x1

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 218
    .local v13, "action":I
    and-int/lit16 v2, v13, 0xff

    packed-switch v2, :pswitch_data_0

    .line 346
    :cond_3
    :goto_2
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 221
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui_ex/recents/views/TaskView;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 234
    .local v25, "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_3

    .line 235
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 240
    .end local v25    # "parent":Landroid/view/ViewParent;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 241
    .local v19, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 242
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 243
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_2

    .line 248
    .end local v19    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v3, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v2, v3, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 253
    .local v14, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 254
    .local v28, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v29, v0

    .line 255
    .local v29, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v2, v29, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v30

    .line 256
    .local v30, "yTotal":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v15

    .line 257
    .local v15, "curP":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    sub-float v17, v2, v15

    .line 258
    .local v17, "deltaP":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v0, v30

    if-le v0, v2, :cond_4

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 263
    .restart local v25    # "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_4

    .line 264
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 268
    .end local v25    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v16

    .line 270
    .local v16, "curStackScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v22

    .line 271
    .local v22, "overScrollAmount":F
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    move/from16 v20, v0

    .line 275
    .local v20, "maxOverScroll":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v3, v3, v20

    sub-float/2addr v2, v3

    mul-float v17, v17, v2

    .line 278
    .end local v20    # "maxOverScroll":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 285
    .end local v16    # "curStackScroll":F
    .end local v22    # "overScrollAmount":F
    :cond_6
    :goto_3
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 286
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    goto/16 :goto_2

    .line 282
    .restart local v16    # "curStackScroll":F
    .restart local v22    # "overScrollAmount":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 292
    .end local v14    # "activePointerIndex":I
    .end local v15    # "curP":F
    .end local v16    # "curStackScroll":F
    .end local v17    # "deltaP":F
    .end local v22    # "overScrollAmount":F
    .end local v28    # "x":I
    .end local v29    # "y":I
    .end local v30    # "yTotal":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    .line 294
    .local v6, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-le v2, v3, :cond_9

    .line 295
    int-to-float v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 296
    .local v24, "overscrollRangePct":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c00000    # 96.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v23, v0

    .line 299
    .local v23, "overscrollRange":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v10, v10, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, v10, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v11, v11, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v10, v11}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v10

    const/4 v11, 0x0

    add-int/lit8 v12, v23, 0x20

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->invalidate()V

    .line 314
    .end local v23    # "overscrollRange":I
    .end local v24    # "overscrollRangePct":F
    :cond_8
    :goto_4
    sget v2, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 309
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    goto :goto_4

    .line 321
    .end local v6    # "velocity":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 322
    .local v27, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    .line 323
    .local v26, "pointerId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_3

    .line 325
    if-nez v27, :cond_a

    const/16 v21, 0x1

    .line 326
    .local v21, "newPointerIndex":I
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 327
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 328
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 325
    .end local v21    # "newPointerIndex":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    .line 335
    .end local v26    # "pointerId":I
    .end local v27    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 339
    :cond_b
    sget v2, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 97
    :cond_0
    return-void
.end method
