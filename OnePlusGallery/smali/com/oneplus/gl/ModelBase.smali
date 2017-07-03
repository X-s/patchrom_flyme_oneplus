.class public abstract Lcom/oneplus/gl/ModelBase;
.super Lcom/oneplus/gl/DrawableObject;
.source "ModelBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/ModelBase$Style;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gl$ModelBase$Style:[I

.field private static final m_DefaultVertexShader:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/gl/VertexShader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_BorderThickness:F

.field private m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

.field private m_IsOpacityMaskTexCoordPrepared:Z

.field private m_IsTexCoordPrepared:Z

.field private m_IsVerticesPrepared:Z

.field private m_LastCoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

.field private m_Opacity:F

.field private m_OpacityMask:Lcom/oneplus/gl/Texture2D;

.field private m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private m_OpacityMaskTexCoordCount:I

.field private m_OwnsFragmentShader:Z

.field private m_Program:Lcom/oneplus/gl/Program;

.field private final m_RotationCenter:Lcom/oneplus/gl/Point3D;

.field private final m_Rotations:[F

.field private m_Style:Lcom/oneplus/gl/ModelBase$Style;

.field private final m_TempPoint:Landroid/graphics/PointF;

.field private final m_TempPoint3D:Lcom/oneplus/gl/Point3D;

.field private m_TexCoordBuffer:Ljava/nio/FloatBuffer;

.field private m_TexCoordCount:I

.field private final m_TransformMatrix:[F

.field private final m_Translations:[F

.field private m_VertexBuffer:Ljava/nio/FloatBuffer;

.field private m_VertexCount:I

.field private m_VertexShader:Lcom/oneplus/gl/VertexShader;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$gl$ModelBase$Style()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/oneplus/gl/ModelBase;->$SWITCH_TABLE$com$oneplus$gl$ModelBase$Style:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gl/ModelBase$Style;->values()[Lcom/oneplus/gl/ModelBase$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gl/ModelBase$Style;->FACES:Lcom/oneplus/gl/ModelBase$Style;

    invoke-virtual {v1}, Lcom/oneplus/gl/ModelBase$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/gl/ModelBase$Style;->LINES:Lcom/oneplus/gl/ModelBase$Style;

    invoke-virtual {v1}, Lcom/oneplus/gl/ModelBase$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gl/ModelBase;->$SWITCH_TABLE$com$oneplus$gl$ModelBase$Style:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gl/ModelBase;->m_DefaultVertexShader:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0}, Lcom/oneplus/gl/DrawableObject;-><init>()V

    .line 37
    iput v0, p0, Lcom/oneplus/gl/ModelBase;->m_BorderThickness:F

    .line 43
    iput v0, p0, Lcom/oneplus/gl/ModelBase;->m_Opacity:F

    .line 49
    new-instance v0, Lcom/oneplus/gl/Point3D;

    invoke-direct {v0}, Lcom/oneplus/gl/Point3D;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_RotationCenter:Lcom/oneplus/gl/Point3D;

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    .line 51
    sget-object v0, Lcom/oneplus/gl/ModelBase$Style;->FACES:Lcom/oneplus/gl/ModelBase$Style;

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TempPoint:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Lcom/oneplus/gl/Point3D;

    invoke-direct {v0}, Lcom/oneplus/gl/Point3D;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TempPoint3D:Lcom/oneplus/gl/Point3D;

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    .line 68
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 69
    return-void
.end method

.method protected static final getDefaultVertexShader()Lcom/oneplus/gl/VertexShader;
    .locals 2

    .prologue
    .line 78
    sget-object v1, Lcom/oneplus/gl/ModelBase;->m_DefaultVertexShader:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/VertexShader;

    .line 79
    .local v0, "shader":Lcom/oneplus/gl/VertexShader;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/oneplus/gl/SimpleVertexShader;

    .end local v0    # "shader":Lcom/oneplus/gl/VertexShader;
    invoke-direct {v0}, Lcom/oneplus/gl/SimpleVertexShader;-><init>()V

    .line 82
    .restart local v0    # "shader":Lcom/oneplus/gl/VertexShader;
    sget-object v1, Lcom/oneplus/gl/ModelBase;->m_DefaultVertexShader:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-object v0
.end method

.method private setRotation(IF)Lcom/oneplus/gl/ModelBase;
    .locals 2
    .param p1, "index"    # I
    .param p2, "degrees"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 728
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 737
    :goto_0
    return-object p0

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 731
    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    .line 732
    rem-float/2addr p2, v1

    .line 735
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aput p2, v0, p1

    .line 736
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->invalidateVertices()V

    goto :goto_0

    .line 733
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 734
    rem-float/2addr p2, v1

    goto :goto_1
.end method

.method private setRotationBy(IF)Lcom/oneplus/gl/ModelBase;
    .locals 3
    .param p1, "index"    # I
    .param p2, "degrees"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 744
    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    .line 754
    :goto_0
    return-object p0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 747
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v0, v0, p1

    add-float/2addr p2, v0

    .line 748
    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    .line 749
    rem-float/2addr p2, v1

    .line 752
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aput p2, v0, p1

    .line 753
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->invalidateVertices()V

    goto :goto_0

    .line 750
    :cond_2
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 751
    rem-float/2addr p2, v1

    goto :goto_1
.end method

.method private setTranslation(IF)Lcom/oneplus/gl/ModelBase;
    .locals 5
    .param p1, "index"    # I
    .param p2, "translation"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 868
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 869
    packed-switch p1, :pswitch_data_0

    .line 884
    :goto_0
    return-object p0

    .line 872
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v1, v1, v4

    sub-float v1, p2, v1

    invoke-static {v0, v4, v1, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 883
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aput p2, v0, p1

    goto :goto_0

    .line 875
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float v1, p2, v1

    invoke-static {v0, v4, v3, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_1

    .line 878
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float v1, p2, v1

    invoke-static {v0, v4, v3, v3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_1

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBorderThickness()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/oneplus/gl/ModelBase;->m_BorderThickness:F

    return v0
.end method

.method protected getDrawArraysMode()I
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/oneplus/gl/ModelBase;->$SWITCH_TABLE$com$oneplus$gl$ModelBase$Style()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    invoke-virtual {v1}, Lcom/oneplus/gl/ModelBase$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 117
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getFragmentShader()Lcom/oneplus/gl/FragmentShader;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/oneplus/gl/ModelBase;->m_Opacity:F

    return v0
.end method

.method public getOpacityMask()Lcom/oneplus/gl/Texture2D;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMask:Lcom/oneplus/gl/Texture2D;

    return-object v0
.end method

.method public getOpacityMaskTexCoordBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    const/4 v7, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 152
    iget-boolean v5, p0, Lcom/oneplus/gl/ModelBase;->m_IsOpacityMaskTexCoordPrepared:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_LastCoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    if-eq v5, v6, :cond_3

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/ModelBase;->onPrepareOpacityMaskTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;

    move-result-object v4

    .line 155
    .local v4, "points":[Landroid/graphics/PointF;
    if-eqz v4, :cond_5

    array-length v5, v4

    if-lez v5, :cond_5

    .line 158
    array-length v1, v4

    .line 159
    .local v1, "count":I
    mul-int/lit8 v0, v1, 0x2

    .line 160
    .local v0, "capacity":I
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 161
    :cond_1
    mul-int/lit8 v5, v0, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/ModelBase;->m_TempPoint:Landroid/graphics/PointF;

    .line 165
    .local v3, "point":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_4

    .line 171
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    iput v1, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordCount:I

    .line 179
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Landroid/graphics/PointF;
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/gl/ModelBase;->m_IsOpacityMaskTexCoordPrepared:Z

    .line 181
    .end local v4    # "points":[Landroid/graphics/PointF;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v5

    .line 167
    .restart local v0    # "capacity":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "point":Landroid/graphics/PointF;
    .restart local v4    # "points":[Landroid/graphics/PointF;
    :cond_4
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 168
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Landroid/graphics/PointF;
    :cond_5
    iput v7, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordCount:I

    .line 177
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordBuffer:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public getOpacityMaskTexCoordCount(Lcom/oneplus/gl/DrawingContext;)I
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 192
    iget v0, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMaskTexCoordCount:I

    return v0
.end method

.method public getRotationX()F
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRotationY()F
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotations([F)V
    .locals 4
    .param p1, "rotations"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 203
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 204
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 205
    return-void
.end method

.method public getStyle()Lcom/oneplus/gl/ModelBase$Style;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    return-object v0
.end method

.method public getTexCoordBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    const/4 v7, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 256
    iget-boolean v5, p0, Lcom/oneplus/gl/ModelBase;->m_IsTexCoordPrepared:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_LastCoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    if-eq v5, v6, :cond_3

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/ModelBase;->onPrepareTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;

    move-result-object v4

    .line 259
    .local v4, "points":[Landroid/graphics/PointF;
    if-eqz v4, :cond_5

    array-length v5, v4

    if-lez v5, :cond_5

    .line 262
    array-length v1, v4

    .line 263
    .local v1, "count":I
    mul-int/lit8 v0, v1, 0x2

    .line 264
    .local v0, "capacity":I
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 265
    :cond_1
    mul-int/lit8 v5, v0, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/ModelBase;->m_TempPoint:Landroid/graphics/PointF;

    .line 269
    .local v3, "point":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_4

    .line 275
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iput v1, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordCount:I

    .line 283
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Landroid/graphics/PointF;
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/oneplus/gl/ModelBase;->m_IsTexCoordPrepared:Z

    .line 285
    .end local v4    # "points":[Landroid/graphics/PointF;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v5

    .line 271
    .restart local v0    # "capacity":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "point":Landroid/graphics/PointF;
    .restart local v4    # "points":[Landroid/graphics/PointF;
    :cond_4
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 272
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 273
    iget-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Landroid/graphics/PointF;
    :cond_5
    iput v7, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordCount:I

    .line 281
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordBuffer:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public getTexCoordCount(Lcom/oneplus/gl/DrawingContext;)I
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 296
    iget v0, p0, Lcom/oneplus/gl/ModelBase;->m_TexCoordCount:I

    return v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    return-object v0
.end method

.method public getTranslationX()F
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTranslationZ()F
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTranslations([F)V
    .locals 4
    .param p1, "translations"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 317
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 318
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v0, v0, v3

    aput v0, p1, v3

    .line 319
    return-void
.end method

.method public getVertexBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;
    .locals 12
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 360
    iget-boolean v6, p0, Lcom/oneplus/gl/ModelBase;->m_IsVerticesPrepared:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gl/ModelBase;->m_LastCoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    if-eq v6, v7, :cond_3

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/ModelBase;->onPrepareVertices(Lcom/oneplus/gl/DrawingContext;)[Lcom/oneplus/gl/Point3D;

    move-result-object v5

    .line 363
    .local v5, "vertices":[Lcom/oneplus/gl/Point3D;
    if-eqz v5, :cond_8

    array-length v6, v5

    if-lez v6, :cond_8

    .line 366
    array-length v1, v5

    .line 367
    .local v1, "count":I
    mul-int/lit8 v0, v1, 0x3

    .line 368
    .local v0, "capacity":I
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    if-ge v6, v0, :cond_2

    .line 369
    :cond_1
    mul-int/lit8 v6, v0, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    .line 372
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    iget-object v4, p0, Lcom/oneplus/gl/ModelBase;->m_RotationCenter:Lcom/oneplus/gl/Point3D;

    .line 374
    .local v4, "rotationCenter":Lcom/oneplus/gl/Point3D;
    iget-object v3, p0, Lcom/oneplus/gl/ModelBase;->m_TempPoint3D:Lcom/oneplus/gl/Point3D;

    .line 375
    .local v3, "point":Lcom/oneplus/gl/Point3D;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_4

    .line 394
    iput v1, p0, Lcom/oneplus/gl/ModelBase;->m_VertexCount:I

    .line 395
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Lcom/oneplus/gl/Point3D;
    .end local v4    # "rotationCenter":Lcom/oneplus/gl/Point3D;
    :goto_1
    iput-boolean v10, p0, Lcom/oneplus/gl/ModelBase;->m_IsVerticesPrepared:Z

    .line 404
    .end local v5    # "vertices":[Lcom/oneplus/gl/Point3D;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    return-object v6

    .line 378
    .restart local v0    # "capacity":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "point":Lcom/oneplus/gl/Point3D;
    .restart local v4    # "rotationCenter":Lcom/oneplus/gl/Point3D;
    .restart local v5    # "vertices":[Lcom/oneplus/gl/Point3D;
    :cond_4
    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 380
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_5

    .line 381
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v8

    invoke-virtual {p0, v3, v4, v6}, Lcom/oneplus/gl/ModelBase;->rotateX(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V

    .line 382
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v10

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_6

    .line 383
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v10

    invoke-virtual {p0, v3, v4, v6}, Lcom/oneplus/gl/ModelBase;->rotateY(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V

    .line 384
    :cond_6
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v11

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_7

    .line 385
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    aget v6, v6, v11

    invoke-virtual {p0, v3, v4, v6}, Lcom/oneplus/gl/ModelBase;->rotateZ(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V

    .line 388
    :cond_7
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v7, v3, Lcom/oneplus/gl/Point3D;->x:F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 389
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v7, v3, Lcom/oneplus/gl/Point3D;->y:F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 390
    iget-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    iget v7, v3, Lcom/oneplus/gl/Point3D;->z:F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "capacity":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "point":Lcom/oneplus/gl/Point3D;
    .end local v4    # "rotationCenter":Lcom/oneplus/gl/Point3D;
    :cond_8
    iput v8, p0, Lcom/oneplus/gl/ModelBase;->m_VertexCount:I

    .line 400
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oneplus/gl/ModelBase;->m_VertexBuffer:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public getVertexCount(Lcom/oneplus/gl/DrawingContext;)I
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 415
    iget v0, p0, Lcom/oneplus/gl/ModelBase;->m_VertexCount:I

    return v0
.end method

.method public hasAlphaBlending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 423
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    invoke-virtual {v1}, Lcom/oneplus/gl/FragmentShader;->hasAlphaBlending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/oneplus/gl/ModelBase;->m_Opacity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invalidateTexCoord()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gl/ModelBase;->m_IsTexCoordPrepared:Z

    .line 436
    return-void
.end method

.method protected invalidateVertices()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 448
    iput v0, p0, Lcom/oneplus/gl/ModelBase;->m_VertexCount:I

    .line 449
    iput-boolean v0, p0, Lcom/oneplus/gl/ModelBase;->m_IsVerticesPrepared:Z

    .line 450
    return-void
.end method

.method protected onDraw(Lcom/oneplus/gl/DrawingContext;)V
    .locals 4
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_VertexShader:Lcom/oneplus/gl/VertexShader;

    .line 459
    .local v0, "vertexShader":Lcom/oneplus/gl/VertexShader;
    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/oneplus/gl/ModelBase;->getDefaultVertexShader()Lcom/oneplus/gl/VertexShader;

    move-result-object v0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 470
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    if-nez v1, :cond_3

    .line 472
    new-instance v1, Lcom/oneplus/gl/Program;

    invoke-direct {v1}, Lcom/oneplus/gl/Program;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    .line 473
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    iget-object v2, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gl/Program;->addShader(Lcom/oneplus/gl/Shader;Z)Lcom/oneplus/gl/Program;

    .line 474
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/gl/Program;->addShader(Lcom/oneplus/gl/Shader;Z)Lcom/oneplus/gl/Program;

    .line 476
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 479
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v0, p1, v1, p0}, Lcom/oneplus/gl/VertexShader;->onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 482
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    iget-object v2, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v1, p1, v2, p0}, Lcom/oneplus/gl/FragmentShader;->onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 485
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    sget-object v2, Lcom/oneplus/gl/ModelBase$Style;->LINES:Lcom/oneplus/gl/ModelBase$Style;

    if-ne v1, v2, :cond_4

    .line 486
    iget v1, p0, Lcom/oneplus/gl/ModelBase;->m_BorderThickness:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 487
    :cond_4
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 488
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->getDrawArraysMode()I

    move-result v1

    iget v2, p0, Lcom/oneplus/gl/ModelBase;->m_VertexCount:I

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 491
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    iget-object v2, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v1, p1, v2, p0}, Lcom/oneplus/gl/FragmentShader;->onComplete(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 492
    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-virtual {v0, p1, v1, p0}, Lcom/oneplus/gl/VertexShader;->onComplete(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 495
    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getCoordinateSystem()Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_LastCoordinateSystem:Lcom/oneplus/gl/DrawingContext$CoordinateSystem;

    goto :goto_0
.end method

.method protected onPrepareOpacityMaskTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/ModelBase;->onPrepareTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onPrepareTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;
.end method

.method protected abstract onPrepareVertices(Lcom/oneplus/gl/DrawingContext;)[Lcom/oneplus/gl/Point3D;
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    if-eqz v0, :cond_1

    .line 533
    iget-boolean v0, p0, Lcom/oneplus/gl/ModelBase;->m_OwnsFragmentShader:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    invoke-static {v0}, Lcom/oneplus/gl/EglObject;->release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;

    .line 535
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    .line 539
    :cond_1
    iput-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_VertexShader:Lcom/oneplus/gl/VertexShader;

    .line 542
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-static {v0}, Lcom/oneplus/gl/EglObject;->release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Program;

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    .line 545
    invoke-super {p0}, Lcom/oneplus/gl/DrawableObject;->onRelease()V

    .line 546
    return-void
.end method

.method protected final rotateX(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V
    .locals 12
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;
    .param p2, "center"    # Lcom/oneplus/gl/Point3D;
    .param p3, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 558
    if-eqz p1, :cond_0

    cmpl-float v8, p3, v1

    if-nez v8, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 563
    .local v0, "centerY":F
    :goto_1
    if-nez p2, :cond_3

    .line 564
    .local v1, "centerZ":F
    :goto_2
    iget v8, p1, Lcom/oneplus/gl/Point3D;->y:F

    sub-float v6, v8, v0

    .line 565
    .local v6, "y":F
    iget v8, p1, Lcom/oneplus/gl/Point3D;->z:F

    sub-float v7, v8, v1

    .line 568
    .local v7, "z":F
    const/high16 v8, 0x43340000    # 180.0f

    div-float v8, p3, v8

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v8, v10

    .line 569
    .local v4, "rad":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 570
    .local v3, "sin":F
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 571
    .local v2, "cos":F
    mul-float v8, v6, v2

    mul-float v9, v7, v3

    sub-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, p1, Lcom/oneplus/gl/Point3D;->y:F

    .line 572
    mul-float v8, v6, v3

    mul-float v9, v7, v2

    add-float/2addr v8, v9

    add-float/2addr v8, v1

    iput v8, p1, Lcom/oneplus/gl/Point3D;->z:F

    goto :goto_0

    .line 562
    .end local v0    # "centerY":F
    .end local v1    # "centerZ":F
    .end local v2    # "cos":F
    .end local v3    # "sin":F
    .end local v4    # "rad":D
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_2
    iget v0, p2, Lcom/oneplus/gl/Point3D;->y:F

    goto :goto_1

    .line 563
    .restart local v0    # "centerY":F
    :cond_3
    iget v1, p2, Lcom/oneplus/gl/Point3D;->z:F

    goto :goto_2
.end method

.method protected rotateY(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V
    .locals 12
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;
    .param p2, "center"    # Lcom/oneplus/gl/Point3D;
    .param p3, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 585
    if-eqz p1, :cond_0

    cmpl-float v8, p3, v1

    if-nez v8, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 590
    .local v0, "centerX":F
    :goto_1
    if-nez p2, :cond_3

    .line 591
    .local v1, "centerZ":F
    :goto_2
    iget v8, p1, Lcom/oneplus/gl/Point3D;->x:F

    sub-float v6, v8, v0

    .line 592
    .local v6, "x":F
    iget v8, p1, Lcom/oneplus/gl/Point3D;->z:F

    sub-float v7, v8, v1

    .line 595
    .local v7, "z":F
    const/high16 v8, 0x43340000    # 180.0f

    div-float v8, p3, v8

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v8, v10

    .line 596
    .local v4, "rad":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 597
    .local v3, "sin":F
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 598
    .local v2, "cos":F
    mul-float v8, v6, v2

    mul-float v9, v7, v3

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, p1, Lcom/oneplus/gl/Point3D;->x:F

    .line 599
    neg-float v8, v6

    mul-float/2addr v8, v3

    mul-float v9, v7, v2

    add-float/2addr v8, v9

    add-float/2addr v8, v1

    iput v8, p1, Lcom/oneplus/gl/Point3D;->z:F

    goto :goto_0

    .line 589
    .end local v0    # "centerX":F
    .end local v1    # "centerZ":F
    .end local v2    # "cos":F
    .end local v3    # "sin":F
    .end local v4    # "rad":D
    .end local v6    # "x":F
    .end local v7    # "z":F
    :cond_2
    iget v0, p2, Lcom/oneplus/gl/Point3D;->x:F

    goto :goto_1

    .line 590
    .restart local v0    # "centerX":F
    :cond_3
    iget v1, p2, Lcom/oneplus/gl/Point3D;->z:F

    goto :goto_2
.end method

.method protected rotateZ(Lcom/oneplus/gl/Point3D;Lcom/oneplus/gl/Point3D;F)V
    .locals 12
    .param p1, "point"    # Lcom/oneplus/gl/Point3D;
    .param p2, "center"    # Lcom/oneplus/gl/Point3D;
    .param p3, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 612
    if-eqz p1, :cond_0

    cmpl-float v8, p3, v1

    if-nez v8, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 617
    .local v0, "centerX":F
    :goto_1
    if-nez p2, :cond_3

    .line 618
    .local v1, "centerY":F
    :goto_2
    iget v8, p1, Lcom/oneplus/gl/Point3D;->x:F

    sub-float v6, v8, v0

    .line 619
    .local v6, "x":F
    iget v8, p1, Lcom/oneplus/gl/Point3D;->y:F

    sub-float v7, v8, v1

    .line 622
    .local v7, "y":F
    const/high16 v8, 0x43340000    # 180.0f

    div-float v8, p3, v8

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v8, v10

    .line 623
    .local v4, "rad":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 624
    .local v3, "sin":F
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 625
    .local v2, "cos":F
    mul-float v8, v6, v2

    mul-float v9, v7, v3

    sub-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, p1, Lcom/oneplus/gl/Point3D;->x:F

    .line 626
    mul-float v8, v6, v3

    mul-float v9, v7, v2

    add-float/2addr v8, v9

    add-float/2addr v8, v1

    iput v8, p1, Lcom/oneplus/gl/Point3D;->y:F

    goto :goto_0

    .line 616
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "cos":F
    .end local v3    # "sin":F
    .end local v4    # "rad":D
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_2
    iget v0, p2, Lcom/oneplus/gl/Point3D;->x:F

    goto :goto_1

    .line 617
    .restart local v0    # "centerX":F
    :cond_3
    iget v1, p2, Lcom/oneplus/gl/Point3D;->y:F

    goto :goto_2
.end method

.method public setBorderThickness(F)Lcom/oneplus/gl/ModelBase;
    .locals 2
    .param p1, "thickness"    # F

    .prologue
    const/4 v0, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 638
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .end local p1    # "thickness":F
    :goto_0
    iput p1, p0, Lcom/oneplus/gl/ModelBase;->m_BorderThickness:F

    .line 639
    return-object p0

    .restart local p1    # "thickness":F
    :cond_0
    move p1, v0

    .line 638
    goto :goto_0
.end method

.method public setFragmentShader(Lcom/oneplus/gl/FragmentShader;)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "shader"    # Lcom/oneplus/gl/FragmentShader;

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gl/ModelBase;->setFragmentShader(Lcom/oneplus/gl/FragmentShader;Z)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setFragmentShader(Lcom/oneplus/gl/FragmentShader;Z)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "shader"    # Lcom/oneplus/gl/FragmentShader;
    .param p2, "ownsShader"    # Z

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 664
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    if-ne v0, p1, :cond_0

    .line 673
    :goto_0
    return-object p0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-static {v0}, Lcom/oneplus/gl/EglObject;->release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Program;

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    .line 671
    iput-object p1, p0, Lcom/oneplus/gl/ModelBase;->m_FragmentShader:Lcom/oneplus/gl/FragmentShader;

    .line 672
    iput-boolean p2, p0, Lcom/oneplus/gl/ModelBase;->m_OwnsFragmentShader:Z

    goto :goto_0
.end method

.method public setOpacity(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 684
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 685
    const/high16 p1, 0x3f800000    # 1.0f

    .line 688
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 689
    iput p1, p0, Lcom/oneplus/gl/ModelBase;->m_Opacity:F

    .line 690
    return-object p0

    .line 686
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 687
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setOpacityMask(Lcom/oneplus/gl/Texture2D;)Lcom/oneplus/gl/ModelBase;
    .locals 0
    .param p1, "mask"    # Lcom/oneplus/gl/Texture2D;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 702
    iput-object p1, p0, Lcom/oneplus/gl/ModelBase;->m_OpacityMask:Lcom/oneplus/gl/Texture2D;

    .line 703
    return-object p0
.end method

.method public setRotation(FFF)Lcom/oneplus/gl/ModelBase;
    .locals 2
    .param p1, "xAxis"    # F
    .param p2, "yAxis"    # F
    .param p3, "zAxis"    # F

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 717
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 718
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 719
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Rotations:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 720
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->invalidateVertices()V

    .line 721
    return-object p0
.end method

.method public setRotationCenter(FFF)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 768
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_RotationCenter:Lcom/oneplus/gl/Point3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 769
    return-object p0
.end method

.method public setRotationX(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setRotationXBy(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotationBy(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setRotationY(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 802
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setRotationYBy(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 813
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotationBy(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setRotationZ(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 824
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setRotationZBy(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 835
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setRotationBy(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method protected setStyle(Lcom/oneplus/gl/ModelBase$Style;)Lcom/oneplus/gl/ModelBase;
    .locals 2
    .param p1, "style"    # Lcom/oneplus/gl/ModelBase$Style;

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 847
    if-nez p1, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No style specifid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    if-eq v0, p1, :cond_1

    .line 852
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    invoke-static {v0}, Lcom/oneplus/gl/EglObject;->release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/Program;

    iput-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Program:Lcom/oneplus/gl/Program;

    .line 855
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->invalidateVertices()V

    .line 856
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->invalidateTexCoord()V

    .line 859
    iput-object p1, p0, Lcom/oneplus/gl/ModelBase;->m_Style:Lcom/oneplus/gl/ModelBase$Style;

    .line 861
    :cond_1
    return-object p0
.end method

.method public setTranslationX(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "translation"    # F

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setTranslation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setTranslationY(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "translation"    # F

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 926
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setTranslation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setTranslationZ(F)Lcom/oneplus/gl/ModelBase;
    .locals 1
    .param p1, "translation"    # F

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 938
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/ModelBase;->setTranslation(IF)Lcom/oneplus/gl/ModelBase;

    move-result-object v0

    return-object v0
.end method

.method public setTranslations(FFF)Lcom/oneplus/gl/ModelBase;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/oneplus/gl/ModelBase;->throwIfNotAccessible()V

    .line 898
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_TransformMatrix:[F

    iget-object v1, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v1, v1, v4

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v2, v2, v5

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aget v3, v3, v6

    sub-float v3, p3, v3

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 899
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aput p1, v0, v4

    .line 900
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aput p2, v0, v5

    .line 901
    iget-object v0, p0, Lcom/oneplus/gl/ModelBase;->m_Translations:[F

    aput p3, v0, v6

    .line 902
    return-object p0
.end method
