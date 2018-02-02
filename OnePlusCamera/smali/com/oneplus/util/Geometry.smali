.class public final Lcom/oneplus/util/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# static fields
.field public static final FLAG_OFFSET:I = 0x1

.field public static final FLAG_OFFSET_SCALING:I = 0x3

.field public static final FLAG_PRESERVE_BOTTOM:I = 0x100000

.field public static final FLAG_PRESERVE_CENTER:I = 0x600000

.field public static final FLAG_PRESERVE_CENTER_X:I = 0x200000

.field public static final FLAG_PRESERVE_CENTER_Y:I = 0x400000

.field public static final FLAG_PRESERVE_LEFT:I = 0x20000

.field public static final FLAG_PRESERVE_LEFT_RIGHT:I = 0xa0000

.field public static final FLAG_PRESERVE_RIGHT:I = 0x80000

.field public static final FLAG_PRESERVE_TOP:I = 0x40000

.field public static final FLAG_PRESERVE_TOP_BOTTOM:I = 0x140000

.field public static final FLAG_PRESERVE_WIDTH_HEIGHT_RATIO:I = 0x10000

.field public static final FLAG_SCALING:I = 0x2

.field private static final FLOAT_ACCURACY_TOLERANCE:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustPointIntoRect([FI[FILandroid/graphics/RectF;FFI)Z
    .locals 18
    .param p0, "dst"    # [F
    .param p1, "dstIndex"    # I
    .param p2, "point"    # [F
    .param p3, "pointIndex"    # I
    .param p4, "rect"    # Landroid/graphics/RectF;
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F
    .param p7, "flags"    # I

    .prologue
    .line 93
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v13, 0x0

    .line 96
    .local v13, "hasPivot":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    .line 97
    :cond_1
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/oneplus/util/Geometry;->containsAll(Landroid/graphics/RectF;[FII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    const/4 v5, 0x1

    return v5

    .line 93
    .end local v13    # "hasPivot":Z
    :cond_3
    const/4 v13, 0x1

    .restart local v13    # "hasPivot":Z
    goto :goto_0

    .line 104
    :cond_4
    aget v16, p0, p1

    .line 105
    .local v16, "x":F
    add-int/lit8 v5, p1, 0x1

    aget v17, p0, v5

    .line 106
    .local v17, "y":F
    and-int/lit8 v5, p7, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    if-eqz v13, :cond_7

    .line 120
    :cond_5
    and-int/lit8 v5, p7, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    .line 123
    if-eqz v13, :cond_6

    move/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-nez v5, :cond_6

    move/from16 v0, v17

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 124
    :cond_6
    const/4 v5, 0x0

    return v5

    .line 108
    :cond_7
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v16, v5

    if-gez v5, :cond_a

    .line 109
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, p0, p1

    .line 112
    :cond_8
    :goto_1
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v17, v5

    if-gez v5, :cond_b

    .line 113
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/RectF;->top:F

    aput v6, p0, v5

    .line 116
    :cond_9
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 110
    :cond_a
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v16, v5

    if-lez v5, :cond_8

    .line 111
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, p0, p1

    goto :goto_1

    .line 114
    :cond_b
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v17, v5

    if-lez v5, :cond_9

    .line 115
    add-int/lit8 v5, p1, 0x1

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    aput v6, p0, v5

    goto :goto_2

    .line 125
    :cond_c
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, p5

    invoke-static {v0, v5}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 126
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 p5, v0

    .line 129
    :cond_d
    :goto_3
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, p6

    invoke-static {v0, v5}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 130
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 p6, v0

    .line 136
    :cond_e
    :goto_4
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v16, v5

    if-gez v5, :cond_12

    .line 137
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v5, v5, p5

    sub-float v6, v16, p5

    div-float v14, v5, v6

    .line 142
    .local v14, "scaleX":F
    :goto_5
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v17, v5

    if-gez v5, :cond_14

    .line 143
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v5, p6

    sub-float v6, v17, p6

    div-float v15, v5, v6

    .line 148
    .local v15, "scaleY":F
    :goto_6
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 151
    .local v4, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 152
    :cond_f
    const/4 v5, 0x0

    return v5

    .line 127
    .end local v4    # "scale":F
    .end local v14    # "scaleX":F
    .end local v15    # "scaleY":F
    :cond_10
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move/from16 v0, p5

    invoke-static {v0, v5}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 128
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 p5, v0

    goto :goto_3

    .line 131
    :cond_11
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p6

    invoke-static {v0, v5}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 132
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 p6, v0

    goto :goto_4

    .line 138
    :cond_12
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v16, v5

    if-lez v5, :cond_13

    .line 139
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v5, p5

    sub-float v6, v16, p5

    div-float v14, v5, v6

    .restart local v14    # "scaleX":F
    goto :goto_5

    .line 141
    .end local v14    # "scaleX":F
    :cond_13
    const/high16 v14, 0x3f800000    # 1.0f

    .restart local v14    # "scaleX":F
    goto :goto_5

    .line 144
    :cond_14
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v17, v5

    if-lez v5, :cond_15

    .line 145
    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v5, p6

    sub-float v6, v17, p6

    div-float v15, v5, v6

    .restart local v15    # "scaleY":F
    goto :goto_6

    .line 147
    .end local v15    # "scaleY":F
    :cond_15
    const/high16 v15, 0x3f800000    # 1.0f

    .restart local v15    # "scaleY":F
    goto :goto_6

    .line 153
    .restart local v4    # "scale":F
    :cond_16
    const/4 v12, 0x1

    move v5, v4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p0

    move/from16 v11, p1

    invoke-static/range {v4 .. v12}, Lcom/oneplus/util/Geometry;->scalePoints(FFFF[FI[FII)V

    .line 154
    const/4 v5, 0x1

    return v5

    .line 158
    .end local v4    # "scale":F
    .end local v14    # "scaleX":F
    .end local v15    # "scaleY":F
    :cond_17
    const/4 v5, 0x0

    return v5
.end method

.method public static adjustPointsIntoRect([FI[FIILandroid/graphics/RectF;FFI)Z
    .locals 24
    .param p0, "dst"    # [F
    .param p1, "dstIndex"    # I
    .param p2, "points"    # [F
    .param p3, "pointIndex"    # I
    .param p4, "pointCount"    # I
    .param p5, "rect"    # Landroid/graphics/RectF;
    .param p6, "pivotX"    # F
    .param p7, "pivotY"    # F
    .param p8, "flags"    # I

    .prologue
    .line 182
    if-gtz p4, :cond_0

    .line 183
    const/4 v7, 0x0

    return v7

    .line 184
    :cond_0
    const/4 v7, 0x1

    move/from16 v0, p4

    if-ne v0, v7, :cond_1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 185
    invoke-static/range {v4 .. v11}, Lcom/oneplus/util/Geometry;->adjustPointIntoRect([FI[FILandroid/graphics/RectF;FFI)Z

    move-result v7

    return v7

    .line 186
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    const/16 v17, 0x0

    .line 189
    .local v17, "hasPivot":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_3

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_4

    .line 190
    :cond_3
    shl-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :cond_4
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/util/Geometry;->containsAll(Landroid/graphics/RectF;[FII)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 194
    const/4 v7, 0x1

    return v7

    .line 186
    .end local v17    # "hasPivot":Z
    :cond_5
    const/16 v17, 0x1

    .restart local v17    # "hasPivot":Z
    goto :goto_0

    .line 197
    :cond_6
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    .line 198
    .local v15, "boundingBox":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v15, v0, v1, v2}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 201
    and-int/lit8 v7, p8, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    if-eqz v17, :cond_c

    .line 224
    :cond_7
    :goto_1
    and-int/lit8 v7, p8, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 227
    if-nez v17, :cond_8

    .line 229
    const/4 v7, 0x2

    new-array v0, v7, [F

    move-object/from16 v16, v0

    .line 230
    .local v16, "centroid":[F
    const/4 v7, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-static {v0, v7, v1, v2, v3}, Lcom/oneplus/util/Geometry;->getCentroid([FI[FII)V

    .line 231
    const/4 v7, 0x0

    aget p6, v16, v7

    .line 232
    const/4 v7, 0x1

    aget p7, v16, v7

    .line 236
    .end local v16    # "centroid":[F
    :cond_8
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, p6

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 237
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 p6, v0

    .line 240
    :cond_9
    :goto_2
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, p7

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 241
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 p7, v0

    .line 244
    :cond_a
    :goto_3
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, p6, v7

    if-ltz v7, :cond_b

    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, p6, v7

    if-lez v7, :cond_16

    .line 245
    :cond_b
    const/4 v7, 0x0

    return v7

    .line 203
    :cond_c
    const/4 v4, 0x0

    .line 204
    .local v4, "offsetX":F
    const/4 v5, 0x0

    .line 205
    .local v5, "offsetY":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_f

    .line 206
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v4, v7, v8

    .line 211
    :cond_d
    :goto_4
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_11

    .line 212
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v5, v7, v8

    :cond_e
    :goto_5
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p4

    .line 217
    invoke-static/range {v4 .. v10}, Lcom/oneplus/util/Geometry;->offsetPoints(FF[FI[FII)V

    .line 218
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/util/Geometry;->containsAll(Landroid/graphics/RectF;[FII)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 219
    const/4 v7, 0x1

    return v7

    .line 207
    :cond_f
    iget v7, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 208
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v15, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v8

    goto :goto_4

    .line 209
    :cond_10
    iget v7, v15, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 210
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v15, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v8

    goto :goto_4

    .line 213
    :cond_11
    iget v7, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    .line 214
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v8, v15, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v8

    goto :goto_5

    .line 215
    :cond_12
    iget v7, v15, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    .line 216
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v8, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v8

    goto :goto_5

    .line 220
    :cond_13
    invoke-virtual {v15, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_1

    .line 238
    .end local v4    # "offsetX":F
    .end local v5    # "offsetY":F
    :cond_14
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move/from16 v0, p6

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 239
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 p6, v0

    goto/16 :goto_2

    .line 242
    :cond_15
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p7

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 243
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 p7, v0

    goto/16 :goto_3

    .line 244
    :cond_16
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v7, p7, v7

    if-ltz v7, :cond_b

    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, p7, v7

    if-gtz v7, :cond_b

    .line 248
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float v7, p6, v7

    iget v8, v15, Landroid/graphics/RectF;->left:F

    sub-float v8, p6, v8

    div-float v19, v7, v8

    .line 249
    .local v19, "scaleL":F
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v7, p7, v7

    iget v8, v15, Landroid/graphics/RectF;->top:F

    sub-float v8, p7, v8

    div-float v21, v7, v8

    .line 250
    .local v21, "scaleT":F
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, v7, p6

    iget v8, v15, Landroid/graphics/RectF;->right:F

    sub-float v8, v8, p6

    div-float v20, v7, v8

    .line 251
    .local v20, "scaleR":F
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v7, p7

    iget v8, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v8, p7

    div-float v18, v7, v8

    .line 253
    .local v18, "scaleB":F
    const/4 v7, 0x0

    move/from16 v0, v19

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 255
    const/4 v7, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 256
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 264
    .local v22, "scaleX":F
    :goto_6
    const/4 v7, 0x0

    move/from16 v0, v21

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 266
    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 267
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 275
    .local v23, "scaleY":F
    :goto_7
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 278
    .local v6, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_17

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 279
    :cond_17
    const/4 v7, 0x0

    return v7

    .line 258
    .end local v6    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    :cond_18
    move/from16 v22, v19

    .restart local v22    # "scaleX":F
    goto :goto_6

    .line 260
    .end local v22    # "scaleX":F
    :cond_19
    const/4 v7, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 261
    move/from16 v22, v20

    .restart local v22    # "scaleX":F
    goto :goto_6

    .line 263
    .end local v22    # "scaleX":F
    :cond_1a
    const/4 v7, 0x0

    return v7

    .line 269
    .restart local v22    # "scaleX":F
    :cond_1b
    move/from16 v23, v21

    .restart local v23    # "scaleY":F
    goto :goto_7

    .line 271
    .end local v23    # "scaleY":F
    :cond_1c
    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-static {v0, v7}, Lcom/oneplus/util/Geometry;->isValidScalingFactor(FZ)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 272
    move/from16 v23, v18

    .restart local v23    # "scaleY":F
    goto :goto_7

    .line 274
    .end local v23    # "scaleY":F
    :cond_1d
    const/4 v7, 0x0

    return v7

    .restart local v6    # "scale":F
    .restart local v23    # "scaleY":F
    :cond_1e
    move v7, v6

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p4

    .line 280
    invoke-static/range {v6 .. v14}, Lcom/oneplus/util/Geometry;->scalePoints(FFFF[FI[FII)V

    .line 281
    const/4 v7, 0x1

    return v7

    .line 285
    .end local v6    # "scale":F
    .end local v18    # "scaleB":F
    .end local v19    # "scaleL":F
    .end local v20    # "scaleR":F
    .end local v21    # "scaleT":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    :cond_1f
    const/4 v7, 0x0

    return v7
.end method

.method public static adjustRectByMinSize(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)Z
    .locals 10
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "minWidth"    # F
    .param p3, "minHeight"    # F
    .param p4, "flags"    # I

    .prologue
    const/high16 v9, 0x80000

    const/high16 v8, 0x40000

    const/high16 v7, 0x20000

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 311
    if-eq p0, p1, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->sort()V

    .line 316
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    :cond_1
    return v6

    .line 318
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    .line 320
    const/high16 v3, 0xa0000

    and-int/2addr v3, p4

    const/high16 v4, 0xa0000

    if-ne v3, v4, :cond_4

    .line 321
    return v6

    .line 323
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, p3

    if-ltz v3, :cond_4

    .line 324
    const/4 v3, 0x1

    return v3

    .line 325
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_5

    .line 327
    const/high16 v3, 0x140000

    and-int/2addr v3, p4

    const/high16 v4, 0x140000

    if-ne v3, v4, :cond_5

    .line 328
    return v6

    .line 333
    :cond_5
    const/high16 v3, 0x10000

    and-int/2addr v3, p4

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_a

    .line 335
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 336
    :cond_6
    return v6

    .line 337
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v2, v3, v4

    .line 343
    .local v2, "widthHeightRatio":F
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_8

    .line 345
    and-int v3, p4, v7

    if-ne v3, v7, :cond_b

    .line 346
    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 354
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_8

    .line 356
    div-float v0, p2, v2

    .line 357
    .local v0, "newHeight":F
    and-int v3, p4, v8

    if-ne v3, v8, :cond_d

    .line 358
    iget v3, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 368
    .end local v0    # "newHeight":F
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_9

    .line 370
    and-int v3, p4, v8

    if-ne v3, v8, :cond_f

    .line 371
    iget v3, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 379
    :goto_3
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_9

    .line 381
    mul-float v1, p3, v2

    .line 382
    .local v1, "newWidth":F
    and-int v3, p4, v7

    if-ne v3, v7, :cond_11

    .line 383
    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 395
    .end local v1    # "newWidth":F
    :cond_9
    :goto_4
    const/4 v3, 0x1

    return v3

    .line 340
    .end local v2    # "widthHeightRatio":F
    :cond_a
    const/high16 v2, 0x7fc00000    # NaNf

    .restart local v2    # "widthHeightRatio":F
    goto :goto_0

    .line 347
    :cond_b
    and-int v3, p4, v9

    if-ne v3, v9, :cond_c

    .line 348
    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 351
    :cond_c
    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, p2, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 352
    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 359
    .restart local v0    # "newHeight":F
    :cond_d
    const/high16 v3, 0x100000

    and-int/2addr v3, p4

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_e

    .line 360
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 363
    :cond_e
    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v0, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 364
    iget v3, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 372
    .end local v0    # "newHeight":F
    :cond_f
    const/high16 v3, 0x100000

    and-int/2addr v3, p4

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_10

    .line 373
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, p0, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 376
    :cond_10
    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, p3, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 377
    iget v3, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 384
    .restart local v1    # "newWidth":F
    :cond_11
    and-int v3, p4, v9

    if-ne v3, v9, :cond_12

    .line 385
    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, p0, Landroid/graphics/RectF;->left:F

    goto :goto_4

    .line 388
    :cond_12
    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 389
    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, p0, Landroid/graphics/RectF;->right:F

    goto :goto_4
.end method

.method public static adjustRectByWidthHeightRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;FI)Z
    .locals 9
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "widthHeightRatio"    # F
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x140000

    const/high16 v5, 0x100000

    const/high16 v4, 0x40000

    .line 419
    if-eq p0, p1, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 423
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_2

    .line 424
    :cond_1
    return v8

    .line 427
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 428
    const/4 v2, 0x1

    return v2

    .line 431
    :cond_3
    const/high16 v2, 0xa0000

    and-int/2addr v2, p3

    const/high16 v3, 0xa0000

    if-ne v2, v3, :cond_5

    .line 433
    and-int v2, p3, v6

    if-ne v2, v6, :cond_4

    .line 434
    return v8

    .line 435
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v2, p2

    .line 436
    .local v0, "newHeight":F
    and-int v2, p3, v4

    if-ne v2, v4, :cond_6

    .line 437
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 446
    .end local v0    # "newHeight":F
    :cond_5
    :goto_0
    const/high16 v2, 0x20000

    and-int/2addr v2, p3

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_d

    .line 448
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v2, p2

    .line 449
    .local v1, "newWidth":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v2, p2

    .line 450
    .restart local v0    # "newHeight":F
    and-int v2, p3, v6

    if-ne v2, v6, :cond_8

    .line 451
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 506
    .end local v1    # "newWidth":F
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 438
    :cond_6
    and-int v2, p3, v5

    if-ne v2, v5, :cond_7

    .line 439
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 442
    :cond_7
    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 443
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 452
    .restart local v1    # "newWidth":F
    :cond_8
    and-int v2, p3, v4

    if-ne v2, v4, :cond_a

    .line 454
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_9

    .line 455
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 457
    :cond_9
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 459
    :cond_a
    and-int v2, p3, v5

    if-ne v2, v5, :cond_c

    .line 461
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_b

    .line 462
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 464
    :cond_b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 468
    :cond_c
    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 469
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 472
    .end local v0    # "newHeight":F
    .end local v1    # "newWidth":F
    :cond_d
    const/high16 v2, 0x80000

    and-int/2addr v2, p3

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_13

    .line 474
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v2, p2

    .line 475
    .restart local v1    # "newWidth":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v2, p2

    .line 476
    .restart local v0    # "newHeight":F
    and-int v2, p3, v6

    if-ne v2, v6, :cond_e

    .line 477
    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 478
    :cond_e
    and-int v2, p3, v4

    if-ne v2, v4, :cond_10

    .line 480
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_f

    .line 481
    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 483
    :cond_f
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 485
    :cond_10
    and-int v2, p3, v5

    if-ne v2, v5, :cond_12

    .line 487
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_11

    .line 488
    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 490
    :cond_11
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 494
    :cond_12
    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 495
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 500
    .end local v0    # "newHeight":F
    .end local v1    # "newWidth":F
    :cond_13
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v2, p2

    .line 501
    .restart local v0    # "newHeight":F
    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 502
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method public static adjustRectToContainsPoints(Landroid/graphics/RectF;Landroid/graphics/RectF;[FIII)Z
    .locals 22
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "points"    # [F
    .param p3, "pointIndex"    # I
    .param p4, "pointCount"    # I
    .param p5, "flags"    # I

    .prologue
    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 536
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 537
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->sort()V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/util/Geometry;->containsAll(Landroid/graphics/RectF;[FII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    const/4 v4, 0x1

    return v4

    .line 542
    :cond_1
    and-int/lit8 v4, p5, 0x1

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    .line 544
    const/high16 v4, 0xa0000

    and-int v4, v4, p5

    if-nez v4, :cond_2

    const/high16 v4, 0x140000

    and-int v4, v4, p5

    if-eqz v4, :cond_6

    .line 545
    :cond_2
    :goto_0
    and-int/lit8 p5, p5, -0x2

    .line 549
    :cond_3
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 550
    .local v13, "boundingBox":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v13, v0, v1, v2}, Lcom/oneplus/util/Geometry;->getBoundingBox(Landroid/graphics/RectF;[FII)V

    .line 553
    const/4 v5, 0x0

    .line 554
    .local v5, "tempRect":Landroid/graphics/RectF;
    and-int/lit8 v4, p5, 0x1

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c

    .line 556
    const/4 v15, 0x0

    .line 557
    .local v15, "offsetX":F
    const/16 v16, 0x0

    .line 558
    .local v16, "offsetY":F
    const/4 v14, 0x1

    .line 559
    .local v14, "completed":Z
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_7

    .line 561
    const/4 v14, 0x0

    .line 562
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float v15, v4, v7

    .line 568
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_9

    .line 570
    const/4 v14, 0x0

    .line 571
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v16, v4, v7

    .line 577
    :cond_5
    :goto_2
    if-eqz v14, :cond_b

    .line 579
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 580
    const/4 v4, 0x1

    return v4

    .line 544
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v13    # "boundingBox":Landroid/graphics/RectF;
    .end local v14    # "completed":Z
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    :cond_6
    const/high16 v4, 0x600000

    and-int v4, v4, p5

    if-eqz v4, :cond_3

    goto :goto_0

    .line 564
    .restart local v5    # "tempRect":Landroid/graphics/RectF;
    .restart local v13    # "boundingBox":Landroid/graphics/RectF;
    .restart local v14    # "completed":Z
    .restart local v15    # "offsetX":F
    .restart local v16    # "offsetY":F
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v7, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_8

    .line 565
    iget v4, v13, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float v15, v4, v7

    goto :goto_1

    .line 566
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v7, v13, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    .line 567
    iget v4, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v15, v4, v7

    goto :goto_1

    .line 573
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v7, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    .line 574
    iget v4, v13, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v16, v4, v7

    goto :goto_2

    .line 575
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    .line 576
    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v16, v4, v7

    goto :goto_2

    .line 582
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_e

    new-instance v5, Landroid/graphics/RectF;

    .end local v5    # "tempRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 583
    .local v5, "tempRect":Landroid/graphics/RectF;
    :goto_3
    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 587
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v14    # "completed":Z
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    :cond_c
    and-int/lit8 v4, p5, 0x2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17

    .line 590
    if-nez v5, :cond_d

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 592
    :cond_d
    :goto_4
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v17, v0

    .line 593
    .local v17, "pivot":[F
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-static {v0, v4, v5, v1}, Lcom/oneplus/util/Geometry;->selectPivot([FILandroid/graphics/RectF;I)V

    .line 596
    iget v4, v5, Landroid/graphics/RectF;->left:F

    iget v7, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_10

    const/4 v4, 0x0

    aget v4, v17, v4

    iget v7, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    aget v7, v17, v7

    iget v8, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float v19, v4, v7

    .line 597
    .local v19, "scaleL":F
    :goto_5
    iget v4, v5, Landroid/graphics/RectF;->top:F

    iget v7, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_11

    const/4 v4, 0x1

    aget v4, v17, v4

    iget v7, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v7

    const/4 v7, 0x1

    aget v7, v17, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float v21, v4, v7

    .line 598
    .local v21, "scaleT":F
    :goto_6
    iget v4, v5, Landroid/graphics/RectF;->right:F

    iget v7, v13, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_12

    iget v4, v13, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x0

    aget v7, v17, v7

    sub-float/2addr v4, v7

    iget v7, v5, Landroid/graphics/RectF;->right:F

    const/4 v8, 0x0

    aget v8, v17, v8

    sub-float/2addr v7, v8

    div-float v20, v4, v7

    .line 599
    .local v20, "scaleR":F
    :goto_7
    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_13

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x1

    aget v7, v17, v7

    sub-float/2addr v4, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v8, 0x1

    aget v8, v17, v8

    sub-float/2addr v7, v8

    div-float v18, v4, v7

    .line 600
    .local v18, "scaleB":F
    :goto_8
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 601
    .local v9, "scaleX":F
    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 604
    .local v10, "scaleY":F
    const/high16 v4, 0x10000

    and-int v4, v4, p5

    const/high16 v7, 0x10000

    if-ne v4, v7, :cond_15

    .line 606
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 607
    .local v6, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v6, v4

    if-gez v4, :cond_14

    .line 608
    const/4 v4, 0x0

    return v4

    .end local v6    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    .end local v17    # "pivot":[F
    .end local v18    # "scaleB":F
    .end local v19    # "scaleL":F
    .end local v20    # "scaleR":F
    .end local v21    # "scaleT":F
    .local v5, "tempRect":Landroid/graphics/RectF;
    .restart local v14    # "completed":Z
    .restart local v15    # "offsetX":F
    .restart local v16    # "offsetY":F
    :cond_e
    move-object/from16 v5, p0

    .line 582
    goto/16 :goto_3

    .line 591
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v14    # "completed":Z
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    :cond_f
    move-object/from16 v5, p0

    .local v5, "tempRect":Landroid/graphics/RectF;
    goto/16 :goto_4

    .line 596
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .restart local v17    # "pivot":[F
    :cond_10
    const/high16 v19, 0x3f800000    # 1.0f

    .restart local v19    # "scaleL":F
    goto :goto_5

    .line 597
    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    .restart local v21    # "scaleT":F
    goto :goto_6

    .line 598
    :cond_12
    const/high16 v20, 0x3f800000    # 1.0f

    .restart local v20    # "scaleR":F
    goto :goto_7

    .line 599
    :cond_13
    const/high16 v18, 0x3f800000    # 1.0f

    .restart local v18    # "scaleB":F
    goto :goto_8

    .line 609
    .restart local v6    # "scale":F
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_14
    const/4 v4, 0x0

    aget v8, v17, v4

    const/4 v4, 0x1

    aget v9, v17, v4

    .end local v9    # "scaleX":F
    move-object/from16 v4, p0

    move v7, v6

    invoke-static/range {v4 .. v9}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 617
    .end local v6    # "scale":F
    :goto_9
    const/4 v4, 0x1

    return v4

    .line 613
    .restart local v9    # "scaleX":F
    :cond_15
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v9, v4

    if-gez v4, :cond_16

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v10, v4

    if-gez v4, :cond_16

    .line 614
    const/4 v4, 0x0

    return v4

    .line 615
    :cond_16
    const/4 v4, 0x0

    aget v11, v17, v4

    const/4 v4, 0x1

    aget v12, v17, v4

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-static/range {v7 .. v12}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    goto :goto_9

    .line 621
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    .end local v17    # "pivot":[F
    .end local v18    # "scaleB":F
    .end local v19    # "scaleL":F
    .end local v20    # "scaleR":F
    .end local v21    # "scaleT":F
    :cond_17
    const/4 v4, 0x0

    return v4
.end method

.method public static areSimilarCoordinates(FF)Z
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 633
    sub-float v0, p0, p1

    .line 634
    .local v0, "diff":F
    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const v2, -0x472e48e9    # -1.0E-4f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static contains(Landroid/graphics/RectF;FF)Z
    .locals 2
    .param p0, "outer"    # Landroid/graphics/RectF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 667
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v0}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {p2, v0}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v0}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 673
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, v0}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 675
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_4
    return v1

    .line 670
    :cond_5
    return v1

    .line 672
    :cond_6
    return v1

    .line 674
    :cond_7
    return v1
.end method

.method public static contains(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p0, "outer"    # Landroid/graphics/RectF;
    .param p1, "inner"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x0

    .line 646
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 654
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_4
    return v2

    .line 649
    :cond_5
    return v2

    .line 651
    :cond_6
    return v2

    .line 653
    :cond_7
    return v2
.end method

.method public static containsAll(Landroid/graphics/RectF;[FII)Z
    .locals 5
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "points"    # [F
    .param p2, "pointIndex"    # I
    .param p3, "pointCount"    # I

    .prologue
    const/4 v4, 0x0

    move v0, p2

    .line 689
    .end local p2    # "pointIndex":I
    .local v0, "pointIndex":I
    :goto_0
    if-lez p3, :cond_6

    .line 691
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "pointIndex":I
    .restart local p2    # "pointIndex":I
    aget v1, p1, v0

    .line 692
    .local v1, "x":F
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pointIndex":I
    .restart local v0    # "pointIndex":I
    aget v2, p1, p2

    .line 693
    .local v2, "y":F
    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 694
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 697
    :cond_0
    :goto_1
    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 698
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 701
    :cond_1
    :goto_2
    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 702
    :cond_2
    return v4

    .line 695
    :cond_3
    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    iget v1, p0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 699
    :cond_4
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3}, Lcom/oneplus/util/Geometry;->areSimilarCoordinates(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 701
    :cond_5
    iget v3, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 689
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 704
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    const/4 v3, 0x1

    return v3
.end method

.method public static convertRectToPoints(Landroid/graphics/Rect;[FI)V
    .locals 2
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "result"    # [F
    .param p2, "resultIndex"    # I

    .prologue
    .line 716
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .local v0, "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, p1, p2

    .line 717
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 718
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, p1, p2

    .line 719
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 720
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, p1, p2

    .line 721
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 722
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, p1, p2

    .line 723
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, p1, v0

    .line 714
    return-void
.end method

.method public static convertRectToPoints(Landroid/graphics/RectF;[FI)V
    .locals 2
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "result"    # [F
    .param p2, "resultIndex"    # I

    .prologue
    .line 735
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .local v0, "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, p2

    .line 736
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 737
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, p2

    .line 738
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->top:F

    aput v1, p1, v0

    .line 739
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->right:F

    aput v1, p1, p2

    .line 740
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p2    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 741
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    iget v1, p0, Landroid/graphics/RectF;->left:F

    aput v1, p1, p2

    .line 742
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    aput v1, p1, v0

    .line 733
    return-void
.end method

.method public static convertRectToPoints([FIFFFF)V
    .locals 1
    .param p0, "result"    # [F
    .param p1, "resultIndex"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 757
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "resultIndex":I
    .local v0, "resultIndex":I
    aput p2, p0, p1

    .line 758
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p1    # "resultIndex":I
    aput p3, p0, v0

    .line 759
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    aput p4, p0, p1

    .line 760
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p1    # "resultIndex":I
    aput p3, p0, v0

    .line 761
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    aput p4, p0, p1

    .line 762
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "resultIndex":I
    .restart local p1    # "resultIndex":I
    aput p5, p0, v0

    .line 763
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "resultIndex":I
    .restart local v0    # "resultIndex":I
    aput p2, p0, p1

    .line 764
    aput p5, p0, v0

    .line 755
    return-void
.end method

.method public static getBoundingBox(Landroid/graphics/RectF;[FII)V
    .locals 9
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "points"    # [F
    .param p2, "pointIndex"    # I
    .param p3, "pointCount"    # I

    .prologue
    .line 777
    if-gtz p3, :cond_0

    .line 779
    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    .line 780
    return-void

    .line 782
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "pointIndex":I
    .local v3, "pointIndex":I
    aget v2, p1, p2

    .line 783
    .local v2, "left":F
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "pointIndex":I
    .restart local p2    # "pointIndex":I
    aget v5, p1, v3

    .line 784
    .local v5, "top":F
    move v4, v2

    .line 785
    .local v4, "right":F
    move v0, v5

    .line 786
    .local v0, "bottom":F
    const/4 v1, 0x1

    .local v1, "i":I
    move v3, p2

    .end local p2    # "pointIndex":I
    .restart local v3    # "pointIndex":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 788
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "pointIndex":I
    .restart local p2    # "pointIndex":I
    aget v6, p1, v3

    .line 789
    .local v6, "vertexX":F
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "pointIndex":I
    .restart local v3    # "pointIndex":I
    aget v7, p1, p2

    .line 790
    .local v7, "vertexY":F
    cmpg-float v8, v6, v2

    if-gez v8, :cond_3

    .line 791
    move v2, v6

    .line 794
    :cond_1
    :goto_1
    cmpg-float v8, v7, v5

    if-gez v8, :cond_4

    .line 795
    move v5, v7

    .line 786
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    :cond_3
    cmpl-float v8, v6, v4

    if-lez v8, :cond_1

    .line 793
    move v4, v6

    goto :goto_1

    .line 796
    :cond_4
    cmpl-float v8, v7, v0

    if-lez v8, :cond_2

    .line 797
    move v0, v7

    goto :goto_2

    .line 799
    .end local v6    # "vertexX":F
    .end local v7    # "vertexY":F
    :cond_5
    invoke-virtual {p0, v2, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 775
    return-void
.end method

.method public static getCentroid([FI[FII)V
    .locals 6
    .param p0, "dst"    # [F
    .param p1, "dstIndex"    # I
    .param p2, "src"    # [F
    .param p3, "srcIndex"    # I
    .param p4, "pointCount"    # I

    .prologue
    .line 813
    if-gtz p4, :cond_0

    .line 814
    return-void

    .line 815
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "srcIndex":I
    .local v2, "srcIndex":I
    aget v3, p2, p3

    .line 816
    .local v3, "x":F
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "srcIndex":I
    .restart local p3    # "srcIndex":I
    aget v4, p2, v2

    .line 817
    .local v4, "y":F
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    move v2, p3

    .end local p3    # "srcIndex":I
    .restart local v2    # "srcIndex":I
    :goto_0
    if-lez v1, :cond_1

    .line 819
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "srcIndex":I
    .restart local p3    # "srcIndex":I
    aget v5, p2, v2

    add-float/2addr v3, v5

    .line 820
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "srcIndex":I
    .restart local v2    # "srcIndex":I
    aget v5, p2, p3

    add-float/2addr v4, v5

    .line 817
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 822
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .local v0, "dstIndex":I
    int-to-float v5, p4

    div-float v5, v3, v5

    aput v5, p0, p1

    .line 823
    int-to-float v5, p4

    div-float v5, v4, v5

    aput v5, p0, v0

    .line 811
    return-void
.end method

.method private static isValidScalingFactor(FZ)Z
    .locals 1
    .param p0, "factor"    # F
    .param p1, "includeZero"    # Z

    .prologue
    .line 830
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 832
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .end local p1    # "includeZero":Z
    :goto_0
    return p1

    .restart local p1    # "includeZero":Z
    :cond_2
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static offsetPoints(FF[FI[FII)V
    .locals 4
    .param p0, "dx"    # F
    .param p1, "dy"    # F
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "src"    # [F
    .param p5, "srcIndex"    # I
    .param p6, "pointCount"    # I

    .prologue
    .line 848
    move v1, p6

    .local v1, "i":I
    move v2, p5

    .end local p5    # "srcIndex":I
    .local v2, "srcIndex":I
    move v0, p3

    .end local p3    # "dstIndex":I
    .local v0, "dstIndex":I
    :goto_0
    if-lez v1, :cond_0

    .line 850
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p3    # "dstIndex":I
    add-int/lit8 p5, v2, 0x1

    .end local v2    # "srcIndex":I
    .restart local p5    # "srcIndex":I
    aget v3, p4, v2

    add-float/2addr v3, p0

    aput v3, p2, v0

    .line 851
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    add-int/lit8 v2, p5, 0x1

    .end local p5    # "srcIndex":I
    .restart local v2    # "srcIndex":I
    aget v3, p4, p5

    add-float/2addr v3, p1

    aput v3, p2, p3

    .line 848
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 846
    :cond_0
    return-void
.end method

.method public static scalePoints(FFFF[FI[FII)V
    .locals 5
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "dst"    # [F
    .param p5, "dstIndex"    # I
    .param p6, "src"    # [F
    .param p7, "srcIndex"    # I
    .param p8, "pointCount"    # I

    .prologue
    move v1, p7

    .end local p7    # "srcIndex":I
    .local v1, "srcIndex":I
    move v0, p5

    .line 870
    .end local p5    # "dstIndex":I
    .local v0, "dstIndex":I
    :goto_0
    if-lez p8, :cond_0

    .line 872
    add-int/lit8 p7, v1, 0x1

    .end local v1    # "srcIndex":I
    .restart local p7    # "srcIndex":I
    aget v2, p6, v1

    .line 873
    .local v2, "x":F
    add-int/lit8 v1, p7, 0x1

    .end local p7    # "srcIndex":I
    .restart local v1    # "srcIndex":I
    aget v3, p6, p7

    .line 874
    .local v3, "y":F
    add-int/lit8 p5, v0, 0x1

    .end local v0    # "dstIndex":I
    .restart local p5    # "dstIndex":I
    sub-float v4, v2, p2

    mul-float/2addr v4, p0

    add-float/2addr v4, p2

    aput v4, p4, v0

    .line 875
    add-int/lit8 v0, p5, 0x1

    .end local p5    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    sub-float v4, v3, p3

    mul-float/2addr v4, p1

    add-float/2addr v4, p3

    aput v4, p4, p5

    .line 870
    add-int/lit8 p8, p8, -0x1

    goto :goto_0

    .line 868
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFF)V
    .locals 5
    .param p0, "dst"    # Landroid/graphics/Rect;
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F

    .prologue
    .line 891
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    mul-float v1, v4, p2

    .line 892
    .local v1, "leftSize":F
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v4, p5, v4

    mul-float v3, v4, p3

    .line 893
    .local v3, "topSize":F
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, p4

    mul-float v2, v4, p2

    .line 894
    .local v2, "rightSize":F
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, p5

    mul-float v0, v4, p3

    .line 895
    .local v0, "bottomSize":F
    sub-float v4, p4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 896
    sub-float v4, p5, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 897
    add-float v4, p4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 898
    add-float v4, p5, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    .line 889
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFI)V
    .locals 7
    .param p0, "dst"    # Landroid/graphics/Rect;
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 919
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 920
    .local v6, "pivot":[F
    invoke-static {v6, v1, p1, p4}, Lcom/oneplus/util/Geometry;->selectPivot([FILandroid/graphics/Rect;I)V

    .line 921
    aget v4, v6, v1

    const/4 v0, 0x1

    aget v5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFF)V

    .line 917
    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 5
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "pivotX"    # F
    .param p5, "pivotY"    # F

    .prologue
    .line 936
    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float v4, p4, v4

    mul-float v1, v4, p2

    .line 937
    .local v1, "leftSize":F
    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float v4, p5, v4

    mul-float v3, v4, p3

    .line 938
    .local v3, "topSize":F
    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p4

    mul-float v2, v4, p2

    .line 939
    .local v2, "rightSize":F
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, p5

    mul-float v0, v4, p3

    .line 940
    .local v0, "bottomSize":F
    sub-float v4, p4, v1

    iput v4, p0, Landroid/graphics/RectF;->left:F

    .line 941
    sub-float v4, p5, v3

    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 942
    add-float v4, p4, v2

    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 943
    add-float v4, p5, v0

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    .line 934
    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFI)V
    .locals 7
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 964
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 965
    .local v6, "pivot":[F
    invoke-static {v6, v1, p1, p4}, Lcom/oneplus/util/Geometry;->selectPivot([FILandroid/graphics/RectF;I)V

    .line 966
    aget v4, v6, v1

    const/4 v0, 0x1

    aget v5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/util/Geometry;->scaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 962
    return-void
.end method

.method public static selectPivot([FILandroid/graphics/Rect;I)V
    .locals 2
    .param p0, "dst"    # [F
    .param p1, "dstIndex"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    .line 986
    const/high16 v1, 0x20000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    .line 987
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .local v0, "dstIndex":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, p0, p1

    move p1, v0

    .line 992
    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    :goto_0
    const/high16 v1, 0x40000

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    .line 993
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, p0, p1

    .line 984
    :goto_1
    return-void

    .line 988
    :cond_0
    const/high16 v1, 0x80000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 989
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, p0, p1

    move p1, v0

    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    goto :goto_0

    .line 991
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, p1

    move p1, v0

    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    goto :goto_0

    .line 994
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    .line 995
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, p0, p1

    goto :goto_1

    .line 997
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, p1

    goto :goto_1
.end method

.method public static selectPivot([FILandroid/graphics/RectF;I)V
    .locals 2
    .param p0, "dst"    # [F
    .param p1, "dstIndex"    # I
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "flags"    # I

    .prologue
    .line 1017
    const/high16 v1, 0x20000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    .line 1018
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .local v0, "dstIndex":I
    iget v1, p2, Landroid/graphics/RectF;->left:F

    aput v1, p0, p1

    move p1, v0

    .line 1023
    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    :goto_0
    const/high16 v1, 0x40000

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    .line 1024
    iget v1, p2, Landroid/graphics/RectF;->top:F

    aput v1, p0, p1

    .line 1015
    :goto_1
    return-void

    .line 1019
    :cond_0
    const/high16 v1, 0x80000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 1020
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    iget v1, p2, Landroid/graphics/RectF;->right:F

    aput v1, p0, p1

    move p1, v0

    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    goto :goto_0

    .line 1022
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "dstIndex":I
    .restart local v0    # "dstIndex":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    aput v1, p0, p1

    move p1, v0

    .end local v0    # "dstIndex":I
    .restart local p1    # "dstIndex":I
    goto :goto_0

    .line 1025
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    .line 1026
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    aput v1, p0, p1

    goto :goto_1

    .line 1028
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    aput v1, p0, p1

    goto :goto_1
.end method
