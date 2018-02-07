.class public Lcom/oneplus/settings/opfinger/RectangleMask;
.super Landroid/graphics/drawable/Drawable;
.source "RectangleMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;,
        Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues:[I

.field private static final synthetic -com-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues:[I

.field private static m_ScaleX:F

.field private static m_ScaleY:F


# instance fields
.field private dHeight:D

.field private dWidth:D

.field private m_Angle:F

.field private m_BottomLeft:Landroid/graphics/Point;

.field private m_BottomRight:Landroid/graphics/Point;

.field private m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field private m_Height:I

.field private m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_Rect:Landroid/graphics/Rect;

.field private m_RectRotated:Landroid/graphics/Rect;

.field private m_TopLeft:Landroid/graphics/Point;

.field private m_TopRight:Landroid/graphics/Point;

.field private m_Width:I


# direct methods
.method private static synthetic -getcom-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->values()[Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipNone:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipX:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipXY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->FlipY:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->values()[Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/settings/opfinger/RectangleMask;->-com-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;)V
    .locals 18
    .param p1, "top_left"    # Landroid/graphics/Point;
    .param p2, "top_right"    # Landroid/graphics/Point;
    .param p3, "bottom_left"    # Landroid/graphics/Point;
    .param p4, "bottom_right"    # Landroid/graphics/Point;
    .param p5, "mask"    # Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .param p6, "flip"    # Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomLeft:Landroid/graphics/Point;

    .line 40
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomRight:Landroid/graphics/Point;

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopLeft:Landroid/graphics/Point;

    .line 42
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopRight:Landroid/graphics/Point;

    .line 43
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 44
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    .line 45
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int v6, v14, v15

    .line 46
    .local v6, "dx1":I
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int v8, v14, v15

    .line 47
    .local v8, "dy1":I
    mul-int v14, v6, v6

    mul-int v15, v8, v8

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    .line 48
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int v7, v14, v15

    .line 49
    .local v7, "dx2":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int v9, v14, v15

    .line 50
    .local v9, "dy2":I
    mul-int v14, v7, v7

    mul-int v15, v9, v9

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    .line 51
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    .line 52
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    .line 53
    int-to-double v14, v8

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 54
    .local v4, "dTan":D
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 55
    .local v2, "dRad":D
    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v14, v2

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    .line 56
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 57
    .local v11, "iLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    add-int v12, v11, v14

    .line 58
    .local v12, "iRight":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 59
    .local v13, "iTop":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    add-int v10, v13, v14

    .line 60
    .local v10, "iBottom":I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v11, v13, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    .line 61
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    return-void
.end method

.method public static setScale(FF)V
    .locals 0
    .param p0, "fScaleX"    # F
    .param p1, "fScaleY"    # F

    .prologue
    .line 222
    sput p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    .line 223
    sput p1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    .line 221
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    const/16 v26, 0x0

    .line 75
    .local v26, "iRotate":I
    const/4 v12, 0x0

    .line 76
    .local v12, "bFrame":Z
    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask;->-getcom-oneplus-settings-opfinger-RectangleMask$MaskTypeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v6}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 95
    :pswitch_0
    const/high16 v16, -0x1000000

    .line 96
    .local v16, "iColor":I
    const/16 v13, 0x30

    .line 97
    .local v13, "iAlpha":I
    const/16 v26, 0x5a

    .line 101
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    neg-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v11, v5, 0xc

    .line 106
    .local v11, "FRAME_LINE_WIDTH":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sget v6, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    .line 107
    .local v23, "iRectLeft":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sget v6, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v25, v0

    .line 108
    .local v25, "iRectTop":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sget v6, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v24, v0

    .line 109
    .local v24, "iRectRight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget v6, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    .line 114
    .local v18, "iRectBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    .line 115
    .local v15, "iCanvasWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    .line 117
    .local v14, "iCanvasHeight":I
    invoke-static {}, Lcom/oneplus/settings/opfinger/RectangleMask;->-getcom-oneplus-settings-opfinger-RectangleMask$FlipTypeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v6}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 141
    :pswitch_1
    add-int/lit8 v5, v15, -0x1

    sub-int v20, v5, v24

    .line 142
    .local v20, "iRectFlippedLeft":I
    add-int/lit8 v5, v14, -0x1

    sub-int v22, v5, v18

    .line 143
    .local v22, "iRectFlippedTop":I
    add-int/lit8 v5, v15, -0x1

    sub-int v21, v5, v23

    .line 144
    .local v21, "iRectFlippedRight":I
    add-int/lit8 v5, v14, -0x1

    sub-int v19, v5, v25

    .line 147
    .local v19, "iRectFlippedBottom":I
    :goto_1
    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v28, "rectFlipped":Landroid/graphics/Rect;
    int-to-float v5, v11

    sget v6, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v17, v0

    .line 150
    .local v17, "iFrameWidth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v6, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v5, v6, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_0
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    return-void

    .line 78
    .end local v11    # "FRAME_LINE_WIDTH":I
    .end local v13    # "iAlpha":I
    .end local v14    # "iCanvasHeight":I
    .end local v15    # "iCanvasWidth":I
    .end local v16    # "iColor":I
    .end local v17    # "iFrameWidth":I
    .end local v18    # "iRectBottom":I
    .end local v19    # "iRectFlippedBottom":I
    .end local v20    # "iRectFlippedLeft":I
    .end local v21    # "iRectFlippedRight":I
    .end local v22    # "iRectFlippedTop":I
    .end local v23    # "iRectLeft":I
    .end local v24    # "iRectRight":I
    .end local v25    # "iRectTop":I
    .end local v28    # "rectFlipped":Landroid/graphics/Rect;
    :pswitch_2
    const/16 v5, 0x8f

    const/16 v6, 0xbc

    const/16 v7, 0x8f

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v16

    .line 82
    .restart local v16    # "iColor":I
    const/16 v13, 0x90

    .line 83
    .restart local v13    # "iAlpha":I
    goto/16 :goto_0

    .line 85
    .end local v13    # "iAlpha":I
    .end local v16    # "iColor":I
    :pswitch_3
    const/4 v5, 0x0

    const/16 v6, 0x9f

    const/16 v7, 0xe3

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v16

    .line 86
    .restart local v16    # "iColor":I
    const/16 v13, 0x90

    .line 87
    .restart local v13    # "iAlpha":I
    const/16 v26, 0x5a

    .line 88
    goto/16 :goto_0

    .line 90
    .end local v13    # "iAlpha":I
    .end local v16    # "iColor":I
    :pswitch_4
    const/high16 v16, -0x10000

    .line 91
    .restart local v16    # "iColor":I
    const/16 v13, 0xff

    .line 92
    .restart local v13    # "iAlpha":I
    goto/16 :goto_0

    .line 119
    .restart local v11    # "FRAME_LINE_WIDTH":I
    .restart local v14    # "iCanvasHeight":I
    .restart local v15    # "iCanvasWidth":I
    .restart local v18    # "iRectBottom":I
    .restart local v23    # "iRectLeft":I
    .restart local v24    # "iRectRight":I
    .restart local v25    # "iRectTop":I
    :pswitch_5
    move/from16 v20, v23

    .line 120
    .restart local v20    # "iRectFlippedLeft":I
    move/from16 v22, v25

    .line 121
    .restart local v22    # "iRectFlippedTop":I
    move/from16 v21, v24

    .line 122
    .restart local v21    # "iRectFlippedRight":I
    move/from16 v19, v18

    .line 123
    .restart local v19    # "iRectFlippedBottom":I
    goto :goto_1

    .line 126
    .end local v19    # "iRectFlippedBottom":I
    .end local v20    # "iRectFlippedLeft":I
    .end local v21    # "iRectFlippedRight":I
    .end local v22    # "iRectFlippedTop":I
    :pswitch_6
    add-int/lit8 v5, v15, -0x1

    sub-int v20, v5, v24

    .line 127
    .restart local v20    # "iRectFlippedLeft":I
    move/from16 v22, v25

    .line 128
    .restart local v22    # "iRectFlippedTop":I
    add-int/lit8 v5, v15, -0x1

    sub-int v21, v5, v23

    .line 129
    .restart local v21    # "iRectFlippedRight":I
    move/from16 v19, v18

    .line 130
    .restart local v19    # "iRectFlippedBottom":I
    goto :goto_1

    .line 133
    .end local v19    # "iRectFlippedBottom":I
    .end local v20    # "iRectFlippedLeft":I
    .end local v21    # "iRectFlippedRight":I
    .end local v22    # "iRectFlippedTop":I
    :pswitch_7
    move/from16 v20, v23

    .line 134
    .restart local v20    # "iRectFlippedLeft":I
    add-int/lit8 v5, v14, -0x1

    sub-int v22, v5, v18

    .line 135
    .restart local v22    # "iRectFlippedTop":I
    move/from16 v21, v24

    .line 136
    .restart local v21    # "iRectFlippedRight":I
    add-int/lit8 v5, v14, -0x1

    sub-int v19, v5, v25

    .line 137
    .restart local v19    # "iRectFlippedBottom":I
    goto :goto_1

    .line 152
    .restart local v17    # "iFrameWidth":I
    .restart local v28    # "rectFlipped":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v6, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v5, v6, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 173
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v6, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v5, v6, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    if-eqz v12, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    move/from16 v0, v23

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v25

    int-to-float v9, v0

    .line 180
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 179
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    move/from16 v0, v23

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    move/from16 v0, v18

    int-to-float v9, v0

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 181
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    move/from16 v0, v23

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v24

    int-to-float v8, v0

    .line 184
    move/from16 v0, v18

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 183
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v18

    int-to-float v9, v0

    .line 186
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    .line 185
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 188
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v6, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v5, v6, :cond_0

    .line 189
    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v18

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v27, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public getMaskType()Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 208
    return-void
.end method

.method public setMaskType(Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;)V
    .locals 0
    .param p1, "mask"    # Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 217
    return-void
.end method
