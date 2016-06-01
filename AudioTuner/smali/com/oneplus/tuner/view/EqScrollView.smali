.class public Lcom/oneplus/tuner/view/EqScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "EqScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;
    }
.end annotation


# static fields
.field private static PAGE_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EqScrollView"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

.field private mPreX:F

.field private mScrollWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x8

    sput v0, Lcom/oneplus/tuner/view/EqScrollView;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mPreX:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mPreX:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mPreX:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    .line 24
    return-void
.end method


# virtual methods
.method public acceptTouchEvent()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    .line 91
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 61
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mPreX:F

    .line 62
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;->onScrollMove()V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oneplus/tuner/view/EqScrollView;->mPreX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/tuner/view/EqScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;->onScrollStop()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;->onScrollMove()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    invoke-interface {v0}, Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;->onScrollStop()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public move(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/view/EqScrollView;->scrollBy(II)V

    .line 107
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 97
    sub-int v1, p1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 98
    .local v0, "destance":F
    iget-object v1, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    invoke-interface {v1, v0}, Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;->moveScroll(F)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 41
    mul-int/lit8 v0, p1, 0x14

    sget v1, Lcom/oneplus/tuner/view/EqScrollView;->PAGE_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mScrollWidth:I

    .line 42
    return-void
.end method

.method public preventTouchEvent()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/EqScrollView;->mDispatchTouchEvent:Z

    .line 87
    return-void
.end method

.method public setOnScrollMoveListener(Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/tuner/view/EqScrollView;->mListener:Lcom/oneplus/tuner/view/EqScrollView$OnScrollMoveListener;

    .line 111
    return-void
.end method
