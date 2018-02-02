.class public Lcom/oneplus/camera/manual/ColorTemperatureKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "ColorTemperatureKnobView.java"


# static fields
.field private static final COLOR_TEMPERATURE_LOWER_BOUND:I = 0x8fc

.field private static final COLOR_TEMPERATURE_STEP:I = 0xa

.field private static final COLOR_TEMPERATURE_UPPER_BOUND:I = 0x1d4c

.field public static final CT_CANDIDATES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    const/16 v0, 0x8fc

    const/16 v1, 0xdac

    const/16 v2, 0x12c0

    const/16 v3, 0x17d4

    const/16 v4, 0x1d4c

    .line 19
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->CT_CANDIDATES:[I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private isCandidate(I)Z
    .locals 5
    .param p1, "ctValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v3, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->CT_CANDIDATES:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 40
    .local v0, "value":I
    if-ne p1, v0, :cond_0

    .line 41
    const/4 v1, 0x1

    return v1

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "value":I
    :cond_1
    return v2
.end method


# virtual methods
.method protected onSetupIcons()Z
    .locals 24

    .prologue
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraActivity;

    .line 52
    .local v15, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 53
    .local v21, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->setIconPadding(I)V

    .line 56
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/Camera;

    .line 57
    .local v14, "camera":Lcom/oneplus/camera/Camera;
    if-nez v14, :cond_0

    .line 58
    const/4 v2, 0x0

    return v2

    .line 60
    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v20, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Range;

    .line 62
    .local v22, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 63
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 66
    :cond_2
    new-instance v12, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v12}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 67
    .local v12, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v2, 0x7f0c0037

    invoke-virtual {v12, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 70
    .local v13, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v2, 0x7f0c0038

    invoke-virtual {v13, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 72
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 73
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    invoke-virtual {v3, v2, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    sget-object v2, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f0d0091

    invoke-virtual {v15, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v16, "colorTemperatureCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v19, 0x8fc

    .local v19, "i":I
    :goto_0
    const/16 v2, 0x1d4c

    move/from16 v0, v19

    if-gt v0, v2, :cond_3

    .line 80
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v19, v19, 0xa

    goto :goto_0

    .line 83
    :cond_3
    const/16 v19, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    .line 86
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 88
    .local v23, "value":I
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 89
    .local v17, "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0037

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 90
    new-instance v18, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v18 .. v18}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 91
    .local v18, "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0038

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 92
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->isCandidate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_4
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 98
    .local v5, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    sget-object v2, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "K"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    sub-int v7, v19, v2

    move/from16 v0, v23

    int-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "K"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v19, 0x1

    move/from16 v0, v23

    int-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 106
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v17    # "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v18    # "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v23    # "value":I
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->setDashAroundAutoEnabled(Z)V

    .line 109
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 110
    .local v8, "angle":I
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 111
    .local v11, "autoAngle":I
    new-instance v6, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v7, v8

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    neg-int v9, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->setKnobItems(Ljava/util/List;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ColorTemperatureKnobView;->invalidate()V

    .line 119
    const/4 v2, 0x1

    return v2
.end method
