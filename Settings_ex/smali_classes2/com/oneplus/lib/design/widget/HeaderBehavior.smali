.class abstract Lcom/oneplus/lib/design/widget/HeaderBehavior;
.super Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>()V

    .line 45
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 52
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method final fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 9
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    iput-object v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v2

    .line 243
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    .line 241
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;-><init>(Lcom/oneplus/lib/design/widget/HeaderBehavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 253
    return v1
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 58
    iget v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v6, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 62
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v6, :cond_1

    .line 66
    return v10

    .line 69
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 114
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    :cond_3
    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    return v6

    .line 71
    :pswitch_0
    iput-boolean v7, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 73
    .local v3, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 74
    .local v4, "y":I
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, p2, v3, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    iput v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 76
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 77
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 83
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 84
    .local v1, "activePointerId":I
    if-eq v1, v8, :cond_2

    .line 88
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 89
    .local v2, "pointerIndex":I
    if-eq v2, v8, :cond_2

    .line 93
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v4, v6

    .line 94
    .restart local v4    # "y":I
    iget v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 95
    .local v5, "yDiff":I
    iget v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v5, v6, :cond_2

    .line 96
    iput-boolean v10, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 97
    iput v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_0

    .line 104
    .end local v1    # "activePointerId":I
    .end local v2    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :pswitch_2
    iput-boolean v7, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 105
    iput v8, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 106
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 108
    iput-object v9, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 127
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 129
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v12, v1

    .line 130
    .local v12, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v13, v1

    .line 132
    .local v13, "y":I
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12, v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iput v13, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 134
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 135
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 137
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 143
    .end local v12    # "x":I
    .end local v13    # "y":I
    :pswitch_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 144
    .local v11, "activePointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    .line 145
    const/4 v1, 0x0

    return v1

    .line 148
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v13, v1

    .line 149
    .restart local v13    # "y":I
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v4, v1, v13

    .line 151
    .local v4, "dy":I
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v1, v2, :cond_5

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 153
    if-lez v4, :cond_6

    .line 154
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    sub-int/2addr v4, v1

    .line 160
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 161
    iput v13, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 163
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    .line 156
    :cond_6
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    add-int/2addr v4, v1

    goto :goto_1

    .line 169
    .end local v4    # "dy":I
    .end local v11    # "activePointerIndex":I
    .end local v13    # "y":I
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 170
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 172
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 173
    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 172
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v10

    .line 174
    .local v10, "yvel":F
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v1

    neg-int v8, v1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 178
    .end local v10    # "yvel":F
    :cond_7
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 180
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method final scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/oneplus/lib/design/widget/HeaderBehavior;, "Lcom/oneplus/lib/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    .line 203
    .local v1, "curOffset":I
    const/4 v0, 0x0

    .line 205
    .local v0, "consumed":I
    if-eqz p4, :cond_0

    if-lt v1, p4, :cond_0

    if-gt v1, p5, :cond_0

    .line 208
    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    .line 210
    if-eq v1, p3, :cond_0

    .line 211
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 213
    sub-int v0, v1, p3

    .line 217
    :cond_0
    return v0
.end method
