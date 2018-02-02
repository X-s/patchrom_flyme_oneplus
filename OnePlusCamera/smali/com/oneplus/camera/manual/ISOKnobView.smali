.class public Lcom/oneplus/camera/manual/ISOKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "ISOKnobView.java"


# static fields
.field public static final ISO_CANDIDATES:[Ljava/lang/String;

.field private static final ISO_COUNT_PER_INDICATOR:I = 0x3

.field public static final ISO_TOLERANT:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "100"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "125"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "160"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 21
    const-string/jumbo v1, "200"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "250"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "320"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 22
    const-string/jumbo v1, "400"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "500"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "640"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "800"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "1000"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "1250"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "1600"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "2000"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "2500"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "3200"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "4000"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "5000"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "6400"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "12800"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 19
    sput-object v0, Lcom/oneplus/camera/manual/ISOKnobView;->ISO_CANDIDATES:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ISOKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onSetupIcons()Z
    .locals 27

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ISOKnobView;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraActivity;

    .line 50
    .local v15, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 51
    .local v25, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ISOKnobView;->setIconPadding(I)V

    .line 54
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/Camera;

    .line 55
    .local v14, "camera":Lcom/oneplus/camera/Camera;
    if-nez v14, :cond_0

    .line 56
    const/4 v2, 0x0

    return v2

    .line 58
    :cond_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v24, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Range;

    .line 60
    .local v26, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 61
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 64
    :cond_2
    new-instance v12, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v12}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 65
    .local v12, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v2, 0x7f0c0037

    invoke-virtual {v12, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 68
    .local v13, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0d0091

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f0c0038

    invoke-virtual {v13, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 70
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 71
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    invoke-virtual {v3, v2, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    sget-object v2, Lcom/oneplus/camera/manual/ISOKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 73
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f0d0091

    invoke-virtual {v15, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v21, "isoCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v23, "isoValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    sget-object v2, Lcom/oneplus/camera/manual/ISOKnobView;->ISO_CANDIDATES:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 81
    sget-object v2, Lcom/oneplus/camera/manual/ISOKnobView;->ISO_CANDIDATES:[Ljava/lang/String;

    aget-object v20, v2, v18

    .line 82
    .local v20, "isoCandidate":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 85
    .local v22, "isoValue":I
    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_3

    add-int/lit8 v4, v22, -0x32

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v4, v2, :cond_4

    .line 78
    :cond_3
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 89
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v20    # "isoCandidate":Ljava/lang/String;
    .end local v22    # "isoValue":I
    :cond_5
    const/16 v18, 0x0

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 96
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    const/16 v19, 0x1

    .line 97
    .local v19, "isLastItem":Z
    :goto_3
    new-instance v16, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v16 .. v16}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 98
    .local v16, "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0037

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 100
    .local v17, "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0038

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    rem-int/lit8 v2, v18, 0x3

    if-eqz v2, :cond_6

    if-eqz v19, :cond_7

    .line 103
    :cond_6
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_7
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 107
    .local v5, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 108
    sget-object v2, Lcom/oneplus/camera/manual/ISOKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 109
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    sub-int v7, v18, v2

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 96
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v16    # "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v17    # "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v19    # "isLastItem":Z
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "isLastItem":Z
    goto/16 :goto_3

    .line 114
    .end local v19    # "isLastItem":Z
    :cond_9
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 115
    .local v8, "angle":I
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0009

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 116
    .local v11, "autoAngle":I
    new-instance v6, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v7, v8

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    neg-int v9, v2

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/ISOKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ISOKnobView;->setKnobItems(Ljava/util/List;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ISOKnobView;->invalidate()V

    .line 124
    const/4 v2, 0x1

    return v2
.end method
