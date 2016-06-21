.class public Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# instance fields
.field private mAnimateToQuiescent:Landroid/animation/Animator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mDrawingAlpha:F

.field private mQuiescentAlpha:F

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 58
    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 59
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 61
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 63
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 85
    sget-object v1, Lcom/android/systemui_ex/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    .line 90
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 93
    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 99
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/KeyButtonRipple;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method private animateToQuiescent()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 155
    const-string v0, "drawingAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    return v0
.end method

.method public getQuiescentAlpha()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 106
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return v5

    .line 178
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 179
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 180
    iget v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_1

    .line 181
    iget-wide v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 186
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 193
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 194
    .local v3, "y":I
    iget v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    .line 200
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 201
    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_3

    .line 202
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 204
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    .line 210
    .local v1, "doIt":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 211
    iget v6, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_6

    .line 212
    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 214
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 215
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 225
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 217
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    .line 221
    :cond_6
    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_2

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 121
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 125
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 127
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 137
    :goto_0
    return v0

    .line 131
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v1, :cond_1

    .line 132
    const/16 v1, 0x80

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 133
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 134
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .param p1, "soundConstant"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 236
    return-void
.end method

.method public sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 240
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 243
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 244
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 248
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 250
    return-void

    .line 243
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 167
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setImageAlpha(I)V

    .line 168
    iput p1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 169
    return-void
.end method

.method public setQuiescentAlpha(FZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 142
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 143
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 146
    if-eqz p2, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->animateToQuiescent()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 150
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    goto :goto_0
.end method
