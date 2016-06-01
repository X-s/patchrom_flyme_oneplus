.class public abstract Lcom/android/widget/oneplus/AbsSeekBar;
.super Lcom/android/widget/oneplus/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 44
    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 45
    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 46
    iput-boolean v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsUserSeekable:Z

    .line 67
    iput v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 44
    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 45
    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 46
    iput-boolean v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsUserSeekable:Z

    .line 67
    iput v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/widget/oneplus/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 44
    iput-object v8, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 45
    iput-object v8, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 46
    iput-boolean v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    .line 47
    iput-boolean v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    .line 61
    iput-boolean v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsUserSeekable:Z

    .line 67
    iput v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    .line 94
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 100
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 106
    iput-boolean v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    .line 109
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 111
    iput-boolean v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 118
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbOffset(I)V

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mSplitTrack:Z

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mDisabledAlpha:F

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->applyThumbTint()V

    .line 132
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mScaledTouchSlop:I

    .line 133
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 283
    :cond_2
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 717
    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v0

    .line 451
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 664
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 667
    :cond_0
    return-void
.end method

.method private setThumbPos(F)V
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 456
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 461
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    .line 464
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 481
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 482
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 483
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v15

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 488
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 491
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 493
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 494
    .local v16, "top":I
    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    .line 500
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v6, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    sub-int v8, v4, v14

    .line 502
    .local v8, "left":I
    :goto_1
    add-int v12, v8, v15

    .line 504
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 505
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 507
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 508
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    .line 509
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 514
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    return-void

    .line 496
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v16, p4

    .line 497
    .restart local v16    # "top":I
    add-int v6, p4, v13

    .restart local v6    # "bottom":I
    goto :goto_0

    :cond_2
    move v8, v14

    .line 500
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getWidth()I

    move-result v4

    .line 671
    .local v4, "width":I
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 672
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 674
    .local v5, "x":I
    const/4 v2, 0x0

    .line 675
    .local v2, "progress":F
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_2

    .line 676
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 677
    const/4 v3, 0x0

    .line 695
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v1

    .line 696
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 698
    int-to-float v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/widget/oneplus/AbsSeekBar;->setHotspot(FF)V

    .line 699
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v6

    float-to-int v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/widget/oneplus/AbsSeekBar;->updateTouchProgress(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/widget/oneplus/AbsSeekBar;->setProgress(IZ)V

    .line 700
    return-void

    .line 678
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 679
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 681
    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 683
    .restart local v3    # "scale":F
    iget v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 686
    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 687
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .line 688
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 689
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 691
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 692
    .restart local v3    # "scale":F
    iget v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 420
    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 424
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMaxHeight:I

    iget v8, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    sub-int v8, p2, v8

    iget v9, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 426
    .local v4, "trackHeight":I
    if-nez v0, :cond_2

    move v1, v6

    .line 431
    .local v1, "thumbHeight":I
    :goto_0
    if-le v1, v4, :cond_3

    .line 432
    sub-int v7, v1, v4

    div-int/lit8 v5, v7, 0x2

    .line 433
    .local v5, "trackOffset":I
    const/4 v2, 0x0

    .line 439
    .local v2, "thumbOffset":I
    :goto_1
    if-eqz v3, :cond_0

    .line 440
    iget v7, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p1, v0, v6, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 447
    :cond_1
    return-void

    .line 426
    .end local v1    # "thumbHeight":I
    .end local v2    # "thumbOffset":I
    .end local v5    # "trackOffset":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 435
    .restart local v1    # "thumbHeight":I
    :cond_3
    const/4 v5, 0x0

    .line 436
    .restart local v5    # "trackOffset":I
    sub-int v7, v4, v1

    div-int/lit8 v2, v7, 0x2

    .restart local v2    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method animateSetProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x1

    .line 780
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getAnimationPosition()F

    move-result v0

    .line 783
    .local v0, "curProgress":F
    :goto_0
    if-gez p1, :cond_2

    .line 784
    const/4 p1, 0x0

    .line 788
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->setProgressValueOnly(I)V

    .line 790
    const-string v1, "animationPosition"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    int-to-float v3, p1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 792
    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 793
    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 794
    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 795
    return-void

    .line 780
    .end local v0    # "curProgress":F
    :cond_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 785
    .restart local v0    # "curProgress":F
    :cond_2
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result p1

    goto :goto_1
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 564
    iget v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 538
    iget-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 539
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 541
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 542
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 543
    iget v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 544
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 545
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 548
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 549
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 550
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 554
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->drawableHotspotChanged(FF)V

    .line 394
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 397
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/widget/oneplus/ProgressBar;->drawableStateChanged()V

    .line 378
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 385
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 388
    :cond_1
    return-void

    .line 380
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method isAnimationRunning()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/android/widget/oneplus/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 369
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 372
    :cond_0
    return-void
.end method

.method onAnimatePosition(FZ)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbPos(F)V

    .line 409
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 799
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 800
    const-class v0, Lcom/android/widget/oneplus/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 801
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 805
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 806
    const-class v1, Lcom/android/widget/oneplus/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v0

    .line 810
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 811
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 814
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 817
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 742
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v0

    .line 744
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 761
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 746
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 748
    iget v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->animateSetProgress(I)V

    .line 749
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 753
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 755
    iget v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->animateSetProgress(I)V

    .line 756
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 573
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 575
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 576
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 577
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 578
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 579
    iget v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 581
    iget v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 583
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 585
    :cond_0
    iget v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 586
    iget v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 588
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/widget/oneplus/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/android/widget/oneplus/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/widget/oneplus/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 575
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 573
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onProgressRefresh(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->onProgressRefresh(FZ)V

    .line 402
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbPos(F)V

    .line 405
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->onResolveDrawables(I)V

    .line 524
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 527
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 852
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 854
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 855
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/widget/oneplus/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 861
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    .line 863
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/widget/oneplus/ProgressBar;->onSizeChanged(IIII)V

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/widget/oneplus/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 416
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsDragging:Z

    .line 724
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsDragging:Z

    .line 732
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    iget-boolean v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 659
    :cond_1
    :goto_0
    return v1

    .line 598
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 600
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/AbsSeekBar;->setPressed(Z)V

    .line 604
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 605
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 608
    :cond_4
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStartTrackingTouch()V

    .line 609
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 610
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 615
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 616
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 618
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 619
    .local v0, "x":F
    iget v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 620
    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/AbsSeekBar;->setPressed(Z)V

    .line 621
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 622
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 625
    :cond_6
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStartTrackingTouch()V

    .line 626
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 627
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 633
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 634
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStopTrackingTouch()V

    .line 636
    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setPressed(Z)V

    .line 648
    :goto_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 641
    :cond_7
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStartTrackingTouch()V

    .line 642
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 652
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 653
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onStopTrackingTouch()V

    .line 654
    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setPressed(Z)V

    .line 656
    :cond_8
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 821
    invoke-super {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 847
    :goto_0
    return v2

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 825
    goto :goto_0

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getProgress()I

    move-result v1

    .line 828
    .local v1, "progress":I
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 829
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 847
    goto :goto_0

    .line 831
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 832
    goto :goto_0

    .line 834
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setProgress(IZ)V

    .line 835
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 839
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 840
    goto :goto_0

    .line 842
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/widget/oneplus/AbsSeekBar;->setProgress(IZ)V

    .line 843
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 829
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 332
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    .line 333
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->setMax(I)V

    .line 351
    iget v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_1
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 776
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->setProgress(IZ)V

    .line 777
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mSplitTrack:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    .line 315
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 151
    iget-object v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 152
    const/4 v0, 0x1

    .line 157
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    .line 169
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->requestLayout()V

    .line 177
    :cond_2
    iput-object p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->applyThumbTint()V

    .line 180
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    .line 182
    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/widget/oneplus/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 184
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 188
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 191
    .end local v1    # "state":[I
    :cond_3
    return-void

    .line 154
    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbOffset:I

    .line 301
    invoke-virtual {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->invalidate()V

    .line 302
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTint:Z

    .line 223
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->applyThumbTint()V

    .line 224
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mHasThumbTintMode:Z

    .line 255
    invoke-direct {p0}, Lcom/android/widget/oneplus/AbsSeekBar;->applyThumbTint()V

    .line 256
    return-void
.end method

.method protected updateTouchProgress(II)I
    .locals 0
    .param p1, "lastProgress"    # I
    .param p2, "newProgress"    # I

    .prologue
    .line 706
    return p2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/widget/oneplus/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
