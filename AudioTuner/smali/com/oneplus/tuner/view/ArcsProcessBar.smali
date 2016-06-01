.class public Lcom/oneplus/tuner/view/ArcsProcessBar;
.super Landroid/view/View;
.source "ArcsProcessBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;
    }
.end annotation


# static fields
.field private static final mSlideRange:I = 0x100

.field private static final mStartDegree:I = 0x8e

.field private static final mTouchRange:I = 0x2d


# instance fields
.field backgroudBitmap:Landroid/graphics/Bitmap;

.field backgroudBitmap_focused:Landroid/graphics/Bitmap;

.field mDegree:I

.field private mEffParam:I

.field private mHeight:I

.field private mInterPaint:Landroid/graphics/Paint;

.field private mIsTouch:Z

.field mIsinvalidateBoolean:Ljava/lang/Boolean;

.field private mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

.field private mMaxValue:F

.field private mMinValue:F

.field private mPointRadius:F

.field mPointX:F

.field mPointY:F

.field mProcessBitmap:Landroid/graphics/Bitmap;

.field private mSeekHeight:I

.field private mSeekWidth:I

.field mTouchSeekBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I

.field minitSeekBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsinvalidateBoolean:Ljava/lang/Boolean;

    .line 31
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap_focused:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mProcessBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->minitSeekBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-boolean v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsTouch:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsinvalidateBoolean:Ljava/lang/Boolean;

    .line 31
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap_focused:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mProcessBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->minitSeekBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-boolean v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsTouch:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private getSectorClip(Landroid/graphics/Canvas;FFFFF)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "center_X"    # F
    .param p3, "center_Y"    # F
    .param p4, "r"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .prologue
    .line 298
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 299
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    float-to-double v4, p2

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    const/high16 v3, 0x433e0000    # 190.0f

    cmpl-float v3, p6, v3

    if-lez v3, :cond_0

    .line 306
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    :cond_0
    const/high16 v3, 0x438c0000    # 280.0f

    cmpl-float v3, p6, v3

    if-lez v3, :cond_1

    .line 309
    iget v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    :cond_1
    const/high16 v3, 0x43b90000    # 370.0f

    cmpl-float v3, p6, v3

    if-lez v3, :cond_2

    .line 312
    iget v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 314
    :cond_2
    float-to-double v4, p2

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p3

    move/from16 v0, p4

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 318
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 320
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 322
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 323
    return-void
.end method


# virtual methods
.method public calculateDegree(F)I
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 69
    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMaxValue:F

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMinValue:F

    sub-float v0, v1, v2

    .line 70
    .local v0, "range":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMinValue:F

    sub-float v1, p1, v1

    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 73
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateParamValue(I)F
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 65
    int-to-float v0, p1

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMaxValue:F

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMinValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMinValue:F

    add-float/2addr v0, v1

    return v0
.end method

.method public controlParamenter(I)V
    .locals 0
    .param p1, "effParam"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mEffParam:I

    .line 152
    return-void
.end method

.method public controlRange(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 60
    int-to-float v0, p1

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMinValue:F

    .line 61
    int-to-float v0, p2

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mMaxValue:F

    .line 62
    return-void
.end method

.method public getParamenter()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mEffParam:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0200b3

    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap_focused:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mProcessBitmap:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->minitSeekBitmap:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    .line 107
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    .line 109
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekHeight:I

    .line 110
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekWidth:I

    .line 111
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 132
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mInterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/high16 v5, 0x430e0000    # 142.0f

    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    add-int/lit16 v0, v0, 0x8e

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/tuner/view/ArcsProcessBar;->getSectorClip(Landroid/graphics/Canvas;FFFFF)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mProcessBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mInterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    iget-boolean v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsTouch:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->backgroudBitmap_focused:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mInterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mTouchSeekBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    iget v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mInterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->minitSeekBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    iget v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mSeekHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mInterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 115
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 118
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lcom/oppo/tribune/util/UIUtils;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    .line 119
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v2, v1

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    add-int/lit16 v1, v1, 0x8e

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 123
    iget v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v2, v1

    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    add-int/lit16 v1, v1, 0x8e

    int-to-double v4, v1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 127
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_0

    .line 162
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c0700

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 164
    const/4 v13, 0x0

    .line 279
    :goto_0
    return v13

    .line 167
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 185
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 186
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 188
    .local v12, "y":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v2, v13, 0x2

    .line 189
    .local v2, "centerX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v3, v13, 0x2

    .line 190
    .local v3, "centerY":I
    int-to-float v13, v2

    sub-float v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 191
    .local v6, "diffX":F
    int-to-float v13, v3

    sub-float v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 193
    .local v7, "diffY":F
    float-to-double v14, v7

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    float-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 194
    .local v10, "theta":F
    const/high16 v13, 0x43340000    # 180.0f

    mul-float/2addr v13, v10

    float-to-double v14, v13

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-int v13, v14

    int-to-float v4, v13

    .line 196
    .local v4, "degree":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 197
    .local v5, "degreeTemp":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 198
    .local v8, "pointXTemp":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 200
    .local v9, "pointYTemp":F
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsinvalidateBoolean:Ljava/lang/Boolean;

    .line 202
    int-to-float v13, v2

    cmpg-float v13, v11, v13

    if-gez v13, :cond_2

    int-to-float v13, v3

    cmpg-float v13, v12, v13

    if-gez v13, :cond_2

    .line 203
    const/high16 v13, 0x42100000    # 36.0f

    add-float/2addr v13, v4

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 205
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 209
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 215
    :cond_2
    int-to-float v13, v2

    cmpg-float v13, v11, v13

    if-gez v13, :cond_4

    int-to-float v13, v3

    cmpl-float v13, v12, v13

    if-lez v13, :cond_4

    .line 216
    const/high16 v13, 0x42100000    # 36.0f

    sub-float/2addr v13, v4

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 218
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    if-gez v13, :cond_3

    .line 219
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 220
    const/high16 v4, 0x42100000    # 36.0f

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 228
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 234
    :cond_4
    int-to-float v13, v2

    cmpl-float v13, v11, v13

    if-lez v13, :cond_5

    int-to-float v13, v3

    cmpg-float v13, v12, v13

    if-gez v13, :cond_5

    .line 235
    const/high16 v13, 0x42b40000    # 90.0f

    sub-float/2addr v13, v4

    const/high16 v14, 0x42fc0000    # 126.0f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 237
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 241
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 247
    :cond_5
    int-to-float v13, v2

    cmpl-float v13, v11, v13

    if-lez v13, :cond_7

    int-to-float v13, v3

    cmpl-float v13, v12, v13

    if-lez v13, :cond_7

    .line 248
    const/high16 v13, 0x43580000    # 216.0f

    add-float/2addr v13, v4

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 250
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    const/16 v14, 0x100

    if-le v13, v14, :cond_6

    .line 251
    const/16 v13, 0x100

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 252
    const/high16 v4, 0x42100000    # 36.0f

    .line 255
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 259
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 266
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    sub-int v13, v5, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/16 v14, 0x2d

    if-le v13, v14, :cond_a

    .line 267
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 268
    move-object/from16 v0, p0

    iput v8, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 269
    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 277
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->invalidate()V

    .line 279
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 169
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v4    # "degree":F
    .end local v5    # "degreeTemp":I
    .end local v6    # "diffX":F
    .end local v7    # "diffY":F
    .end local v8    # "pointXTemp":F
    .end local v9    # "pointYTemp":F
    .end local v10    # "theta":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    if-eqz v13, :cond_9

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    invoke-interface {v13}, Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;->onArcProgressStart()V

    .line 172
    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsTouch:Z

    goto/16 :goto_1

    .line 179
    :pswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mIsTouch:Z

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    if-eqz v13, :cond_1

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    invoke-interface {v13}, Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;->onArcProgressStop()V

    goto/16 :goto_1

    .line 271
    .restart local v2    # "centerX":I
    .restart local v3    # "centerY":I
    .restart local v4    # "degree":F
    .restart local v5    # "degreeTemp":I
    .restart local v6    # "diffX":F
    .restart local v7    # "diffY":F
    .restart local v8    # "pointXTemp":F
    .restart local v9    # "pointYTemp":F
    .restart local v10    # "theta":F
    .restart local v11    # "x":F
    .restart local v12    # "y":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    if-eqz v13, :cond_8

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mEffParam:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/tuner/view/ArcsProcessBar;->calculateParamValue(I)F

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;->onArcProgressChanged(IF)V

    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnArcProgressListener(Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    .line 284
    return-void
.end method

.method public setParamValue(F)V
    .locals 10
    .param p1, "value"    # F

    .prologue
    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 78
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/ArcsProcessBar;->calculateDegree(F)I

    move-result v1

    iput v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    .line 79
    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    add-int/lit16 v0, v1, 0x8e

    .line 80
    .local v0, "degree":I
    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v2, v2

    int-to-double v4, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointX:F

    .line 82
    iget v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointRadius:F

    float-to-double v2, v2

    int-to-double v4, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mPointY:F

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/ArcsProcessBar;->invalidate()V

    .line 85
    iget-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mListener:Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;

    iget v2, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mEffParam:I

    iget v3, p0, Lcom/oneplus/tuner/view/ArcsProcessBar;->mDegree:I

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar;->calculateParamValue(I)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/tuner/view/ArcsProcessBar$OnChangeArcProgressListener;->onArcProgressChanged(IF)V

    .line 90
    :cond_0
    return-void
.end method
