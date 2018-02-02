.class public Lcom/oneplus/camera/manual/FocusKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "FocusKnobView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/FocusKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onSetupIcons()Z
    .locals 24

    .prologue
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/FocusKnobView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/CameraActivity;

    .line 37
    .local v16, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 38
    .local v22, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/FocusKnobView;->setIconPadding(I)V

    .line 41
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/Camera;

    .line 42
    .local v15, "camera":Lcom/oneplus/camera/Camera;
    if-nez v15, :cond_0

    .line 43
    const/4 v2, 0x0

    return v2

    .line 45
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v21, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/Range;

    .line 47
    .local v23, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 48
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 51
    :cond_2
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 52
    .local v13, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v2, 0x7f0c0028

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 54
    new-instance v14, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v14}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 55
    .local v14, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f0c0029

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 57
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 58
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v7, 0x0

    aput v4, v2, v7

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    sget-object v2, Lcom/oneplus/camera/manual/FocusKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FOCUS_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .line 64
    .local v19, "focusStep":F
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v18, "focusCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .local v17, "fValue":F
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v17, v2

    if-ltz v2, :cond_3

    .line 66
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sub-float v17, v17, v19

    goto :goto_0

    .line 68
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 69
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual/range {v23 .. v23}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_4
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_7

    .line 75
    if-nez v20, :cond_5

    .line 76
    const v2, 0x7f02008d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 82
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    const v2, 0x7f0b006a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "text":Ljava/lang/String;
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    sub-int v7, v20, v2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 77
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "text":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    .line 78
    const v2, 0x7f02008c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 80
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    new-instance v5, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v5}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 88
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/manual/FocusKnobView;->setDashAroundAutoEnabled(Z)V

    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 92
    .local v9, "angle":I
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 93
    .local v12, "autoAngle":I
    new-instance v7, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v8, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    neg-int v10, v2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oneplus/camera/manual/FocusKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/FocusKnobView;->setKnobItems(Ljava/util/List;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/FocusKnobView;->invalidate()V

    .line 101
    const/4 v2, 0x1

    return v2
.end method
