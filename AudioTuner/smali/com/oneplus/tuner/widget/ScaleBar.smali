.class public Lcom/oneplus/tuner/widget/ScaleBar;
.super Landroid/view/View;
.source "ScaleBar.java"


# instance fields
.field private mHeight:I

.field private mOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/ScaleBar;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/ScaleBar;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/widget/ScaleBar;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/16 v0, 0x18

    iput v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    const v1, 0x77969a9e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/ScaleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    .line 40
    return-void
.end method


# virtual methods
.method public getScale()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 53
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mWidth:I

    iget v2, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v10, v0, v2

    .line 54
    .local v10, "mActualWidth":I
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mHeight:I

    iget v2, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v9, v0, v2

    .line 56
    .local v9, "mActualHeight":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    if-gt v8, v0, :cond_3

    .line 57
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mWidth:I

    iget v2, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mHeight:I

    if-ge v0, v2, :cond_2

    .line 58
    mul-int v0, v9, v8

    iget v2, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    div-int v11, v0, v2

    .line 59
    .local v11, "startH":I
    if-eqz v8, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    div-int/lit8 v0, v0, 0x2

    if-eq v8, v0, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    div-int/lit8 v0, v0, 0x4

    if-eq v8, v0, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    if-eq v8, v0, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    if-ne v8, v0, :cond_1

    .line 61
    :cond_0
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v11

    int-to-float v2, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v11

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    .end local v11    # "startH":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 64
    .restart local v11    # "startH":I
    :cond_1
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v11

    int-to-float v2, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v11

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 67
    .end local v11    # "startH":I
    :cond_2
    mul-int v0, v10, v8

    iget v2, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    div-int v12, v0, v2

    .line 68
    .local v12, "startW":I
    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v12

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mOffset:I

    add-int/2addr v0, v12

    int-to-float v5, v0

    iget v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x12

    int-to-float v6, v0

    iget-object v7, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 72
    .end local v12    # "startW":I
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/ScaleBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mWidth:I

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/tuner/widget/ScaleBar;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mHeight:I

    .line 82
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/oneplus/tuner/widget/ScaleBar;->mScale:I

    .line 44
    return-void
.end method
