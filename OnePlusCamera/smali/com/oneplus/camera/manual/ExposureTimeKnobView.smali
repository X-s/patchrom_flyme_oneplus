.class public Lcom/oneplus/camera/manual/ExposureTimeKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "ExposureTimeKnobView.java"


# static fields
.field private static final EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

.field private static final EXPOSURE_TIME_COUNT_PER_INDICATOR:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1/8000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1/6400"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1/5000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1/4000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1/3200"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1/2500"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1/2000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1/1600"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1/1250"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1/1000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1/800"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1/640"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1/500"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1/400"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1/320"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1/250"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "1/200"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "1/160"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "1/125"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "1/100"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "1/80"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1/60"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "1/50"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "1/40"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "1/30"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "1/25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1/20"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1/15"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "1/13"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "1/10"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "1/8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "1/6"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "1/5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "1/4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "1/3"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "0.4"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "0.5"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "0.6"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "0.8"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "1.3"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "1.6"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "2.5"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "30"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected setupIcons()V
    .locals 30

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/CameraActivity;

    .line 49
    .local v15, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07007e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 50
    .local v25, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setIconPadding(I)V

    .line 53
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/Camera;

    .line 54
    .local v14, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v14, :cond_8

    .line 56
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v24, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Range;

    .line 60
    .local v26, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    new-instance v12, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v12}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 61
    .local v12, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f090044

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f0a0014

    invoke-virtual {v12, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 63
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 64
    .local v13, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f090044

    invoke-virtual {v15, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f0a0015

    invoke-virtual {v13, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 66
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const v6, -0x10100a1

    aput v6, v2, v4

    invoke-virtual {v3, v2, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f090044

    invoke-virtual {v15, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v19, "exposureTimeCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v21, "exposureTimeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 77
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    aget-object v18, v2, v22

    .line 79
    .local v18, "exposureTimeCandidate":Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-static/range {v18 .. v18}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 85
    .local v20, "exposureTimeValue":Ljava/lang/Long;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v2, v6, v28

    if-ltz v2, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v26 .. v26}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v2, v6, v28

    if-lez v2, :cond_2

    .line 74
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 82
    .end local v20    # "exposureTimeValue":Ljava/lang/Long;
    :cond_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v28

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .restart local v20    # "exposureTimeValue":Ljava/lang/Long;
    goto :goto_1

    .line 89
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 94
    .end local v18    # "exposureTimeCandidate":Ljava/lang/String;
    .end local v20    # "exposureTimeValue":Ljava/lang/Long;
    :cond_3
    const/16 v22, 0x0

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 96
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    const/16 v23, 0x1

    .line 97
    .local v23, "isLastItem":Z
    :goto_4
    new-instance v16, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v16 .. v16}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 98
    .local v16, "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0a0014

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 100
    .local v17, "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0a0015

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    rem-int/lit8 v2, v22, 0x9

    if-eqz v2, :cond_4

    if-eqz v23, :cond_5

    .line 104
    :cond_4
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_5
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 108
    .local v5, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const v6, -0x10100a1

    aput v6, v2, v4

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 109
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    sub-int v7, v22, v2

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v7, v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 96
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v16    # "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v17    # "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v23    # "isLastItem":Z
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 115
    :cond_7
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 116
    .local v8, "angle":I
    invoke-virtual {v15}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 117
    .local v11, "autoAngle":I
    new-instance v6, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v7, v8

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    neg-int v9, v2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setKnobItems(Ljava/util/List;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->invalidate()V

    .line 126
    .end local v3    # "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v8    # "angle":I
    .end local v11    # "autoAngle":I
    .end local v12    # "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v13    # "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v19    # "exposureTimeCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "exposureTimeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v22    # "i":I
    .end local v24    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    .end local v26    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_8
    return-void
.end method
