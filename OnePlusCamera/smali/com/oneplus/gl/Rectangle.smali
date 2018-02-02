.class public Lcom/oneplus/gl/Rectangle;
.super Lcom/oneplus/gl/ModelBase;
.source "Rectangle.java"


# static fields
.field private static final synthetic -com-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues:[I

.field private static final TEXTURE_COORDINATES_XRYD:[Landroid/graphics/PointF;

.field private static final TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;


# instance fields
.field private m_FlipTextureX:Z

.field private m_FlipTextureY:Z

.field private final m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

.field private final m_Points:[Lcom/oneplus/gl/Point3D;

.field private final m_TexCoords:[Landroid/graphics/PointF;

.field private m_TextureSourceRect:Landroid/graphics/RectF;


# direct methods
.method private static synthetic -getcom-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gl/Rectangle;->-com-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gl/Rectangle;->-com-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->values()[Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_DOWN:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    invoke-virtual {v1}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_UP:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    invoke-virtual {v1}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/gl/Rectangle;->-com-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 34
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    .line 35
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    .line 36
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    sput-object v0, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 40
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    .line 41
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    .line 42
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    .line 43
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYD:[Landroid/graphics/PointF;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/oneplus/gl/ModelBase;-><init>()V

    .line 50
    new-array v0, v6, [Lcom/oneplus/gl/Point3D;

    .line 51
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v3

    .line 53
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v4

    .line 54
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v5

    .line 50
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    .line 56
    new-array v0, v6, [Lcom/oneplus/gl/Point3D;

    .line 57
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v3

    .line 59
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v4

    .line 60
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v5

    .line 56
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    .line 62
    new-array v0, v6, [Landroid/graphics/PointF;

    .line 63
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    .line 64
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    .line 65
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    .line 66
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    .line 62
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    .line 74
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "z"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/gl/ModelBase;-><init>()V

    .line 50
    new-array v0, v6, [Lcom/oneplus/gl/Point3D;

    .line 51
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v3

    .line 53
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v4

    .line 54
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v5

    .line 50
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    .line 56
    new-array v0, v6, [Lcom/oneplus/gl/Point3D;

    .line 57
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v3

    .line 59
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v4

    .line 60
    new-instance v1, Lcom/oneplus/gl/Point3D;

    invoke-direct {v1}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v1, v0, v5

    .line 56
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    .line 62
    new-array v0, v6, [Landroid/graphics/PointF;

    .line 63
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    .line 64
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    .line 65
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    .line 66
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    .line 62
    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    .line 119
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p4, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 120
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, p2, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 121
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v4

    invoke-virtual {v0, p3, p4, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 122
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v5

    invoke-virtual {v0, p3, p2, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;-><init>(FFFFF)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 94
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;-><init>(FFFFF)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;F)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "z"    # F

    .prologue
    .line 105
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;-><init>(FFFFF)V

    .line 103
    return-void
.end method


# virtual methods
.method public getBounds(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/oneplus/gl/Point3D;->x:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 133
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/oneplus/gl/Point3D;->y:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 134
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/oneplus/gl/Point3D;->x:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 135
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/oneplus/gl/Point3D;->y:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 130
    return-void
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v0, v0, Lcom/oneplus/gl/Point3D;->y:F

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/oneplus/gl/Point3D;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v0, v0, Lcom/oneplus/gl/Point3D;->x:F

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/oneplus/gl/Point3D;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/oneplus/gl/Point3D;->z:F

    return v0
.end method

.method protected onPrepareOpacityMaskTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;
    .locals 2
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 173
    invoke-static {}, Lcom/oneplus/gl/Rectangle;->-getcom-oneplus-gl-DrawingContext$CoordinateSystemSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 176
    :pswitch_0
    sget-object v0, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    return-object v0

    .line 178
    :pswitch_1
    sget-object v0, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYD:[Landroid/graphics/PointF;

    return-object v0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;
    .locals 13
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureX:Z

    .line 191
    .local v0, "flipX":Z
    iget-boolean v1, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureY:Z

    .line 192
    .local v1, "flipY":Z
    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v10

    sget-object v11, Lcom/oneplus/gl/DrawingContext$CoordinateSystem;->X_RIGHT_Y_DOWN:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    if-ne v10, v11, :cond_0

    .line 193
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 197
    .end local v1    # "flipY":Z
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    if-nez v10, :cond_4

    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, "srcLeft":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 201
    .local v6, "srcTop":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 202
    .local v5, "srcRight":F
    const/4 v3, 0x0

    .line 211
    .local v3, "srcBottom":F
    :goto_1
    if-eqz v0, :cond_1

    .line 213
    move v7, v4

    .line 214
    .local v7, "temp":F
    move v4, v5

    .line 215
    move v5, v7

    .line 217
    .end local v7    # "temp":F
    :cond_1
    if-eqz v1, :cond_2

    .line 219
    move v7, v6

    .line 220
    .restart local v7    # "temp":F
    move v6, v3

    .line 221
    move v3, v7

    .line 225
    .end local v7    # "temp":F
    :cond_2
    if-nez v0, :cond_6

    .line 227
    if-nez v1, :cond_5

    .line 229
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 230
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 231
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 232
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 256
    :goto_2
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_a

    .line 258
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v8, v10, Landroid/graphics/PointF;->x:F

    .line 259
    .local v8, "x":F
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v9, v10, Landroid/graphics/PointF;->y:F

    .line 260
    .local v9, "y":F
    if-eqz v0, :cond_8

    .line 261
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 264
    :goto_4
    if-eqz v1, :cond_9

    .line 265
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 268
    :goto_5
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    invoke-virtual {v10, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 256
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 193
    .end local v2    # "i":I
    .end local v3    # "srcBottom":F
    .end local v4    # "srcLeft":F
    .end local v5    # "srcRight":F
    .end local v6    # "srcTop":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .restart local v1    # "flipY":Z
    :cond_3
    const/4 v1, 0x1

    .local v1, "flipY":Z
    goto :goto_0

    .line 206
    .end local v1    # "flipY":Z
    :cond_4
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    iget v4, v10, Landroid/graphics/RectF;->left:F

    .line 207
    .restart local v4    # "srcLeft":F
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    iget v6, v10, Landroid/graphics/RectF;->top:F

    .line 208
    .restart local v6    # "srcTop":F
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    iget v5, v10, Landroid/graphics/RectF;->right:F

    .line 209
    .restart local v5    # "srcRight":F
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    iget v3, v10, Landroid/graphics/RectF;->bottom:F

    .restart local v3    # "srcBottom":F
    goto/16 :goto_1

    .line 236
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 237
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 238
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 239
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 242
    :cond_6
    if-nez v1, :cond_7

    .line 244
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 245
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 246
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 247
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_2

    .line 251
    :cond_7
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 252
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 253
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 254
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lcom/oneplus/gl/Rectangle;->TEXTURE_COORDINATES_XRYU:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_2

    .line 263
    .restart local v2    # "i":I
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    :cond_8
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto/16 :goto_4

    .line 267
    :cond_9
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto/16 :goto_5

    .line 270
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_a
    iget-object v10, p0, Lcom/oneplus/gl/Rectangle;->m_TexCoords:[Landroid/graphics/PointF;

    return-object v10
.end method

.method protected onPrepareVertices(Lcom/oneplus/gl/DrawingContext;)[Lcom/oneplus/gl/Point3D;
    .locals 6
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->getStyle()Lcom/oneplus/gl/ModelBase$Style;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gl/ModelBase$Style;->LINES:Lcom/oneplus/gl/ModelBase$Style;

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 281
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 282
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 283
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 284
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_LineEndPoints:[Lcom/oneplus/gl/Point3D;

    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    return-object v0
.end method

.method public resetTextureSourceRect()Lcom/oneplus/gl/Rectangle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 297
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 299
    iput-object v1, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateTexCoord()V

    .line 302
    :cond_0
    return-object p0
.end method

.method public setBounds(FFFF)Lcom/oneplus/gl/Rectangle;
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v5, v0, Lcom/oneplus/gl/Point3D;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;->setBounds(FFFFF)Lcom/oneplus/gl/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public setBounds(FFFFF)Lcom/oneplus/gl/Rectangle;
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "z"    # F

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 366
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p4, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 367
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 368
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, p4, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 369
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, p2, p5}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateVertices()V

    .line 371
    return-object p0
.end method

.method public setBounds(Landroid/graphics/Rect;)Lcom/oneplus/gl/Rectangle;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 313
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iget v5, v0, Lcom/oneplus/gl/Point3D;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;->setBounds(FFFFF)Lcom/oneplus/gl/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public setBounds(Landroid/graphics/RectF;)Lcom/oneplus/gl/Rectangle;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 324
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iget v5, v0, Lcom/oneplus/gl/Point3D;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;->setBounds(FFFFF)Lcom/oneplus/gl/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public setBounds(Landroid/graphics/RectF;F)Lcom/oneplus/gl/Rectangle;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "z"    # F

    .prologue
    .line 336
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/gl/Rectangle;->setBounds(FFFFF)Lcom/oneplus/gl/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setStyle(Lcom/oneplus/gl/ModelBase$Style;)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "style"    # Lcom/oneplus/gl/ModelBase$Style;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/Rectangle;->setStyle(Lcom/oneplus/gl/ModelBase$Style;)Lcom/oneplus/gl/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/oneplus/gl/ModelBase$Style;)Lcom/oneplus/gl/Rectangle;
    .locals 1
    .param p1, "style"    # Lcom/oneplus/gl/ModelBase$Style;

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/oneplus/gl/ModelBase;->setStyle(Lcom/oneplus/gl/ModelBase$Style;)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Rectangle;

    return-object v0
.end method

.method public setTextureFlipX(Z)Lcom/oneplus/gl/Rectangle;
    .locals 1
    .param p1, "flip"    # Z

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 391
    iget-boolean v0, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureX:Z

    if-eq v0, p1, :cond_0

    .line 393
    iput-boolean p1, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureX:Z

    .line 394
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateTexCoord()V

    .line 396
    :cond_0
    return-object p0
.end method

.method public setTextureFlipY(Z)Lcom/oneplus/gl/Rectangle;
    .locals 1
    .param p1, "flip"    # Z

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 408
    iget-boolean v0, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureY:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/oneplus/gl/Rectangle;->m_FlipTextureY:Z

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateTexCoord()V

    .line 413
    :cond_0
    return-object p0
.end method

.method public setTextureSourceRect(FFFF)Lcom/oneplus/gl/Rectangle;
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 428
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 431
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateTexCoord()V

    .line 432
    return-object p0
.end method

.method public setTextureSourceRect(Landroid/graphics/RectF;)Lcom/oneplus/gl/Rectangle;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 444
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_TextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 447
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateTexCoord()V

    .line 448
    return-object p0
.end method

.method public setZ(F)Lcom/oneplus/gl/Rectangle;
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->throwIfNotAccessible()V

    .line 460
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput p1, v0, Lcom/oneplus/gl/Point3D;->z:F

    .line 461
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Lcom/oneplus/gl/Point3D;->z:F

    .line 462
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput p1, v0, Lcom/oneplus/gl/Point3D;->z:F

    .line 463
    iget-object v0, p0, Lcom/oneplus/gl/Rectangle;->m_Points:[Lcom/oneplus/gl/Point3D;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput p1, v0, Lcom/oneplus/gl/Point3D;->z:F

    .line 464
    invoke-virtual {p0}, Lcom/oneplus/gl/Rectangle;->invalidateVertices()V

    .line 465
    return-object p0
.end method
