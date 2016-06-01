.class public Lcom/oneplus/tuner/widget/FlipperView;
.super Landroid/view/ViewGroup;
.source "FlipperView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;
    }
.end annotation


# static fields
.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBgView:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDispatchTouchEvent:Z

.field private mDistance:I

.field private mIsPullOut:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "FlipperView"

    iput-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 50
    iput v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    .line 67
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    .line 68
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchSlop:I

    .line 70
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/FlipperView;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method


# virtual methods
.method public acceptTouchEvent()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    .line 357
    return-void
.end method

.method public closeDrawer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-eqz v0, :cond_2

    .line 181
    iput-boolean v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 182
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onClosed()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_1
    const-string v0, "FlipperView"

    const-string v1, "closeDrawer closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    return-void
.end method

.method public closeDrawerImmediate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-eqz v0, :cond_2

    .line 195
    iput-boolean v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 196
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 197
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 198
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onClosed()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_1
    const-string v0, "FlipperView"

    const-string v1, "closeDrawerImmediate closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/widget/FlipperView;->scrollTo(II)V

    .line 228
    const-string v0, "FlipperView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScroller.getCurrX()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    div-int/lit8 v4, v4, 0x14

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/widget/FlipperView;->postInvalidateDelayed(J)V

    .line 236
    :cond_0
    return-void
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    return v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    return-object v0
.end method

.method public hideDrawer()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 129
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onOpened()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_1
    const-string v0, "FlipperView"

    const-string v1, "hideDrawer opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 146
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 137
    iput-boolean v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 138
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onClosed()V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_4
    const-string v0, "FlipperView"

    const-string v1, "hideDrawer closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPullOut()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 344
    const-string v0, "FlipperView"

    const-string v1, "contentView onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->closeDrawer()V

    .line 349
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    if-nez v5, :cond_1

    move v7, v6

    .line 283
    :cond_0
    :goto_0
    return v7

    .line 250
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    if-nez v5, :cond_0

    .line 254
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 255
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 256
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    .line 283
    :cond_3
    :goto_1
    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    if-nez v5, :cond_0

    move v7, v6

    goto :goto_0

    .line 258
    :pswitch_0
    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionX:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 259
    .local v2, "xDiff":I
    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionY:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 260
    .local v4, "yDiff":I
    iget-boolean v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-nez v5, :cond_4

    .line 261
    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchSlop:I

    if-le v2, v5, :cond_3

    if-le v2, v4, :cond_3

    .line 262
    iput v7, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    goto :goto_1

    .line 265
    :cond_4
    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchSlop:I

    if-le v2, v5, :cond_3

    .line 266
    iput v7, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    goto :goto_1

    .line 272
    .end local v2    # "xDiff":I
    .end local v4    # "yDiff":I
    :pswitch_1
    iput v1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionX:F

    .line 273
    iput v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionY:F

    .line 274
    iget-object v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    iput v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2

    .line 280
    :pswitch_2
    iput v6, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    .line 83
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mShadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/FlipperView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getHeight()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 96
    return-void
.end method

.method public onSliding(F)V
    .locals 6
    .param p1, "distanceX"    # F

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    float-to-int v3, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 244
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 293
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 294
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 295
    .local v3, "y":F
    iget-boolean v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    iget v5, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 325
    :goto_0
    return v4

    .line 298
    :cond_0
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 325
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 300
    :pswitch_0
    iput v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionX:F

    .line 301
    iput v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionY:F

    goto :goto_1

    .line 304
    :pswitch_1
    iget v4, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionX:F

    sub-float/2addr v4, v2

    float-to-int v1, v4

    .line 305
    .local v1, "deltaX":I
    iput v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionX:F

    .line 306
    iput v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mLastMotionY:F

    .line 309
    int-to-float v4, v1

    invoke-virtual {p0, v4}, Lcom/oneplus/tuner/widget/FlipperView;->onSliding(F)V

    goto :goto_1

    .line 313
    .end local v1    # "deltaX":I
    :pswitch_2
    iput v4, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    .line 314
    iget-boolean v4, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-nez v4, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->showDrawer()V

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->hideDrawer()V

    goto :goto_1

    .line 322
    :pswitch_3
    iput v4, p0, Lcom/oneplus/tuner/widget/FlipperView;->mTouchState:I

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-nez v0, :cond_2

    .line 150
    iput-boolean v6, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 151
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 154
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onOpened()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_1
    iput-boolean v6, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    .line 160
    const-string v0, "FlipperView"

    const-string v1, "openDrawer opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    return-void
.end method

.method public openDrawerImmediate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-nez v0, :cond_2

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 167
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 170
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onOpened()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_1
    const-string v0, "FlipperView"

    const-string v1, "openDrawerImmediate opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    return-void
.end method

.method public preventTouchEvent()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    .line 353
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/tuner/widget/FlipperView;->addView(Landroid/view/View;I)V

    .line 217
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mBgView:Landroid/view/View;

    .line 218
    return-void
.end method

.method public setOnFlipListener(Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    .line 330
    return-void
.end method

.method public showDrawer()V
    .locals 7

    .prologue
    const/16 v5, 0x12c

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x6

    if-le v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 102
    iput-boolean v2, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onClosed()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_1
    const-string v0, "FlipperView"

    const-string v1, "showDrawer closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->invalidate()V

    .line 121
    iput-boolean v6, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDispatchTouchEvent:Z

    .line 122
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/oneplus/tuner/widget/FlipperView;->mDistance:I

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 112
    iput-boolean v6, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    .line 113
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mListener:Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;->onOpened()V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_4
    const-string v0, "FlipperView"

    const-string v1, "showDrawer opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public slidingDrawer()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/oneplus/tuner/widget/FlipperView;->mIsPullOut:Z

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->openDrawer()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/FlipperView;->closeDrawer()V

    goto :goto_0
.end method
