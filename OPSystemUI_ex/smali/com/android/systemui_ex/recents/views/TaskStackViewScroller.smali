.class public Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mFinalAnimatedScroll:F

.field mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui_ex/recents/RecentsConfiguration;
    .param p3, "layoutAlgorithm"    # Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 46
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    .line 47
    iput-object p3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 49
    return-void
.end method


# virtual methods
.method animateBoundScroll()Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 133
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 134
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method animateScroll(FFLjava/lang/Runnable;)V
    .locals 6
    .param p1, "curScroll"    # F
    .param p2, "newScroll"    # F
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 151
    iput p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 152
    const-string v0, "stackScroll"

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p2, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 153
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackScrollDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$2;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 171
    return-void
.end method

.method public boundScroll()Z
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 92
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 93
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 95
    const/4 v2, 0x1

    .line 97
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeScroll()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->scrollRangeToProgress(I)F

    move-result v0

    .line 192
    .local v0, "scroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScrollRaw(F)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    .line 196
    :cond_0
    const/4 v1, 0x1

    .line 198
    .end local v0    # "scroll":F
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getBoundedStackScroll(F)F
    .locals 2
    .param p1, "scroll"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1
    .param p1, "scroll"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStackScroll()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method progressToScrollRange(F)I
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 54
    return-void
.end method

.method scrollRangeToProgress(I)F
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 185
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method setCallbacks(Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .line 59
    return-void
.end method

.method public setStackScroll(F)V
    .locals 2
    .param p1, "s"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 69
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    .line 72
    :cond_0
    return-void
.end method

.method setStackScrollRaw(F)V
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 77
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 85
    .local v0, "prevStackScrollP":F
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 86
    iget v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 176
    return-void
.end method

.method stopScroller()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 211
    :cond_0
    return-void
.end method
