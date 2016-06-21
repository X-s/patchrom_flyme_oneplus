.class public Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastOverscrollAmount:I

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 41
    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 62
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 66
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 92
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v2, :cond_1

    .line 93
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 107
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 97
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-nez v2, :cond_0

    .line 99
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v2, :cond_2

    .line 100
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 101
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public isHandlingTouchEvent()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 86
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastX:F

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastY:F

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;->onOverscrolled(FFI)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;->onScrollChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 75
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 76
    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 3
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
    .line 122
    const/4 v0, 0x0

    add-int v1, p4, p2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    .line 123
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView$Listener;

    .line 45
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 49
    return-void
.end method
