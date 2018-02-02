.class public final Lcom/oneplus/util/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInnerRect(Landroid/graphics/RectF;FLandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 15
    .param p0, "outerRect"    # Landroid/graphics/RectF;
    .param p1, "outerRectOrientation"    # F
    .param p2, "preferredInnerRect"    # Landroid/graphics/RectF;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 28
    :cond_0
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    return-object v11

    .line 27
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 31
    move/from16 v0, p1

    neg-float v11, v0

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/oneplus/util/SizeUtils;->getMinOuterRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v5

    .line 34
    .local v5, "minPreferredOuterRect":Landroid/graphics/RectF;
    const/4 v11, 0x0

    iget v12, p0, Landroid/graphics/RectF;->left:F

    iget v13, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 35
    .local v3, "maxDiffX":F
    const/4 v11, 0x0

    iget v12, p0, Landroid/graphics/RectF;->top:F

    iget v13, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    iget v14, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 38
    .local v4, "maxDiffY":F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-nez v11, :cond_2

    .line 39
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v11

    .line 42
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v3

    sub-float/2addr v11, v12

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v6, v11, v12

    .line 43
    .local v6, "ratioX":F
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v4

    sub-float/2addr v11, v12

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v7, v11, v12

    .line 44
    .local v7, "ratioY":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 47
    .local v8, "scaleDown":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float v10, v11, v8

    .line 48
    .local v10, "width":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float v1, v11, v8

    .line 49
    .local v1, "height":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v10, v12

    sub-float v2, v11, v12

    .line 50
    .local v2, "left":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v1, v12

    sub-float v9, v11, v12

    .line 53
    .local v9, "top":F
    new-instance v11, Landroid/graphics/RectF;

    add-float v12, v2, v10

    add-float v13, v9, v1

    invoke-direct {v11, v2, v9, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v11
.end method

.method public static getMinOuterRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 14
    .param p0, "innerRect"    # Landroid/graphics/RectF;
    .param p1, "innerRectOrientation"    # F

    .prologue
    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    :cond_0
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    return-object v7

    .line 70
    :cond_1
    const/high16 v7, 0x43340000    # 180.0f

    div-float v7, p1, v7

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v8, v10

    .line 71
    .local v4, "radians":D
    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-double v10, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 72
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    .line 71
    invoke-direct {v2, v7, v8}, Landroid/util/SizeF;-><init>(FF)V

    .line 75
    .local v2, "outerSize":Landroid/util/SizeF;
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v1, v7, v8

    .line 76
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v6, v7, v8

    .line 77
    .local v6, "top":F
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    add-float v3, v1, v7

    .line 78
    .local v3, "right":F
    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    add-float v0, v6, v7

    .line 81
    .local v0, "bottom":F
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v1, v6, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v7
.end method

.method public static getRatioCenterCroppedSize(IIII)Landroid/util/Size;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "innerWidth"    # I
    .param p3, "innerHeight"    # I

    .prologue
    .line 96
    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/util/SizeUtils;->getRatioCenterCroppedSize(FFFFZ)Landroid/util/SizeF;

    move-result-object v0

    .line 97
    .local v0, "size":Landroid/util/SizeF;
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getRatioCenterCroppedSize(FFFFZ)Landroid/util/SizeF;
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "innerWidth"    # F
    .param p3, "innerHeight"    # F
    .param p4, "downOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 112
    cmpg-float v3, p2, v4

    if-lez v3, :cond_0

    cmpg-float v3, p3, v4

    if-gtz v3, :cond_1

    .line 113
    :cond_0
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, v4, v4}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3

    .line 112
    :cond_1
    cmpg-float v3, p0, v4

    if-lez v3, :cond_0

    cmpg-float v3, p1, v4

    if-lez v3, :cond_0

    .line 116
    div-float v1, p2, p0

    .line 117
    .local v1, "ratioX":F
    div-float v2, p3, p1

    .line 118
    .local v2, "ratioY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 119
    .local v0, "ratio":F
    if-eqz p4, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 120
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, p0, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3

    .line 123
    :cond_2
    new-instance v3, Landroid/util/SizeF;

    mul-float v4, p0, v0

    mul-float v5, p1, v0

    invoke-direct {v3, v4, v5}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3
.end method

.method public static getRatioStretchedSize(IIIIZ)Landroid/util/Size;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "containerWidth"    # I
    .param p3, "containerHeight"    # I
    .param p4, "downOnly"    # Z

    .prologue
    .line 139
    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v2, v3, v4, p4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(FFFFZ)Landroid/util/SizeF;

    move-result-object v0

    .line 140
    .local v0, "size":Landroid/util/SizeF;
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getRatioStretchedSize(FFFFZ)Landroid/util/SizeF;
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "containerWidth"    # F
    .param p3, "containerHeight"    # F
    .param p4, "downOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 156
    cmpg-float v3, p2, v4

    if-lez v3, :cond_0

    cmpg-float v3, p3, v4

    if-gtz v3, :cond_1

    .line 157
    :cond_0
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, v4, v4}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3

    .line 156
    :cond_1
    cmpg-float v3, p0, v4

    if-lez v3, :cond_0

    cmpg-float v3, p1, v4

    if-lez v3, :cond_0

    .line 160
    div-float v1, p2, p0

    .line 161
    .local v1, "ratioX":F
    div-float v2, p3, p1

    .line 162
    .local v2, "ratioY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 163
    .local v0, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    if-eqz p4, :cond_2

    .line 164
    new-instance v3, Landroid/util/SizeF;

    invoke-direct {v3, p0, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3

    .line 167
    :cond_2
    new-instance v3, Landroid/util/SizeF;

    mul-float v4, p0, v0

    mul-float v5, p1, v0

    invoke-direct {v3, v4, v5}, Landroid/util/SizeF;-><init>(FF)V

    return-object v3
.end method
