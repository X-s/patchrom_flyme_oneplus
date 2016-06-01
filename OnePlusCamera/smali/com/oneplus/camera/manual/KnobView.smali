.class public Lcom/oneplus/camera/manual/KnobView;
.super Landroid/view/View;
.source "KnobView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/manual/KnobView$3;,
        Lcom/oneplus/camera/manual/KnobView$RotationState;
    }
.end annotation


# static fields
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

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_Paint:Landroid/graphics/Paint;

.field private m_RotationCenter:Landroid/graphics/PointF;

.field private m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

.field private m_Tick:I

.field private m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/oneplus/camera/manual/KnobView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/manual/KnobView$1;-><init>(Lcom/oneplus/camera/manual/KnobView;)V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 189
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 190
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 191
    iput v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    .line 223
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashLength:I

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashPadding:I

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->setupIcons()V

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/manual/KnobView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/KnobView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/manual/KnobView;D)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/manual/KnobView;
    .param p1, "x1"    # D

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotation(D)V

    return-void
.end method

.method private evaluateRotationCenter()Landroid/graphics/PointF;
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 295
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v3

    .line 296
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->getHeight()I

    move-result v2

    .line 297
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

    .line 298
    .local v0, "fanEdge":D
    div-double v6, v0, v10

    int-to-double v8, v2

    div-double/2addr v8, v0

    div-double v4, v6, v8

    .line 299
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
    const/4 v2, 0x0

    .line 313
    iget-object v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 320
    :goto_0
    return-object v1

    .line 315
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 317
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v3, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_2
    move-object v1, v2

    .line 320
    goto :goto_0
.end method

.method private mapRotationToTick(D)I
    .locals 19
    .param p1, "rotation"    # D

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v5, :cond_0

    .line 328
    const/4 v5, 0x0

    .line 342
    :goto_0
    return v5

    .line 329
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

    .line 330
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

    .line 331
    .local v10, "knobSteps":D
    div-double v6, v8, v10

    .line 332
    .local v6, "includedAngle":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 333
    .local v12, "preDiffAngle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v4, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    if-gt v4, v5, :cond_3

    .line 335
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

    .line 336
    .local v14, "shiftAngle":D
    int-to-float v5, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v16, v16, v14

    sub-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 337
    .local v2, "diff":D
    cmpg-double v5, v2, v12

    if-gez v5, :cond_2

    .line 338
    move-wide v12, v2

    .line 333
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    :cond_2
    cmpl-double v5, v2, v12

    if-ltz v5, :cond_1

    .line 340
    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/camera/manual/KnobView;->validateTick(I)I

    move-result v5

    goto/16 :goto_0

    .line 342
    .end local v2    # "diff":D
    .end local v14    # "shiftAngle":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v5, v5, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    goto/16 :goto_0
.end method

.method private mapTickToRotation(I)D
    .locals 10
    .param p1, "tick"    # I

    .prologue
    .line 377
    iget-object v8, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v8, :cond_0

    .line 378
    const-wide/16 v8, 0x0

    .line 383
    :goto_0
    return-wide v8

    .line 379
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

    .line 380
    .local v2, "knobAngle":D
    iget-object v8, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v8, v8, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    sub-int/2addr v8, v9

    int-to-double v4, v8

    .line 381
    .local v4, "knobSteps":D
    div-double v0, v2, v4

    .line 382
    .local v0, "includedAngle":D
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v9, v9, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-double v6, v8

    .line 383
    .local v6, "shiftAngle":D
    int-to-double v8, p1

    mul-double/2addr v8, v0

    add-double/2addr v8, v6

    invoke-direct {p0, v8, v9}, Lcom/oneplus/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v8

    goto :goto_0
.end method

.method private mapTickToValue(I)D
    .locals 5
    .param p1, "tick"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 349
    iget-object v4, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-wide v2

    .line 351
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 353
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v4, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-ne v4, p1, :cond_2

    .line 354
    iget-wide v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->value:D

    goto :goto_0
.end method

.method private mapToKnobRotationDegree(D)D
    .locals 3
    .param p1, "rotation"    # D

    .prologue
    .line 370
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method private onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V
    .locals 1
    .param p1, "oldItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;
    .param p2, "newItem"    # Lcom/oneplus/camera/manual/KnobItemInfo;

    .prologue
    .line 443
    if-nez p2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iput-object p2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 446
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/camera/manual/KnobViewChangedListener;->onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V

    goto :goto_0
.end method

.method private setKnobViewRotation(D)V
    .locals 1
    .param p1, "rotation"    # D

    .prologue
    .line 545
    iput-wide p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 546
    iput-wide p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 547
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 548
    return-void
.end method

.method private setKnobViewRotationSmooth(D)V
    .locals 7
    .param p1, "rotation"    # D

    .prologue
    .line 554
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    double-to-float v3, p1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 555
    .local v0, "animation":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 556
    new-instance v1, Lcom/oneplus/camera/manual/KnobView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/manual/KnobView$2;-><init>(Lcom/oneplus/camera/manual/KnobView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 565
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 566
    return-void
.end method

.method private setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/camera/manual/KnobView$RotationState;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    if-ne v0, p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationState:Lcom/oneplus/camera/manual/KnobView$RotationState;

    .line 579
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p1}, Lcom/oneplus/camera/manual/KnobViewChangedListener;->onRotationStateChanged(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    goto :goto_0
.end method

.method private setTick(I)V
    .locals 3
    .param p1, "tick"    # I

    .prologue
    .line 587
    iget v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    if-ne v1, p1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 590
    .local v0, "oldTick":I
    iput p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    .line 591
    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/manual/KnobView;->onSelectedKnobItemChanged(Lcom/oneplus/camera/manual/KnobItemInfo;Lcom/oneplus/camera/manual/KnobItemInfo;)V

    goto :goto_0
.end method

.method private updateDashBounds()V
    .locals 6

    .prologue
    .line 603
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

    .line 604
    return-void
.end method

.method private updateKnobItemSelection()V
    .locals 4

    .prologue
    .line 652
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v2, :cond_1

    .line 664
    :cond_0
    return-void

    .line 654
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 656
    .local v1, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    iget v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    iget v3, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    if-ne v2, v3, :cond_2

    .line 658
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->isSelected:Z

    .line 659
    iput-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    goto :goto_0

    .line 662
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/camera/manual/KnobItemInfo;->isSelected:Z

    goto :goto_0
.end method

.method private updateKnobItemsBounds()V
    .locals 32

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 614
    .local v14, "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/manual/KnobView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v15, v28, v29

    .line 615
    .local v15, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v25, v0

    .line 616
    .local v25, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_2

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v25, v28, v29

    .line 618
    :cond_2
    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    add-int v24, v15, v28

    .line 619
    .local v24, "right":I
    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    add-int v4, v25, v28

    .line 620
    .local v4, "bottom":I
    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 625
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

    .line 626
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

    .line 627
    .local v18, "knobSteps":D
    div-double v12, v16, v18

    .line 628
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

    .line 629
    .local v22, "radius":D
    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 630
    .local v10, "edgeY":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 631
    .local v8, "edgeX":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_3

    .line 633
    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 636
    :cond_3
    div-double v28, v10, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    .line 637
    .local v20, "radian":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 638
    .local v6, "drawableAngleHalf":D
    iget v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

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

    .line 639
    .local v26, "shiftAngle":D
    iget v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v12

    add-double v28, v28, v26

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    .line 640
    iget-wide v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    sub-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    .line 641
    iget-wide v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    add-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    goto/16 :goto_1

    .line 645
    .end local v4    # "bottom":I
    .end local v6    # "drawableAngleHalf":D
    .end local v8    # "edgeX":D
    .end local v10    # "edgeY":D
    .end local v12    # "includedAngle":D
    .end local v14    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
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

    goto/16 :goto_0
.end method

.method private validateRotation(D)D
    .locals 5
    .param p1, "rotation"    # D

    .prologue
    .line 670
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v2, :cond_0

    move-wide v0, p1

    .line 676
    .end local p1    # "rotation":D
    .local v0, "rotation":D
    :goto_0
    return-wide v0

    .line 672
    .end local v0    # "rotation":D
    .restart local p1    # "rotation":D
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v2, v2, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v2, v2, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    int-to-double p1, v2

    :cond_1
    :goto_1
    move-wide v0, p1

    .line 676
    .end local p1    # "rotation":D
    .restart local v0    # "rotation":D
    goto :goto_0

    .line 674
    .end local v0    # "rotation":D
    .restart local p1    # "rotation":D
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v2, v2, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    int-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_1

    .line 675
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v2, v2, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    int-to-double p1, v2

    goto :goto_1
.end method

.method private validateTick(I)I
    .locals 2
    .param p1, "tick"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v1, :cond_0

    move v0, p1

    .line 689
    .end local p1    # "tick":I
    .local v0, "tick":I
    :goto_0
    return v0

    .line 685
    .end local v0    # "tick":I
    .restart local p1    # "tick":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v1, v1, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    if-le p1, v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget p1, v1, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    :cond_1
    :goto_1
    move v0, p1

    .line 689
    .end local p1    # "tick":I
    .restart local v0    # "tick":I
    goto :goto_0

    .line 687
    .end local v0    # "tick":I
    .restart local p1    # "tick":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget v1, v1, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    if-ge p1, v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    iget p1, v1, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-eqz v2, :cond_0

    .line 245
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

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 250
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 251
    .local v18, "startAngle":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 252
    .local v12, "endAngle":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/manual/KnobItemInfo;

    .line 255
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

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/manual/KnobItemInfo;

    move-object/from16 v16, v2

    .line 256
    .local v16, "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationCenter:D

    add-double v10, v2, v4

    .line 257
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

    .line 258
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

    .line 259
    iget-object v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
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

    .line 261
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

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    if-eqz v16, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    if-nez v2, :cond_4

    iget v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->tick:I

    if-nez v2, :cond_4

    .line 252
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 255
    .end local v10    # "drawRotation":D
    .end local v16    # "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 269
    .restart local v10    # "drawRotation":D
    .restart local v16    # "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    :cond_4
    iget-wide v2, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double v18, v2, v4

    .line 271
    :cond_5
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationRight:D

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 272
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->rotationLeft:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v12, v2, v4

    .line 273
    :cond_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    move-wide/from16 v8, v18

    .line 276
    .local v8, "currentAngle":D
    :goto_4
    cmpg-double v2, v8, v12

    if-gez v2, :cond_7

    .line 278
    double-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 279
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

    .line 280
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

    .line 281
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    goto :goto_4

    .line 283
    :cond_7
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 284
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto/16 :goto_3

    .line 288
    .end local v8    # "currentAngle":D
    .end local v10    # "drawRotation":D
    .end local v12    # "endAngle":D
    .end local v14    # "i":I
    .end local v15    # "item":Lcom/oneplus/camera/manual/KnobItemInfo;
    .end local v16    # "nextItem":Lcom/oneplus/camera/manual/KnobItemInfo;
    .end local v18    # "startAngle":D
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getCurrentKnobItem()Lcom/oneplus/camera/manual/KnobItemInfo;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Value:Lcom/oneplus/camera/manual/KnobItemInfo;

    return-object v0
.end method

.method public onRotationEndFromTouch()V
    .locals 4

    .prologue
    .line 391
    sget-object v2, Lcom/oneplus/camera/manual/KnobView$RotationState;->STOPPING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 393
    iget-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    iput-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 394
    iget-wide v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setTick(I)V

    .line 395
    iget v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->mapTickToRotation(I)D

    move-result-wide v0

    .line 396
    .local v0, "candRotation":D
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->setKnobViewRotationSmooth(D)V

    .line 397
    iget v2, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/oneplus/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 400
    sget-object v2, Lcom/oneplus/camera/manual/KnobView$RotationState;->IDLE:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 401
    return-void
.end method

.method public onRotationStartFromTouch()V
    .locals 4

    .prologue
    .line 408
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->STARTING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 410
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 411
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x10100a1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 412
    return-void
.end method

.method public onRotationUpdateFromTouch(D)V
    .locals 7
    .param p1, "radiusDiff"    # D

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 418
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-object v0, Lcom/oneplus/camera/manual/KnobView$RotationState;->ROTATING:Lcom/oneplus/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setRotationState(Lcom/oneplus/camera/manual/KnobView$RotationState;)V

    .line 425
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableLastDegree:D

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/manual/KnobView;->mapToKnobRotationDegree(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 426
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    .line 427
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 430
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 433
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->setTick(I)V

    .line 436
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    goto :goto_0

    .line 428
    :cond_2
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    const-wide v2, -0x3f89800000000000L    # -360.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 429
    iget-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 458
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->evaluateRotationCenter()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 459
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateDashBounds()V

    .line 460
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 461
    return-void
.end method

.method public setDashAroundAutoEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 468
    return-void
.end method

.method public setIconPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_IconPadding:I

    .line 475
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 476
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 477
    return-void
.end method

.method public setKnobInfo(Lcom/oneplus/camera/manual/KnobInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oneplus/camera/manual/KnobInfo;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobInfo:Lcom/oneplus/camera/manual/KnobInfo;

    .line 484
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 485
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 486
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
    .line 492
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/manual/KnobItemInfo;>;"
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 493
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 494
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemSelection()V

    .line 495
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/oneplus/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/oneplus/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 496
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 497
    return-void
.end method

.method public setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V
    .locals 3
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 503
    iget v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    .line 504
    .local v0, "oldSelfRotation":F
    sget-object v1, Lcom/oneplus/camera/manual/KnobView$3;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 519
    :goto_0
    iget v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/oneplus/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 522
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 524
    :cond_0
    return-void

    .line 507
    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 510
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 513
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 516
    :pswitch_3
    const/high16 v1, 0x43340000    # 180.0f

    iput v1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setKnobViewBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/KnobView;->invalidate()V

    .line 532
    return-void
.end method

.method public setKnobViewChangedListener(Lcom/oneplus/camera/manual/KnobViewChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/camera/manual/KnobViewChangedListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/oneplus/camera/manual/KnobViewChangedListener;

    .line 539
    return-void
.end method

.method protected setupIcons()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method
