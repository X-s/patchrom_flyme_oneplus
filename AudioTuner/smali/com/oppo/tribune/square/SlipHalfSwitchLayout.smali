.class public Lcom/oppo/tribune/square/SlipHalfSwitchLayout;
.super Lcom/oppo/tribune/ui/PageScrollLayout;
.source "SlipHalfSwitchLayout.java"


# instance fields
.field private mWidthItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/PageScrollLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/ui/PageScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    .line 26
    return-void
.end method


# virtual methods
.method public SetWidthItem(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    .line 32
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getChildCount()I

    move-result v2

    .line 62
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 63
    invoke-virtual {p0, v3}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 65
    const/4 v4, 0x0

    iget v5, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 67
    iget v4, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    add-int/2addr v1, v4

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/oppo/tribune/ui/PageScrollLayout;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getChildCount()I

    move-result v6

    .line 44
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 45
    invoke-virtual {p0, v7}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 50
    iget v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mCurrentScreen:I

    iget v2, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->scrollTo(II)V

    .line 51
    iget-object v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mCurrentScreen:I

    iget v3, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    mul-int/2addr v3, v2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    iput-boolean v1, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mFirstLayout:Z

    .line 55
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Landroid/widget/Adapter;Z)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "isInfoSame"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/oppo/tribune/ui/PageScrollLayout;->setAdapter(Landroid/widget/Adapter;Z)V

    .line 37
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->measure(II)V

    .line 38
    return-void
.end method

.method protected snapToScreen(I)V
    .locals 9
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 85
    iput p1, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mNextScreen:I

    .line 87
    iget v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 88
    .local v8, "screenDelta":I
    const/4 v6, 0x1

    .line 89
    .local v6, "durationOffset":I
    if-nez v8, :cond_0

    .line 90
    const/16 v6, 0x14

    .line 92
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mScrollingSpeed:I

    add-int v5, v0, v6

    .line 93
    .local v5, "duration":I
    iget v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mWidthItem:I

    mul-int v7, p1, v0

    .line 94
    .local v7, "newX":I
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getScrollX()I

    move-result v0

    sub-int v3, v7, v0

    .line 96
    .local v3, "delta":I
    iget-object v0, p0, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 98
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->invalidate()V

    .line 99
    return-void
.end method
