.class public Lcom/oneplus/tuner/widget/VerticalSeekBar;
.super Lcom/android/widget/oneplus/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VerticalSeekBar"


# instance fields
.field private floatwindowPos_y:I

.field protected height:I

.field private mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field private mTouchState:I

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/widget/oneplus/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 47
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 81
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 82
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 83
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 86
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 88
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 90
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 91
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 96
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    add-int v7, v4, v5

    iput v7, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->floatwindowPos_y:I

    .line 98
    return-void

    .line 93
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 94
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    .line 112
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 114
    .local v4, "y":I
    const/4 v3, 0x0

    .line 116
    .local v3, "scale":F
    const/4 v2, 0x0

    .line 118
    .local v2, "progress":F
    if-le v4, v0, :cond_0

    .line 119
    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getMax()I

    move-result v1

    .line 128
    .local v1, "max":I
    int-to-float v5, v1

    mul-float v2, v3, v5

    .line 130
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setProgress(I)V

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 134
    return-void

    .line 120
    .end local v1    # "max":I
    :cond_0
    if-lez v4, :cond_1

    .line 121
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v4

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float v3, v5, v6

    goto :goto_0

    .line 123
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public getFloatwPosY()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->floatwindowPos_y:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 198
    const-class v0, Lcom/android/widget/oneplus/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 205
    const-class v1, Lcom/android/widget/oneplus/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getProgress()I

    move-result v0

    .line 209
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 210
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 216
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->height:I

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->width:I

    .line 140
    iget v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->width:I

    iget v1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 68
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->invalidate()V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/oneplus/tuner/widget/VerticalSeekBar;IZ)V

    .line 76
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 151
    invoke-super {p0, p2, p1, p3, p4}, Lcom/android/widget/oneplus/AbsSeekBar;->onSizeChanged(IIII)V

    .line 152
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/oneplus/tuner/widget/VerticalSeekBar;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/oneplus/tuner/widget/VerticalSeekBar;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 186
    goto :goto_0

    .line 160
    :pswitch_0
    iput v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 161
    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setPressed(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 163
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 167
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 168
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 169
    invoke-direct {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 173
    :pswitch_2
    iput v1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 174
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 176
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setPressed(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 181
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 183
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/widget/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 224
    iget v0, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    if-ne v1, v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iput v1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mTouchState:I

    .line 228
    invoke-super {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->refreshDrawableState()V

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/tuner/widget/VerticalSeekBar$OnSeekBarChangeListener;

    .line 51
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/oneplus/tuner/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method
