.class public Lcom/android/settings_exlib/drawable/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 13
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput p2, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    .line 65
    iget v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 69
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 70
    .local v4, "height":I
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 72
    .local v6, "square":I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v4, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v2, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v2, "cropRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .local v1, "circleRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 76
    .local v3, "fillPath":Landroid/graphics/Path;
    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    invoke-virtual {v3, v1, v8, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 78
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 86
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 87
    .local v5, "pdf":Landroid/graphics/PaintFlagsDrawFilter;
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 89
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 96
    iget-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mScale:F

    .line 100
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    iget v10, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 101
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_exlib/drawable/CircleFramedDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/android/settings_exlib/R$dimen;->circle_avatar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 57
    .local v0, "iconSize":F
    new-instance v1, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;

    float-to-int v3, v0

    invoke-direct {v1, p1, v3}, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 58
    .local v1, "instance":Lcom/android/settings_exlib/drawable/CircleFramedDrawable;
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    iget v2, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mScale:F

    iget v3, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 107
    .local v0, "inside":F
    iget v2, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 109
    .local v1, "pad":F
    iget-object v2, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v2, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mScale:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 127
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 131
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->mScale:F

    .line 113
    return-void
.end method
