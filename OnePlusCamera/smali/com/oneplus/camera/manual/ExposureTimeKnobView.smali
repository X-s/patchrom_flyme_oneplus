.class public Lcom/oneplus/camera/manual/ExposureTimeKnobView;
.super Lcom/oneplus/camera/manual/KnobView;
.source "ExposureTimeKnobView.java"


# static fields
.field private static final COUNT_PER_INTERVAL_MAX:I = 0x9

.field private static final COUNT_PER_INTERVAL_MIN:I = 0x5

.field private static final DEGREE_PER_INTERVAL:I = 0x19

.field public static final EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

.field private static final INDICATOR_COUNT_MAX:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "1/8000"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/6400"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/5000"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/4000"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/3200"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/2500"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/2000"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/1600"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/1250"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "1/1000"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/800"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/640"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/500"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/400"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/320"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/250"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/200"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/160"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "1/125"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/100"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/80"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/60"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/50"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/40"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/30"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/25"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/20"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "1/15"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/13"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/10"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/8"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/6"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/5"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/4"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/3"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "0.4"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "0.5"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "0.6"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "0.8"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "1.3"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "1.6"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "2.5"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "4"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "10"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "13"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "15"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "20"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "25"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "30"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 21
    sput-object v0, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
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
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private findPreferredIntervalCount(I)I
    .locals 6
    .param p1, "totalCount"    # I

    .prologue
    .line 55
    const/16 v3, 0x9

    .line 56
    .local v3, "result":I
    const v1, 0x7fffffff

    .line 57
    .local v1, "minRemainder":I
    const/16 v0, 0x9

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-lt v0, v4, :cond_0

    .line 59
    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x40e00000    # 7.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 68
    :cond_0
    return v3

    .line 61
    :cond_1
    rem-int v4, p1, v0

    add-int/lit8 v5, v0, -0x1

    add-int/2addr v4, v5

    rem-int v2, v4, v0

    .line 62
    .local v2, "remainder":I
    if-le v1, v2, :cond_2

    .line 64
    move v1, v2

    .line 65
    move v3, v0

    .line 57
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private findPreferredKnobViewAngle(I)I
    .locals 1
    .param p1, "indicatorCount"    # I

    .prologue
    .line 48
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x19

    return v0
.end method


# virtual methods
.method protected onSetupIcons()Z
    .locals 34

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/CameraActivity;

    .line 79
    .local v16, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 80
    .local v27, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setIconPadding(I)V

    .line 83
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/Camera;

    .line 84
    .local v15, "camera":Lcom/oneplus/camera/Camera;
    if-nez v15, :cond_0

    .line 85
    const/4 v2, 0x0

    return v2

    .line 87
    :cond_0
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v26, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Range;

    .line 89
    .local v29, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v29, :cond_1

    invoke-virtual/range {v29 .. v29}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v32, 0x0

    cmp-long v2, v6, v32

    if-nez v2, :cond_2

    invoke-virtual/range {v29 .. v29}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v32, 0x0

    cmp-long v2, v6, v32

    if-nez v2, :cond_2

    .line 90
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 93
    :cond_2
    new-instance v13, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v13}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 94
    .local v13, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0c0028

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 96
    new-instance v14, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct {v14}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 97
    .local v14, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v2, 0x7f0c0029

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 100
    .local v3, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    invoke-virtual {v3, v2, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v2, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    const v4, 0x7f0b0069

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v20, "exposureTimeCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v22, "exposureTimeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_6

    .line 110
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->EXPOSURE_TIME_CANDIDATES:[Ljava/lang/String;

    aget-object v19, v2, v23

    .line 112
    .local v19, "exposureTimeCandidate":Ljava/lang/String;
    const-string/jumbo v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    invoke-static/range {v19 .. v19}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 118
    .local v21, "exposureTimeValue":Ljava/lang/Long;
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v29 .. v29}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    cmp-long v2, v6, v32

    if-ltz v2, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v29 .. v29}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    cmp-long v2, v6, v32

    if-lez v2, :cond_5

    .line 107
    :cond_3
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 115
    .end local v21    # "exposureTimeValue":Ljava/lang/Long;
    :cond_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v32

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .restart local v21    # "exposureTimeValue":Ljava/lang/Long;
    goto :goto_1

    .line 122
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    .end local v19    # "exposureTimeCandidate":Ljava/lang/String;
    .end local v21    # "exposureTimeValue":Ljava/lang/Long;
    :cond_6
    const/16 v24, 0x0

    .line 128
    .local v24, "indicatorCount":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->findPreferredIntervalCount(I)I

    move-result v28

    .line 129
    .local v28, "preferredIntervalCount":I
    const/16 v23, 0x0

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_a

    .line 131
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    const/16 v25, 0x1

    .line 132
    .local v25, "isLastItem":Z
    :goto_4
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 133
    .local v17, "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0028

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    new-instance v18, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v18 .. v18}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 135
    .local v18, "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f0c0029

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 136
    rem-int v2, v23, v28

    if-eqz v2, :cond_7

    if-eqz v25, :cond_8

    .line 139
    :cond_7
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 140
    .local v30, "text":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 144
    add-int/lit8 v24, v24, 0x1

    .line 146
    .end local v30    # "text":Ljava/lang/String;
    :cond_8
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 147
    .local v5, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, -0x10100a1

    const/4 v6, 0x0

    aput v4, v2, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    sget-object v2, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    sub-int v7, v23, v2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v4, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v7, v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 131
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v17    # "drawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v18    # "drawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v25    # "isLastItem":Z
    :cond_9
    const/16 v25, 0x0

    .restart local v25    # "isLastItem":Z
    goto/16 :goto_4

    .line 154
    .end local v25    # "isLastItem":Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->findPreferredKnobViewAngle(I)I

    move-result v8

    .line 155
    .local v8, "angle":I
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 156
    .local v12, "angleMax":I
    if-le v8, v12, :cond_b

    .line 157
    move v8, v12

    .line 158
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 159
    .local v11, "autoAngle":I
    new-instance v6, Lcom/oneplus/camera/manual/KnobInfo;

    neg-int v7, v8

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    neg-int v9, v2

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->setKnobItems(Ljava/util/List;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/ExposureTimeKnobView;->invalidate()V

    .line 167
    const/4 v2, 0x1

    return v2
.end method
