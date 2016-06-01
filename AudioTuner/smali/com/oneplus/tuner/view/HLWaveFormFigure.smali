.class public Lcom/oneplus/tuner/view/HLWaveFormFigure;
.super Landroid/view/View;
.source "HLWaveFormFigure.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HLWaveFormFigure"


# instance fields
.field private PADDING_X:F

.field private kHillSegmentWidth:I

.field private mBaseHeight:F

.field private mPa:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:I

.field private mScaleHeight:F

.field private mScalewidth:F

.field private m_WaveformFigure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field pt0:Landroid/graphics/PointF;

.field pt1:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->kHillSegmentWidth:I

    .line 23
    const/16 v0, 0x18

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScale:I

    .line 27
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPa:[F

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->PADDING_X:F

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt0:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    const v1, -0xaaaa47

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    return-void
.end method

.method private generatePoint()V
    .locals 7

    .prologue
    .line 93
    iget-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScalewidth:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->PADDING_X:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mBaseHeight:F

    iget-object v5, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPa:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScaleHeight:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public loadParamenter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPa:[F

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    aget v2, v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v0

    .line 88
    iget-object v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public notifyChange(IF)V
    .locals 5
    .param p1, "effParam"    # I
    .param p2, "scale"    # F

    .prologue
    .line 102
    const-string v0, "HLWaveFormFigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange effParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPa:[F

    aput p2, v0, p1

    .line 104
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScalewidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->PADDING_X:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mBaseHeight:F

    iget v4, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScaleHeight:F

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/HLWaveFormFigure;->postInvalidate()V

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    const-string v2, "cbt"

    const-string v3, "onDraw"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v11, v2, :cond_1

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 66
    .local v15, "p0":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->m_WaveformFigure:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    .line 68
    .local v16, "p1":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->kHillSegmentWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 70
    .local v12, "hSegments":D
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    double-to-float v3, v12

    div-float v10, v2, v3

    .line 71
    .local v10, "dx":F
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v12

    double-to-float v9, v2

    .line 72
    .local v9, "da":F
    iget v2, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v17, v2, v3

    .line 73
    .local v17, "ymid":F
    iget v2, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 75
    .local v8, "ampl":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt0:Landroid/graphics/PointF;

    iget v3, v15, Landroid/graphics/PointF;->x:F

    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 76
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    int-to-double v2, v14

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    iget v3, v15, Landroid/graphics/PointF;->x:F

    int-to-float v4, v14

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    move/from16 v0, v17

    float-to-double v4, v0

    float-to-double v6, v8

    int-to-float v0, v14

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v6, v6, v18

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt0:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt0:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt0:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->pt1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 76
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 83
    .end local v8    # "ampl":F
    .end local v9    # "da":F
    .end local v10    # "dx":F
    .end local v12    # "hSegments":D
    .end local v14    # "j":I
    .end local v15    # "p0":Landroid/graphics/PointF;
    .end local v16    # "p1":Landroid/graphics/PointF;
    .end local v17    # "ymid":F
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v3, 0x41a80000    # 21.0f

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 47
    int-to-float v1, p2

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mBaseHeight:F

    .line 48
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScale:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScaleHeight:F

    .line 49
    const/4 v0, 0x2

    .line 52
    .local v0, "more":I
    int-to-float v1, p1

    const/4 v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->PADDING_X:F

    .line 54
    int-to-float v1, p1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScalewidth:F

    .line 55
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "05161--mScalewidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/tuner/view/HLWaveFormFigure;->mScalewidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/oneplus/tuner/view/HLWaveFormFigure;->generatePoint()V

    .line 57
    return-void
.end method
