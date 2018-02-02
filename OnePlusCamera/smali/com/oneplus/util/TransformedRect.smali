.class public Lcom/oneplus/util/TransformedRect;
.super Ljava/lang/Object;
.source "TransformedRect.java"


# instance fields
.field private final m_InverseMatrix:Landroid/graphics/Matrix;

.field private m_IsTramsformationReady:Z

.field private final m_Matrix:Landroid/graphics/Matrix;

.field private final m_OriginalRect:Landroid/graphics/RectF;

.field private final m_OriginalVertices:[F

.field private final m_TransformedVertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    .line 25
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/16 v1, 0x8

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    .line 38
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v1, 0x8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    .line 60
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 61
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/16 v1, 0x8

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    .line 49
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/util/TransformedRect;)V
    .locals 4
    .param p1, "rect"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    .line 18
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    .line 19
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    .line 71
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 72
    iget-object v0, p1, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 69
    return-void
.end method

.method private static convertXYPairsToPoints([Landroid/graphics/PointF;I[FII)V
    .locals 5
    .param p0, "dst"    # [Landroid/graphics/PointF;
    .param p1, "dstIndex"    # I
    .param p2, "src"    # [F
    .param p3, "srcIndex"    # I
    .param p4, "pairCount"    # I

    .prologue
    .line 209
    move v1, p3

    .local v1, "s":I
    move v0, p1

    .local v0, "d":I
    :goto_0
    if-lez p4, :cond_0

    .line 210
    new-instance v2, Landroid/graphics/PointF;

    aget v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p2, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, p0, v0

    .line 209
    add-int/lit8 p4, p4, -0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private static getBottom([FII)F
    .locals 4
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 228
    if-gtz p2, :cond_0

    .line 229
    const/high16 v3, 0x7fc00000    # NaNf

    return v3

    .line 230
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v0, p0, v3

    .line 231
    .local v0, "bottom":F
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    .line 233
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v2, p0, v3

    .line 234
    .local v2, "y":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 235
    move v0, v2

    .line 231
    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "y":F
    :cond_2
    return v0
.end method

.method private static getHeight([FII)F
    .locals 5
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 278
    if-gtz p2, :cond_0

    .line 279
    const/4 v4, 0x0

    return v4

    .line 280
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v2, p0, v4

    .line 281
    .local v2, "top":F
    move v0, v2

    .line 282
    .local v0, "bottom":F
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x1

    if-le p2, v4, :cond_3

    .line 284
    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, p0, v4

    .line 285
    .local v3, "y":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    .line 286
    move v2, v3

    .line 287
    :cond_1
    cmpl-float v4, v3, v0

    if-lez v4, :cond_2

    .line 288
    move v0, v3

    .line 282
    :cond_2
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v3    # "y":F
    :cond_3
    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    return v4
.end method

.method private static getLeft([FII)F
    .locals 4
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 308
    if-gtz p2, :cond_0

    .line 309
    const/high16 v3, 0x7fc00000    # NaNf

    return v3

    .line 310
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    aget v1, p0, v3

    .line 311
    .local v1, "left":F
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    .line 313
    shl-int/lit8 v3, v0, 0x1

    aget v2, p0, v3

    .line 314
    .local v2, "x":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 315
    move v1, v2

    .line 311
    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "x":F
    :cond_2
    return v1
.end method

.method private static getRight([FII)F
    .locals 4
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 437
    if-gtz p2, :cond_0

    .line 438
    const/high16 v3, 0x7fc00000    # NaNf

    return v3

    .line 439
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    aget v1, p0, v3

    .line 440
    .local v1, "right":F
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    .line 442
    shl-int/lit8 v3, v0, 0x1

    aget v2, p0, v3

    .line 443
    .local v2, "x":F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    .line 444
    move v1, v2

    .line 440
    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "x":F
    :cond_2
    return v1
.end method

.method private static getTop([FII)F
    .locals 4
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 464
    if-gtz p2, :cond_0

    .line 465
    const/high16 v3, 0x7fc00000    # NaNf

    return v3

    .line 466
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v1, p0, v3

    .line 467
    .local v1, "top":F
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    .line 469
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v2, p0, v3

    .line 470
    .local v2, "y":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 471
    move v1, v2

    .line 467
    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "y":F
    :cond_2
    return v1
.end method

.method private static getWidth([FII)F
    .locals 5
    .param p0, "vertices"    # [F
    .param p1, "vertexIndex"    # I
    .param p2, "vertexCount"    # I

    .prologue
    .line 535
    if-gtz p2, :cond_0

    .line 536
    const/4 v4, 0x0

    return v4

    .line 537
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    aget v1, p0, v4

    .line 538
    .local v1, "left":F
    move v2, v1

    .line 539
    .local v2, "right":F
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x1

    if-le p2, v4, :cond_3

    .line 541
    shl-int/lit8 v4, v0, 0x1

    aget v3, p0, v4

    .line 542
    .local v3, "x":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_1

    .line 543
    move v1, v3

    .line 544
    :cond_1
    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    .line 545
    move v2, v3

    .line 539
    :cond_2
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .end local v3    # "x":F
    :cond_3
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    return v4
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/util/TransformedRect;->m_IsTramsformationReady:Z

    .line 552
    return-void
.end method

.method private transform()V
    .locals 3

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/oneplus/util/TransformedRect;->m_IsTramsformationReady:Z

    if-eqz v0, :cond_0

    .line 905
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    iget-object v2, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 907
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 909
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/util/TransformedRect;->m_IsTramsformationReady:Z

    .line 902
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 86
    const/4 v3, 0x2

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    .line 87
    .local v0, "point":[F
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 88
    aget p1, v0, v2

    .line 89
    aget p2, v0, v1

    .line 90
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget p1, v3, Landroid/graphics/RectF;->left:F

    .line 94
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {p2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget p2, v3, Landroid/graphics/RectF;->top:F

    .line 98
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_4

    :goto_2
    return v1

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget p1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget p2, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_4
    move v1, v2

    .line 98
    goto :goto_2
.end method

.method public contains(Landroid/graphics/PointF;)Z
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 109
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/util/TransformedRect;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 120
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 121
    .local v0, "points":[F
    invoke-static {p1, v0, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 122
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/oneplus/util/TransformedRect;->containsAll([FII)Z

    move-result v1

    return v1
.end method

.method public contains(Lcom/oneplus/util/TransformedRect;)Z
    .locals 3
    .param p1, "rect"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    .line 133
    if-ne p1, p0, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    invoke-direct {p1}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 136
    iget-object v0, p1, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->containsAll([FII)Z

    move-result v0

    return v0
.end method

.method public containsAll([FII)Z
    .locals 6
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "pointCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 150
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 151
    .local v0, "point":[F
    :goto_0
    if-lez p3, :cond_6

    .line 153
    aget v3, p1, p2

    aput v3, v0, v4

    .line 154
    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    aput v3, v0, v5

    .line 155
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 156
    aget v1, v0, v4

    .line 157
    .local v1, "x":F
    aget v2, v0, v5

    .line 158
    .local v2, "y":F
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 162
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/RectF;->top:F

    .line 166
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 167
    :cond_2
    return v4

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 164
    :cond_4
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 166
    :cond_5
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 151
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 169
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    return v5
.end method

.method public containsAll([Landroid/graphics/PointF;II)Z
    .locals 6
    .param p1, "points"    # [Landroid/graphics/PointF;
    .param p2, "offset"    # I
    .param p3, "pointCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 183
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 184
    .local v0, "point":[F
    :goto_0
    if-lez p3, :cond_6

    .line 186
    aget-object v3, p1, p2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v4

    .line 187
    aget-object v3, p1, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v5

    .line 188
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 189
    aget v1, v0, v4

    .line 190
    .local v1, "x":F
    aget v2, v0, v5

    .line 191
    .local v2, "y":F
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 195
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/RectF;->top:F

    .line 199
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 200
    :cond_2
    return v4

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 184
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    return v5
.end method

.method public getBottom()F
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 221
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getBottom([FII)F

    move-result v0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 248
    .local v0, "box":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Lcom/oneplus/util/TransformedRect;->getBoundingBox(Landroid/graphics/RectF;)V

    .line 249
    return-object v0
.end method

.method public getBoundingBox(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 260
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 257
    return-void
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 271
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getHeight([FII)F

    move-result v0

    return v0
.end method

.method public getLeft()F
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 301
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getLeft([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalBottom()F
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getBottom([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalHeight()F
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getHeight([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalLeft()F
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getLeft([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getOriginalRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 365
    return-void
.end method

.method public getOriginalRight()F
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getRight([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalTop()F
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getTop([FII)F

    move-result v0

    return v0
.end method

.method public getOriginalVertices([FI)V
    .locals 3
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    return-void
.end method

.method public getOriginalVertices([Landroid/graphics/PointF;I)V
    .locals 3
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->convertXYPairsToPoints([Landroid/graphics/PointF;I[FII)V

    .line 417
    return-void
.end method

.method public getOriginalWidth()F
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getWidth([FII)F

    move-result v0

    return v0
.end method

.method public getRight()F
    .locals 3

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 430
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getRight([FII)F

    move-result v0

    return v0
.end method

.method public getTop()F
    .locals 3

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 457
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getTop([FII)F

    move-result v0

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 483
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getTransformation(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/Matrix;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 491
    return-void
.end method

.method public getVertices([FI)V
    .locals 3
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 505
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    return-void
.end method

.method public getVertices([Landroid/graphics/PointF;I)V
    .locals 3
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 517
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->convertXYPairsToPoints([Landroid/graphics/PointF;I[FII)V

    .line 514
    return-void
.end method

.method public getWidth()F
    .locals 3

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 528
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_TransformedVertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/TransformedRect;->getWidth([FII)F

    move-result v0

    return v0
.end method

.method public isTransformed()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mapFromOriginalRectangle([FI[FII)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 598
    return-void
.end method

.method public mapFromOriginalRectangle([Landroid/graphics/PointF;I[Landroid/graphics/PointF;II)V
    .locals 9
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [Landroid/graphics/PointF;
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 578
    shl-int/lit8 v0, p5, 0x1

    new-array v1, v0, [F

    .line 579
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

    .line 581
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, v1, v8

    .line 582
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v1, v7

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v3, v1

    move v4, v2

    move v5, p5

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/util/TransformedRect;->mapFromOriginalRectangle([FI[FII)V

    .line 585
    const/4 v6, 0x0

    const/4 v7, 0x0

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_1
    if-ge v6, p5, :cond_1

    .line 586
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

    .line 585
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 576
    :cond_1
    return-void
.end method

.method public mapToOriginalRectangle([FI[FII)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->transform()V

    .line 637
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_InverseMatrix:Landroid/graphics/Matrix;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 634
    return-void
.end method

.method public mapToOriginalRectangle([Landroid/graphics/PointF;I[Landroid/graphics/PointF;II)V
    .locals 9
    .param p1, "dst"    # [Landroid/graphics/PointF;
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [Landroid/graphics/PointF;
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 614
    shl-int/lit8 v0, p5, 0x1

    new-array v1, v0, [F

    .line 615
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

    .line 617
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, v1, v8

    .line 618
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    add-int v0, p4, v6

    aget-object v0, p3, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v1, v7

    .line 615
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v3, v1

    move v4, v2

    move v5, p5

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/util/TransformedRect;->mapToOriginalRectangle([FI[FII)V

    .line 621
    const/4 v6, 0x0

    const/4 v7, 0x0

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_1
    if-ge v6, p5, :cond_1

    .line 622
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

    .line 621
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 612
    :cond_1
    return-void
.end method

.method public offsetOriginalRect(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 648
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 649
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 650
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 646
    return-void
.end method

.method public offsetOriginalRectTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 661
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 662
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 663
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 659
    return-void
.end method

.method public postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 676
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 679
    const/4 v0, 0x1

    return v0

    .line 681
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 695
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 698
    const/4 v0, 0x1

    return v0

    .line 700
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public postTransform(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 714
    const/4 v0, 0x1

    return v0

    .line 716
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 728
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 731
    const/4 v0, 0x1

    return v0

    .line 733
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 746
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 749
    const/4 v0, 0x1

    return v0

    .line 751
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 765
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 768
    const/4 v0, 0x1

    return v0

    .line 770
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preTransform(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 784
    const/4 v0, 0x1

    return v0

    .line 786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 798
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 801
    const/4 v0, 0x1

    return v0

    .line 803
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetTransformation()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 813
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 810
    return-void
.end method

.method public setOriginalRect(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 827
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 828
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 824
    return-void
.end method

.method public setOriginalRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 851
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 852
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 848
    return-void
.end method

.method public setOriginalRect(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 839
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalVertices:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/Geometry;->convertRectToPoints(Landroid/graphics/RectF;[FI)V

    .line 840
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 836
    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 866
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 860
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setTransformation(Lcom/oneplus/util/TransformedRect;)V
    .locals 2
    .param p1, "rect"    # Lcom/oneplus/util/TransformedRect;

    .prologue
    .line 876
    if-ne p1, p0, :cond_0

    .line 877
    return-void

    .line 878
    :cond_0
    if-nez p1, :cond_1

    .line 879
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 882
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/util/TransformedRect;->invalidate()V

    .line 874
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/oneplus/util/TransformedRect;->m_Matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oneplus/util/TransformedRect;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 892
    .local v0, "boundingBox":Landroid/graphics/RectF;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    iget-object v2, p0, Lcom/oneplus/util/TransformedRect;->m_OriginalRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 894
    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 896
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
