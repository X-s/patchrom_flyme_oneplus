.class public Lcom/android/internal/policy/impl/UcPowerAnimation;
.super Landroid/graphics/drawable/Drawable;
.source "UcPowerAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    }
.end annotation


# static fields
.field public static final CIRCLE_COLOR_PROPERTY:Ljava/lang/String; = "circleColor"

.field public static final CIRCLE_SCALE_PROPERTY:Ljava/lang/String; = "circleScale"

.field public static final OUTLINE_COLOR_PROPERTY:Ljava/lang/String; = "outlineColor"

.field public static final PROGRESS_FACTOR:I = -0x168

.field public static final PROGRESS_PROPERTY:Ljava/lang/String; = "progress"

.field public static final RING_COLOR_PROPERTY:Ljava/lang/String; = "ringColor"

.field public static final TAG:Ljava/lang/String; = "UcPowerAnimation"


# instance fields
.field protected final arcElements:Landroid/graphics/RectF;

.field protected centerColor:I

.field protected circleScale:F

.field private curprogress:F

.field protected indeterminate:Z

.field private lastprogress:F

.field protected lineprogress:F

.field private liney:F

.field private mOffsetRadius:I

.field protected outlineColor:I

.field protected paint:Landroid/graphics/Paint;

.field protected progress:F

.field protected ringColor:I

.field protected final ringWidth:I


# direct methods
.method constructor <init>(IFIII)V
    .locals 2
    .param p1, "ringWidth"    # I
    .param p2, "circleScale"    # F
    .param p3, "outlineColor"    # I
    .param p4, "ringColor"    # I
    .param p5, "centerColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->liney:F

    .line 56
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->curprogress:F

    .line 58
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->mOffsetRadius:I

    .line 62
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 63
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    .line 64
    iput p3, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->outlineColor:I

    .line 65
    iput p4, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    .line 66
    iput p5, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->centerColor:I

    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringWidth:I

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->arcElements:Landroid/graphics/RectF;

    .line 71
    iput p2, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->circleScale:F

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    .line 74
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    .line 75
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->curprogress:F

    .line 76
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->liney:F

    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->initPaint()V

    .line 79
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 95
    .local v16, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 96
    .local v22, "size":I
    div-int/lit8 v1, v22, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v21, v0

    .line 97
    .local v21, "outerRadius":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v21

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v19, v1, v2

    .line 98
    .local v19, "offsetX":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v21

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v20, v1, v2

    .line 101
    .local v20, "offsetY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->centerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v1, v21

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, v21

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->mOffsetRadius:I

    int-to-float v6, v6

    add-float v5, v1, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->liney:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 106
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->mOffsetRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->liney:F

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 110
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v21

    .line 111
    .local v5, "dy":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->mOffsetRadius:I

    int-to-float v2, v2

    add-float v18, v1, v2

    .line 112
    .local v18, "offset":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    add-float/2addr v1, v5

    cmpg-float v1, v1, v18

    if-gez v1, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    add-float/2addr v5, v1

    .line 117
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v1, v21

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    .end local v5    # "dy":F
    .end local v18    # "offset":F
    :cond_1
    const/16 v17, 0x0

    .line 122
    .local v17, "halfRingWidth":I
    move/from16 v0, v17

    int-to-float v1, v0

    add-float v13, v19, v1

    .line 123
    .local v13, "arcX0":F
    move/from16 v0, v17

    int-to-float v1, v0

    add-float v15, v20, v1

    .line 124
    .local v15, "arcY0":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v21

    add-float v1, v1, v19

    move/from16 v0, v17

    int-to-float v2, v0

    sub-float v12, v1, v2

    .line 125
    .local v12, "arcX":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v21

    add-float v1, v1, v20

    move/from16 v0, v17

    int-to-float v2, v0

    sub-float v14, v1, v2

    .line 128
    .local v14, "arcY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->centerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->arcElements:Landroid/graphics/RectF;

    invoke-virtual {v1, v13, v15, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->arcElements:Landroid/graphics/RectF;

    const/high16 v8, 0x43a50000    # 330.0f

    const/high16 v9, 0x43700000    # 240.0f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->arcElements:Landroid/graphics/RectF;

    invoke-virtual {v1, v13, v15, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    if-eqz v1, :cond_4

    .line 147
    :cond_2
    :goto_1
    return-void

    .line 115
    .end local v12    # "arcX":F
    .end local v13    # "arcX0":F
    .end local v14    # "arcY":F
    .end local v15    # "arcY0":F
    .end local v17    # "halfRingWidth":I
    .restart local v5    # "dy":F
    .restart local v18    # "offset":F
    :cond_3
    move/from16 v5, v18

    goto/16 :goto_0

    .line 141
    .end local v5    # "dy":F
    .end local v18    # "offset":F
    .restart local v12    # "arcX":F
    .restart local v13    # "arcX0":F
    .restart local v14    # "arcY":F
    .restart local v15    # "arcY0":F
    .restart local v17    # "halfRingWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->arcElements:Landroid/graphics/RectF;

    const/high16 v8, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getCenterColor()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->centerColor:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->circleScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->outlineColor:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRingColor()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    return v0
.end method

.method public initProgress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 170
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    .line 171
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    .line 172
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->curprogress:F

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 175
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    return-void
.end method

.method public setCenterColor(I)V
    .locals 0
    .param p1, "centerColor"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->centerColor:I

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 258
    return-void
.end method

.method public setCircleScale(F)V
    .locals 0
    .param p1, "circleScale"    # F

    .prologue
    .line 220
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->circleScale:F

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 222
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 157
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    .line 231
    return-void
.end method

.method public setOutlineColor(I)V
    .locals 0
    .param p1, "outlineColor"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->outlineColor:I

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 248
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, -0x3c900000    # -240.0f

    .line 192
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    if-eqz v0, :cond_2

    .line 193
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 196
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->liney:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 201
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 202
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    .line 205
    :cond_3
    const v0, 0x3fb33333    # 1.4f

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lastprogress:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->lineprogress:F

    .line 206
    iput v2, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    goto :goto_0
.end method

.method public setProgressEx()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->indeterminate:Z

    if-eqz v0, :cond_0

    .line 180
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 189
    return-void

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 183
    iget v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    goto :goto_0

    .line 185
    :cond_1
    iput v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->progress:F

    goto :goto_0
.end method

.method public setRingColor(I)V
    .locals 0
    .param p1, "ringColor"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation;->ringColor:I

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->invalidateSelf()V

    .line 253
    return-void
.end method
