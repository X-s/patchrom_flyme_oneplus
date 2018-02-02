.class public Lcom/oneplus/camera/manual/KnobView;
.super Landroid/view/View;
.source "KnobView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/KnobView$RotationState;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_DISTANCE_ROTATION_CENTER:I = 0x32


# instance fields
.field private m_BackgroundPaint:Landroid/graphics/Paint;

.field private m_DashAroundAutoEnabled:Z

.field private m_DashBounds:Landroid/graphics/Rect;

.field private m_DashLength:I

.field private m_DashPadding:I

.field private m_DrawableCurrentDegree:D

.field private m_DrawableLastDegree:D

.field private m_IconPadding:I

.field private m_InitRadius:D

.field private m_IsSetupIcons:Z

.field private m_IsTouching:Z

.field private m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

.field private m_KnobItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/manual/KnobItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_KnobItemsSelfRotation:F

.field private m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

.field private m_Paint:Landroid/graphics/Paint;

.field private m_RotationCenter:Landroid/graphics/PointF;

.field private m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

.field private m_Tick:I

.field private m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;


# direct methods
.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/KnobView;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/KnobView;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/manual/KnobView;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/manual/KnobView;D)V
    .locals 1
    .param p1, "rotation"    # D

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotation(D)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 49
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 50
    iput v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashLength:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashPadding:I

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->setupIcons()Z

    .line 69
    return-void
.end method

.method private evaluateRotation(FF)D
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 200
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, v2

    neg-float v0, v2

    .line 201
    .local v0, "xx":F
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v2

    .line 204
    .local v1, "yy":F
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private evaluateRotationCenter()Landroid/graphics/PointF;
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 211
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v3

    .line 212
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getHeight()I

    move-result v2

    .line 213
    .local v2, "height":I
    int-to-float v6, v3

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 214
    .local v0, "fanEdge":D
    div-double v6, v0, v10

    int-to-double v8, v2

    div-double/2addr v8, v0

    div-double v4, v6, v8

    .line 215
    .local v4, "y":D
    new-instance v6, Landroid/graphics/PointF;

    int-to-float v7, v3

    div-float/2addr v7, v12

    double-to-float v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;
    .locals 4
    .param p1, "tick"    # I

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 230
    return-object v3

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 233
    .local v0, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-ne v2, p1, :cond_1

    .line 234
    return-object v0

    .line 236
    .end local v0    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_2
    return-object v3
.end method

.method private isTooCloseToCenter(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 250
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 251
    .local v0, "result":D
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mapRotationToTick(D)I
    .locals 19
    .param p1, "rotation"    # D

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v5, :cond_0

    .line 259
    const/4 v5, 0x0

    return v5

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    int-to-double v8, v5

    .line 261
    .local v8, "knobAngle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    int-to-double v10, v5

    .line 262
    .local v10, "knobSteps":D
    div-double v6, v8, v10

    .line 263
    .local v6, "includedAngle":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 264
    .local v12, "preDiffAngle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v4, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    if-gt v4, v5, :cond_3

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->signum(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v16, v0

    mul-int v5, v5, v16

    div-int/lit8 v5, v5, 0x2

    int-to-double v14, v5

    .line 267
    .local v14, "shiftAngle":D
    int-to-float v5, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v16, v16, v14

    sub-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 268
    .local v2, "diff":D
    cmpg-double v5, v2, v12

    if-gez v5, :cond_2

    .line 269
    move-wide v12, v2

    .line 264
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :cond_2
    cmpl-double v5, v2, v12

    if-ltz v5, :cond_1

    .line 271
    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/camera/manual/KnobView;->validateTick(I)I

    move-result v5

    return v5

    .line 273
    .end local v2    # "diff":D
    .end local v14    # "shiftAngle":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    return v5
.end method

.method private mapTickToRotation(I)D
    .locals 10
    .param p1, "tick"    # I

    .prologue
    .line 308
    iget-object v8, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v8, :cond_0

    .line 309
    const-wide/16 v8, 0x0

    return-wide v8

    .line 310
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v8, v8, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    sub-int/2addr v8, v9

    int-to-double v2, v8

    .line 311
    .local v2, "knobAngle":D
    iget-object v8, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v8, v8, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    sub-int/2addr v8, v9

    int-to-double v4, v8

    .line 312
    .local v4, "knobSteps":D
    div-double v0, v2, v4

    .line 313
    .local v0, "includedAngle":D
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-double v6, v8

    .line 314
    .local v6, "shiftAngle":D
    int-to-double v8, p1

    mul-double/2addr v8, v0

    add-double/2addr v8, v6

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v8

    return-wide v8
.end method

.method private mapTickToValue(I)D
    .locals 6
    .param p1, "tick"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 280
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 281
    return-wide v4

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 284
    .local v0, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-ne v2, p1, :cond_1

    .line 285
    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    return-wide v2

    .line 287
    .end local v0    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_2
    return-wide v4
.end method

.method private mapToKnobRotationDegree(D)D
    .locals 3
    .param p1, "rotation"    # D

    .prologue
    .line 301
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 322
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 323
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->isTooCloseToCenter(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    sget-object v2, Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onActionDown() - Too close to center"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->evaluateRotation(FF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_InitRadius:D

    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    .line 332
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->onRotationStartFromTouch()V

    .line 319
    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 339
    iget-boolean v6, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    if-nez v6, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 343
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 344
    .local v5, "y":F
    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/manual/KnobView;->isTooCloseToCenter(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    sget-object v6, Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActionMove() - Too close to center, stop running"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->onRotationEndFromTouch()V

    .line 350
    return-void

    .line 352
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/manual/KnobView;->evaluateRotation(FF)D

    move-result-wide v0

    .line 355
    .local v0, "radius":D
    iget-wide v6, p0, Lcom/oneplus/camera/manual/KnobView;->m_InitRadius:D

    sub-double v2, v0, v6

    .line 358
    .local v2, "radiusDiff":D
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/manual/KnobView;->onRotationUpdateFromTouch(D)V

    .line 337
    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    if-nez v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->onRotationEndFromTouch()V

    .line 363
    return-void
.end method

.method private onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V
    .locals 1
    .param p1, "oldItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;
    .param p2, "newItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;

    .prologue
    .line 442
    if-nez p2, :cond_0

    .line 443
    return-void

    .line 444
    :cond_0
    iput-object p2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 445
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/camera/manual/KnobViewChangedListener;->onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V

    .line 440
    :cond_1
    return-void
.end method

.method private setKnobViewRotation(D)V
    .locals 1
    .param p1, "rotation"    # D

    .prologue
    .line 587
    iput-wide p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 588
    iput-wide p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 589
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 585
    return-void
.end method

.method private setKnobViewRotationSmooth(D)V
    .locals 5
    .param p1, "rotation"    # D

    .prologue
    .line 596
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    double-to-float v2, p1

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 597
    .local v0, "animation":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 598
    new-instance v1, Lcom/oneplus/camera/manual/KnobView$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/KnobView$1;-><init>(Lcom/oneplus/camera/manual/KnobView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 607
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 594
    return-void
.end method

.method private setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/camera/manual/KnobView$RotationState;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    if-ne v0, p1, :cond_0

    .line 615
    return-void

    .line 618
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 621
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/camera/manual/KnobViewChangedListener;->onRotationStateChanged(Lcom/oneplus/camera/manual/KnobView;Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 612
    :cond_1
    return-void
.end method

.method private setTick(I)V
    .locals 3
    .param p1, "tick"    # I

    .prologue
    .line 629
    iget v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    if-ne v1, p1, :cond_0

    .line 630
    return-void

    .line 631
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 632
    .local v0, "oldTick":I
    iput p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 633
    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/manual/KnobView;->onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V

    .line 627
    return-void
.end method

.method private updateDashBounds()V
    .locals 6

    .prologue
    .line 654
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashPadding:I

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashPadding:I

    iget v5, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashLength:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 652
    return-void
.end method

.method private updateKnobItemSelection()V
    .locals 4

    .prologue
    .line 703
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 704
    return-void

    .line 705
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 707
    .local v0, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    iget v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    if-ne v2, v3, :cond_1

    .line 709
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->isSelected:Z

    .line 710
    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    goto :goto_0

    .line 713
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->isSelected:Z

    goto :goto_0

    .line 701
    .end local v0    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_2
    return-void
.end method

.method private updateKnobItemsBounds()V
    .locals 32

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 662
    return-void

    .line 663
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 665
    .local v5, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v15, v28, v29

    .line 666
    .local v15, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v25, v0

    .line 667
    .local v25, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_1

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v25, v28, v29

    .line 669
    :cond_1
    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    add-int v24, v15, v28

    .line 670
    .local v24, "right":I
    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    add-int v4, v25, v28

    .line 671
    .local v4, "bottom":I
    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 675
    return-void

    .line 676
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 677
    .local v16, "knobAngle":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 678
    .local v18, "knobSteps":D
    div-double v12, v16, v18

    .line 679
    .local v12, "includedAngle":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 680
    .local v22, "radius":D
    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 681
    .local v10, "edgeY":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 682
    .local v8, "edgeX":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_3

    .line 684
    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 685
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 687
    :cond_3
    div-double v28, v10, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    .line 688
    .local v20, "radian":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 689
    .local v6, "drawableAngleHalf":D
    iget v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->signum(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 690
    .local v26, "shiftAngle":D
    iget v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v12

    add-double v28, v28, v26

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    .line 691
    iget-wide v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    sub-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    .line 692
    iget-wide v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    add-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    goto/16 :goto_0

    .line 696
    .end local v4    # "bottom":I
    .end local v5    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    .end local v6    # "drawableAngleHalf":D
    .end local v8    # "edgeX":D
    .end local v10    # "edgeY":D
    .end local v12    # "includedAngle":D
    .end local v15    # "left":I
    .end local v16    # "knobAngle":D
    .end local v18    # "knobSteps":D
    .end local v20    # "radian":D
    .end local v22    # "radius":D
    .end local v24    # "right":I
    .end local v25    # "top":I
    .end local v26    # "shiftAngle":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 659
    return-void
.end method

.method private validateRotation(D)D
    .locals 3
    .param p1, "rotation"    # D

    .prologue
    .line 721
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v0, :cond_0

    .line 722
    return-wide p1

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    int-to-double p1, v0

    .line 727
    :cond_1
    :goto_0
    return-wide p1

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    int-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    int-to-double p1, v0

    goto :goto_0
.end method

.method private validateTick(I)I
    .locals 1
    .param p1, "tick"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v0, :cond_0

    .line 735
    return p1

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    if-le p1, v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget p1, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    .line 740
    :cond_1
    :goto_0
    return p1

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v0, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    if-ge p1, v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget p1, v0, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    goto :goto_0
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 96
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 107
    return-void

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v2, :cond_1

    .line 109
    return-void

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 116
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 117
    .local v18, "startAngle":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 118
    .local v12, "endAngle":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_8

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 121
    .local v15, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    add-int/lit8 v3, v14, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 122
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    add-double v10, v2, v4

    .line 123
    .local v10, "drawRotation":D
    double-to-float v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    neg-float v2, v2

    iget-object v3, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 125
    iget-object v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    iget-object v3, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 127
    neg-double v2, v10

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    if-eqz v16, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    if-nez v2, :cond_4

    iget v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-nez v2, :cond_4

    .line 118
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 121
    .end local v10    # "drawRotation":D
    :cond_3
    const/16 v16, 0x0

    .local v16, "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    goto/16 :goto_1

    .line 135
    .end local v16    # "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    .restart local v10    # "drawRotation":D
    :cond_4
    iget-wide v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double v18, v2, v4

    .line 137
    :cond_5
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v12, v2, v4

    .line 139
    :cond_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    move-wide/from16 v8, v18

    .line 142
    .local v8, "currentAngle":D
    :goto_3
    cmpg-double v2, v8, v12

    if-gez v2, :cond_7

    .line 144
    double-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 146
    neg-double v2, v8

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 147
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    goto :goto_3

    .line 149
    :cond_7
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 150
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto/16 :goto_2

    .line 154
    .end local v8    # "currentAngle":D
    .end local v10    # "drawRotation":D
    .end local v12    # "endAngle":D
    .end local v14    # "i":I
    .end local v15    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    .end local v18    # "startAngle":D
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method public getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    return-object v0
.end method

.method public isSetupIcons()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsSetupIcons:Z

    return v0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 377
    return-void
.end method

.method public onRotationEndFromTouch()V
    .locals 4

    .prologue
    .line 390
    sget-object v2, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 392
    iget-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    iput-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 393
    iget-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setTick(I)V

    .line 394
    iget v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->mapTickToRotation(I)D

    move-result-wide v0

    .line 395
    .local v0, "candRotation":D
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotationSmooth(D)V

    .line 396
    iget v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/oneplus/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 399
    sget-object v2, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 387
    return-void
.end method

.method public onRotationStartFromTouch()V
    .locals 4

    .prologue
    .line 407
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 409
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 410
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, -0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 404
    return-void
.end method

.method public onRotationUpdateFromTouch(D)V
    .locals 7
    .param p1, "radiusDiff"    # D

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 417
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 424
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;->mapToKnobRotationDegree(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 425
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    .line 426
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 429
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 432
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setTick(I)V

    .line 435
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 415
    return-void

    .line 427
    :cond_2
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    const-wide v2, -0x3f89800000000000L    # -360.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 428
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    goto :goto_0
.end method

.method protected onSetupIcons()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 457
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->evaluateRotationCenter()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 458
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateDashBounds()V

    .line 459
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 452
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsTouching:Z

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 473
    :cond_1
    return v1

    .line 477
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 479
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 480
    return v1

    .line 484
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 502
    return v1

    .line 487
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 491
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 496
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDashAroundAutoEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 507
    return-void
.end method

.method public setIconPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    .line 517
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 518
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 514
    return-void
.end method

.method public setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oneplus/camera/manual/KnobInfo;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    .line 526
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 527
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 523
    return-void
.end method

.method public setKnobItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/manual/KnobItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 535
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 536
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemSelection()V

    .line 537
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/oneplus/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 532
    return-void
.end method

.method public setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V
    .locals 3
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 545
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    .line 546
    .local v0, "oldSelfRotation":F
    invoke-static {}, Lcom/oneplus/camera/manual/KnobView;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 561
    :goto_0
    iget v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 564
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 543
    :cond_0
    return-void

    .line 549
    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 552
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 555
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 558
    :pswitch_3
    const/high16 v1, 0x43340000    # 180.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setKnobViewBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 570
    return-void
.end method

.method public setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/camera/manual/KnobViewChangedListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    .line 578
    return-void
.end method

.method public setupIcons()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsSetupIcons:Z

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    return v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->onSetupIcons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsSetupIcons:Z

    .line 643
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_IsSetupIcons:Z

    return v0
.end method
