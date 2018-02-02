.class public Lcom/oneplus/widget/TransformedImageViewer;
.super Lcom/oneplus/widget/ImageViewer;
.source "TransformedImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/TransformedImageViewer$1;,
        Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;
    }
.end annotation


# instance fields
.field private final m_InverseTransformMatrix:Landroid/graphics/Matrix;

.field private m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_OriginalImageDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private m_OriginalImageHeight:I

.field private m_OriginalImageWidth:I

.field private m_OriginalOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_TempBoundingBox:Landroid/graphics/RectF;

.field private final m_TempImageBounds:Landroid/graphics/Rect;

.field private final m_TransformMatrix:Landroid/graphics/Matrix;

.field private m_TransformedDrawable:Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;

.field private final m_TransformedRect:Lcom/oneplus/util/TransformedRect;


# direct methods
.method static synthetic -get0(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/widget/TransformedImageViewer;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/widget/TransformedImageViewer;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/widget/TransformedImageViewer;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/widget/TransformedImageViewer;)Lcom/oneplus/util/TransformedRect;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/ImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_InverseTransformMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempImageBounds:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Lcom/oneplus/util/TransformedRect;

    invoke-direct {v0}, Lcom/oneplus/util/TransformedRect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    .line 35
    new-instance v0, Lcom/oneplus/widget/TransformedImageViewer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/TransformedImageViewer$1;-><init>(Lcom/oneplus/widget/TransformedImageViewer;)V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 145
    return-void
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageTransformation()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getImageTransformation(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Matrix;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 174
    return-void
.end method

.method public getImageTransformation(Lcom/oneplus/util/TransformedRect;)V
    .locals 1
    .param p1, "dst"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/oneplus/util/TransformedRect;->setTransformation(Landroid/graphics/Matrix;)V

    .line 184
    return-void
.end method

.method public getLocationOnOriginalImage([FFF)Z
    .locals 1
    .param p1, "result"    # [F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oneplus/widget/TransformedImageViewer;->getLocationOnOriginalImage([FIFF)Z

    move-result v0

    return v0
.end method

.method public getLocationOnOriginalImage([FIFF)Z
    .locals 8
    .param p1, "result"    # [F
    .param p2, "resultIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/TransformedImageViewer;->getImageBounds(Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/TransformedImageViewer;->getLocationOnImage([FIFF)Z

    .line 215
    aget v0, p1, p2

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 216
    .local v6, "normX":F
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 217
    .local v7, "normY":F
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/TransformedRect;->getBoundingBox(Landroid/graphics/RectF;)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 219
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 220
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/TransformedRect;->getOriginalRect(Landroid/graphics/RectF;)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TempBoundingBox:Landroid/graphics/RectF;

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public getOriginalIntrinsicImageHeight()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    return v0
.end method

.method public getOriginalIntrinsicImageWidth()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    return v0
.end method

.method public getOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTransformedRectWithOriginalImageSize()Lcom/oneplus/util/TransformedRect;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/oneplus/util/TransformedRect;

    invoke-direct {v0}, Lcom/oneplus/util/TransformedRect;-><init>()V

    .line 233
    .local v0, "rect":Lcom/oneplus/util/TransformedRect;
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/TransformedImageViewer;->getTransformedRectWithOriginalImageSize(Lcom/oneplus/util/TransformedRect;)V

    .line 234
    return-object v0
.end method

.method public getTransformedRectWithOriginalImageSize(Lcom/oneplus/util/TransformedRect;)V
    .locals 3
    .param p1, "dst"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    const/4 v2, 0x0

    .line 244
    iget v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/oneplus/util/TransformedRect;->setOriginalRect(FFFF)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    invoke-virtual {p1, v0}, Lcom/oneplus/util/TransformedRect;->setTransformation(Lcom/oneplus/util/TransformedRect;)V

    .line 242
    return-void
.end method

.method public mapPointsFromOriginalImage([FI[FII)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 307
    return-void
.end method

.method public mapPointsFromOriginalImage([Landroid/graphics/PointF;I[Landroid/graphics/PointF;II)V
    .locals 9
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [Landroid/graphics/PointF;
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 287
    shl-int/lit8 v0, p5, 0x1

    new-array v1, v0, [F

    .line 288
    .local v1, "coordinates":[F
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_0
    if-ge v6, p5, :cond_0

    .line 290
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, v1, v8

    .line 291
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v1, v7

    .line 288
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v3, v1

    move v4, v2

    move v5, p5

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/TransformedImageViewer;->mapPointsFromOriginalImage([FI[FII)V

    .line 294
    const/4 v6, 0x0

    const/4 v7, 0x0

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_1
    if-ge v6, p5, :cond_1

    .line 295
    add-int v0, p2, v6

    new-instance v2, Landroid/graphics/PointF;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget v3, v1, v8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget v4, v1, v7

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, p1, v0

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 285
    :cond_1
    return-void
.end method

.method public mapPointsToOriginalImage([FI[FII)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_InverseTransformMatrix:Landroid/graphics/Matrix;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 343
    return-void
.end method

.method public mapPointsToOriginalImage([Landroid/graphics/PointF;I[Landroid/graphics/PointF;II)V
    .locals 9
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [Landroid/graphics/PointF;
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 323
    shl-int/lit8 v0, p5, 0x1

    new-array v1, v0, [F

    .line 324
    .local v1, "coordinates":[F
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_0
    if-ge v6, p5, :cond_0

    .line 326
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, v1, v8

    .line 327
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v1, v7

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v3, v1

    move v4, v2

    move v5, p5

    .line 329
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/TransformedImageViewer;->mapPointsToOriginalImage([FI[FII)V

    .line 330
    const/4 v6, 0x0

    const/4 v7, 0x0

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_1
    if-ge v6, p5, :cond_1

    .line 331
    add-int v0, p2, v6

    new-instance v2, Landroid/graphics/PointF;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget v3, v1, v8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget v4, v1, v7

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, p1, v0

    .line 330
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 321
    :cond_1
    return-void
.end method

.method protected onImageTransformationChanged(Landroid/graphics/Matrix;Z)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "animate"    # Z

    .prologue
    .line 356
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/TransformedImageViewer;->refreshImageBounds(Z)V

    .line 354
    return-void
.end method

.method protected onOriginalImageDrawableInvalidated(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 368
    .local v1, "imageWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 369
    .local v0, "imageHeight":I
    iget v2, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    if-eq v2, v0, :cond_1

    .line 371
    :cond_0
    iput v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    .line 372
    iput v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    .line 373
    iget-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/oneplus/util/TransformedRect;->setOriginalRect(FFFF)V

    .line 374
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/widget/TransformedImageViewer;->onOriginalIntrinsicImageSizeChanged(II)V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/widget/TransformedImageViewer;->invalidate()V

    .line 364
    return-void
.end method

.method protected onOriginalIntrinsicImageSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 387
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 396
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 399
    :cond_1
    iput-object p1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    if-eqz p1, :cond_2

    .line 402
    new-instance v0, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;-><init>(Lcom/oneplus/widget/TransformedImageViewer;)V

    iput-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedDrawable:Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;

    .line 403
    invoke-virtual {p0, p1}, Lcom/oneplus/widget/TransformedImageViewer;->onOriginalImageDrawableInvalidated(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedDrawable:Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;

    invoke-super {p0, v0, p2}, Lcom/oneplus/widget/ImageViewer;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 393
    return-void

    .line 408
    :cond_2
    iput-object v2, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedDrawable:Lcom/oneplus/widget/TransformedImageViewer$TransformedDrawable;

    .line 409
    iput v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageWidth:I

    .line 410
    iput v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalImageHeight:I

    .line 411
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/widget/TransformedImageViewer;->onOriginalIntrinsicImageSizeChanged(II)V

    goto :goto_0
.end method

.method public setImageTransformation(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/TransformedImageViewer;->setImageTransformation(Landroid/graphics/Matrix;Z)V

    .line 421
    return-void
.end method

.method public setImageTransformation(Landroid/graphics/Matrix;Z)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "animate"    # Z

    .prologue
    .line 434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 442
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_InverseTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 443
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/TransformedRect;->setTransformation(Landroid/graphics/Matrix;)V

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/widget/TransformedImageViewer;->onImageTransformationChanged(Landroid/graphics/Matrix;Z)V

    .line 432
    return-void

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setImageTransformation(Lcom/oneplus/util/TransformedRect;)V
    .locals 1
    .param p1, "rect"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/TransformedImageViewer;->setImageTransformation(Lcom/oneplus/util/TransformedRect;Z)V

    .line 452
    return-void
.end method

.method public setImageTransformation(Lcom/oneplus/util/TransformedRect;Z)V
    .locals 2
    .param p1, "rect"    # Lcom/oneplus/util/TransformedRect;
    .param p2, "animate"    # Z

    .prologue
    .line 465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/util/TransformedRect;->isTransformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/oneplus/util/TransformedRect;->getTransformation(Landroid/graphics/Matrix;)V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_InverseTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 474
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformedRect:Lcom/oneplus/util/TransformedRect;

    iget-object v1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/TransformedRect;->setTransformation(Landroid/graphics/Matrix;)V

    .line 475
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/widget/TransformedImageViewer;->onImageTransformationChanged(Landroid/graphics/Matrix;Z)V

    .line 463
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_TransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 484
    return-void

    .line 485
    :cond_0
    iput-object p1, p0, Lcom/oneplus/widget/TransformedImageViewer;->m_OriginalOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    invoke-virtual {p0}, Lcom/oneplus/widget/TransformedImageViewer;->invalidate()V

    .line 481
    return-void
.end method
