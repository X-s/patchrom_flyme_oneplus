.class public Lcom/oneplus/camera/manual/EVKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "EVKnobView.java"


# static fields
.field private static final EPSILON_PRECISION:F = 10000.0f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oneplus/camera/manual/EVKnobView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/manual/EVKnobView;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/EVKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private isInteger(F)Z
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "result":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    rem-int/lit16 v0, v2, 0x2710

    .line 152
    .local v0, "checkNumber":I
    if-eqz v0, :cond_0

    const/16 v2, 0x270f

    if-ne v0, v2, :cond_1

    .line 153
    :cond_0
    const/4 v1, 0x1

    .line 155
    :cond_1
    return v1
.end method

.method private isZero(F)Z
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onExposureCompChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/EVKnobView;->onSetupIcons()Z

    .line 34
    return-void
.end method

.method protected onSetupIcons()Z
    .locals 30

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/EVKnobView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/CameraActivity;

    .line 48
    .local v16, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 49
    .local v26, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/EVKnobView;->setIconPadding(I)V

    .line 52
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/Camera;

    .line 53
    .local v15, "camera":Lcom/oneplus/camera/Camera;
    if-nez v15, :cond_0

    .line 54
    const/4 v2, 0x0

    return v2

    .line 56
    :cond_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v24, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Range;

    .line 58
    .local v20, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 60
    :cond_1
    sget-object v2, Lcom/oneplus/camera/manual/EVKnobView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSetupIcons() - evRange is not valid."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x0

    return v2

    .line 65
    :cond_2
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 66
    .local v13, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v2, 0x7f0c0037

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    new-instance v14, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v14}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 69
    .local v14, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v2, 0x7f0c0038

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 71
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 72
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v7, 0x0

    aput v4, v2, v7

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 73
    sget-object v2, Lcom/oneplus/camera/manual/EVKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f0d0091

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v11, 0x0

    .line 78
    .local v11, "positiveValueCount":I
    const/16 v25, 0x0

    .line 79
    .local v25, "negtiveValueCount":I
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 80
    .local v21, "evStep":F
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v19, "evCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .local v22, "fValue":F
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_5

    .line 83
    const v2, 0x461c4000    # 10000.0f

    mul-float v2, v2, v22

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x461c4000    # 10000.0f

    div-float v27, v2, v4

    .line 84
    .local v27, "roundedValue":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/EVKnobView;->isZero(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-lez v2, :cond_4

    .line 87
    add-int/lit8 v11, v11, 0x1

    .line 92
    :cond_3
    :goto_1
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sub-float v22, v22, v21

    goto :goto_0

    .line 89
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 96
    .end local v27    # "roundedValue":F
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 97
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_6
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_b

    .line 102
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v28

    .line 104
    .local v28, "value":F
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/EVKnobView;->isZero(F)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 107
    :cond_7
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 108
    .local v17, "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0037

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 109
    new-instance v18, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v18 .. v18}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 110
    .local v18, "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0038

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/EVKnobView;->isInteger(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 113
    move/from16 v0, v28

    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 114
    .local v29, "valueStr":Ljava/lang/String;
    const/4 v2, 0x0

    cmpl-float v2, v28, v2

    if-lez v2, :cond_8

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 117
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v29    # "valueStr":Ljava/lang/String;
    :cond_9
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 122
    .local v5, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v7, 0x0

    aput v4, v2, v7

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    sget-object v2, Lcom/oneplus/camera/manual/EVKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 124
    const-string/jumbo v2, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "text":Ljava/lang/String;
    const/4 v2, 0x0

    cmpl-float v2, v28, v2

    if-lez v2, :cond_a

    .line 126
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    sub-int v7, v11, v23

    move/from16 v0, v28

    float-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 128
    :cond_a
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    sub-int v7, v25, v23

    move/from16 v0, v28

    float-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 133
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v6    # "text":Ljava/lang/String;
    .end local v17    # "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v18    # "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v28    # "value":F
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 134
    .local v9, "angle":I
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 135
    .local v12, "autoAngle":I
    new-instance v7, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v8, v9

    move/from16 v0, v25

    neg-int v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/manual/EVKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/EVKnobView;->setKnobItems(Ljava/util/List;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/EVKnobView;->invalidate()V

    .line 143
    const/4 v2, 0x1

    return v2
.end method
