.class public Lcom/android/systemui_ex/recents/views/LockAnimationView;
.super Landroid/widget/ImageView;
.source "LockAnimationView.java"


# instance fields
.field private currentCount:F

.field private l:I

.field mAllowInvalidate:Z

.field mAllowRelayout:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mLastPosition:F

.field private mLockedBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mUnlockedBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I

.field private maxCount:F

.field private mlocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowRelayout:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowInvalidate:Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mContext:Landroid/content/Context;

    .line 75
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLastPosition:F

    .line 76
    iput v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    .line 77
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    .line 78
    iput v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 121
    .local v8, "iconDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 122
    .local v7, "iconBitmapdrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x0

    .line 123
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    instance-of v0, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v7, v8

    .line 124
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 125
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 127
    :cond_0
    if-eqz v6, :cond_1

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mlocked:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 129
    new-instance v10, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    int-to-float v4, v4

    invoke-direct {v10, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .local v10, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v0, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    .end local v10    # "rect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    .line 142
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v4

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mWidth:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v12, v2

    .line 146
    .local v12, "scale":F
    :goto_1
    const v0, 0x3e666666    # 0.225f

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 147
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mWidth:I

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mHeight:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mWidth:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mHeight:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .local v1, "rectArc":Landroid/graphics/RectF;
    const/high16 v2, -0x3d100000    # -120.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    new-instance v11, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    int-to-float v2, v2

    sub-float/2addr v2, v12

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    iget v4, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    int-to-float v4, v4

    add-float/2addr v4, v12

    invoke-direct {v11, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .local v11, "rectLock":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLockedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 155
    :goto_2
    return-void

    .line 132
    .end local v1    # "rectArc":Landroid/graphics/RectF;
    .end local v11    # "rectLock":Landroid/graphics/RectF;
    .end local v12    # "scale":F
    :cond_2
    new-instance v10, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    iget v4, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    iget v5, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v10, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .restart local v10    # "rect":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .local v9, "m":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v0, v10, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 144
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v10    # "rect":Landroid/graphics/RectF;
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "scale":F
    goto/16 :goto_1

    .line 153
    .restart local v1    # "rectArc":Landroid/graphics/RectF;
    .restart local v11    # "rectLock":Landroid/graphics/RectF;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mUnlockedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mWidth:I

    .line 160
    iput p2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mHeight:I

    .line 161
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterX:I

    .line 162
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mCenterY:I

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 164
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 91
    :cond_0
    return-void
.end method

.method public setCurrentCount(F)V
    .locals 5
    .param p1, "current"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 171
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 172
    iput v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    .line 173
    iput v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLastPosition:F

    .line 177
    :goto_0
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLastPosition:F

    iget v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mlocked:Z

    if-eqz v0, :cond_2

    .line 179
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    iget v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    .line 183
    :goto_1
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    .line 184
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    .line 189
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->invalidate()V

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLastPosition:F

    .line 192
    return-void

    .line 175
    :cond_1
    iput p1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->currentCount:F

    iget v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    goto :goto_1

    .line 187
    :cond_3
    const/high16 v0, 0x42400000    # 48.0f

    iget v1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mPercent:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float v1, v4, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->l:I

    goto :goto_2
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v2

    .line 104
    .local v0, "isNullBitmapDrawable":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowRelayout:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowInvalidate:Z

    .line 108
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowRelayout:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mAllowInvalidate:Z

    .line 111
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    :cond_2
    return-void

    .end local v0    # "isNullBitmapDrawable":Z
    :cond_3
    move v0, v3

    .line 102
    goto :goto_0
.end method

.method public setIsPrimaryColorLightOn(Z)V
    .locals 2
    .param p1, "isPrimaryColorLightOn"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mUnlockedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mUnlockedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLockedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020471

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mUnlockedBitmap:Landroid/graphics/Bitmap;

    .line 205
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020167

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLockedBitmap:Landroid/graphics/Bitmap;

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020470

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mUnlockedBitmap:Landroid/graphics/Bitmap;

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020166

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mLockedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setLockState(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->mlocked:Z

    .line 196
    return-void
.end method

.method public setMaxCount(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/android/systemui_ex/recents/views/LockAnimationView;->maxCount:F

    .line 168
    return-void
.end method
