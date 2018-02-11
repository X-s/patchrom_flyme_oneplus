.class public final Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;
.super Ljava/lang/Object;
.source "ConsecutiveTapsGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;
    }
.end annotation


# instance fields
.field private final mConsecutiveTapTouchSlopSquare:I

.field private mConsecutiveTapsCounter:I

.field private final mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

.field private mPreviousTapEvent:Landroid/view/MotionEvent;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;Landroid/view/View;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    .line 53
    iput-object p1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

    .line 54
    iput-object p2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    .line 56
    .local v0, "doubleTapSlop":I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTouchSlopSquare:I

    .line 52
    return-void
.end method

.method private isConsecutiveTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "currentTapEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v5, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    if-nez v5, :cond_0

    .line 107
    return v4

    .line 110
    :cond_0
    iget-object v5, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v0, v5

    .line 111
    .local v0, "deltaX":D
    iget-object v5, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v2, v5

    .line 112
    .local v2, "deltaY":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    iget v5, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTouchSlopSquare:I

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v1, "viewRect":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 69
    .local v0, "leftTop":[I
    iget-object v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 71
    aget v2, v0, v8

    .line 72
    aget v3, v0, v7

    .line 73
    aget v4, v0, v8

    iget-object v5, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 74
    aget v5, v0, v7

    iget-object v6, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 70
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->isConsecutiveTap(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

    iget v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    invoke-interface {v2, v3}, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;->onConsecutiveTaps(I)V

    .line 87
    :goto_1
    iget-object v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    .line 65
    .end local v0    # "leftTop":[I
    .end local v1    # "viewRect":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 79
    .restart local v0    # "leftTop":[I
    .restart local v1    # "viewRect":Landroid/graphics/Rect;
    :cond_2
    iput v7, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    goto :goto_0

    .line 84
    :cond_3
    iput v8, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    goto :goto_1
.end method

.method public resetCounter()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    .line 97
    return-void
.end method
