.class public Lcom/oneplus/gl/Model;
.super Lcom/oneplus/gl/ModelBase;
.source "Model.java"


# static fields
.field private static final COORDINATE_THRESHOLD:F = 1.0E-5f


# instance fields
.field private final m_TextureCoords:[Landroid/graphics/PointF;

.field private final m_Vertices:[Lcom/oneplus/gl/Point3D;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "vertexCount"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/gl/ModelBase;-><init>()V

    .line 25
    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid vertex count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    new-array v1, p1, [Lcom/oneplus/gl/Point3D;

    iput-object v1, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    .line 28
    new-array v1, p1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    .line 29
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    new-instance v2, Lcom/oneplus/gl/Point3D;

    invoke-direct {v2}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v2, v1, v0

    .line 32
    iget-object v1, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public constructor <init>([Lcom/oneplus/gl/Point3D;)V
    .locals 5
    .param p1, "vertices"    # [Lcom/oneplus/gl/Point3D;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/gl/ModelBase;-><init>()V

    .line 43
    array-length v2, p1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid vertex count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_0
    array-length v2, p1

    new-array v2, v2, [Lcom/oneplus/gl/Point3D;

    iput-object v2, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    .line 46
    array-length v2, p1

    new-array v2, v2, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    .line 47
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 49
    aget-object v1, p1, v0

    .line 50
    .local v1, "vertex":Lcom/oneplus/gl/Point3D;
    if-eqz v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    new-instance v3, Lcom/oneplus/gl/Point3D;

    invoke-direct {v3, v1}, Lcom/oneplus/gl/Point3D;-><init>(Lcom/oneplus/gl/Point3D;)V

    aput-object v3, v2, v0

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    new-instance v3, Lcom/oneplus/gl/Point3D;

    invoke-direct {v3}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v3, v2, v0

    goto :goto_1

    .line 41
    .end local v1    # "vertex":Lcom/oneplus/gl/Point3D;
    :cond_2
    return-void
.end method


# virtual methods
.method public getVertices([Lcom/oneplus/gl/Point3D;)Z
    .locals 5
    .param p1, "vertices"    # [Lcom/oneplus/gl/Point3D;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->throwIfNotAccessible()V

    .line 66
    if-eqz p1, :cond_0

    array-length v2, p1

    iget-object v3, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 67
    :cond_0
    return v4

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 70
    iget-object v2, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    aget-object v1, v2, v0

    .line 71
    .local v1, "internalVertex":Lcom/oneplus/gl/Point3D;
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 72
    new-instance v2, Lcom/oneplus/gl/Point3D;

    invoke-direct {v2}, Lcom/oneplus/gl/Point3D;-><init>()V

    aput-object v2, p1, v0

    .line 73
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2, v1}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 68
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 75
    .end local v1    # "internalVertex":Lcom/oneplus/gl/Point3D;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareTexCoords(Lcom/oneplus/gl/DrawingContext;)[Landroid/graphics/PointF;
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    return-object v0
.end method

.method protected onPrepareVertices(Lcom/oneplus/gl/DrawingContext;)[Lcom/oneplus/gl/Point3D;
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    return-object v0
.end method

.method public setTextureCoordinate(IFF)Lcom/oneplus/gl/Model;
    .locals 3
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->throwIfNotAccessible()V

    .line 117
    iget-object v1, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    aget-object v0, v1, p1

    .line 118
    .local v0, "internalCoord":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 119
    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->invalidateTexCoord()V

    .line 124
    :cond_1
    return-object p0
.end method

.method public setTextureCoordinate(ILandroid/graphics/PointF;)Lcom/oneplus/gl/Model;
    .locals 2
    .param p1, "index"    # I
    .param p2, "coord"    # Landroid/graphics/PointF;

    .prologue
    .line 103
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/gl/Model;->setTextureCoordinate(IFF)Lcom/oneplus/gl/Model;

    move-result-object v0

    return-object v0
.end method

.method public setTextureCoordinates([Landroid/graphics/PointF;)Lcom/oneplus/gl/Model;
    .locals 1
    .param p1, "coords"    # [Landroid/graphics/PointF;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gl/Model;->setTextureCoordinates([Landroid/graphics/PointF;I)Lcom/oneplus/gl/Model;

    move-result-object v0

    return-object v0
.end method

.method public setTextureCoordinates([Landroid/graphics/PointF;I)Lcom/oneplus/gl/Model;
    .locals 5
    .param p1, "coords"    # [Landroid/graphics/PointF;
    .param p2, "offset"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->throwIfNotAccessible()V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    array-length v3, v3

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 151
    iget-object v3, p0, Lcom/oneplus/gl/Model;->m_TextureCoords:[Landroid/graphics/PointF;

    sub-int v4, v1, p2

    aget-object v2, v3, v4

    .line 152
    .local v2, "internalCoord":Landroid/graphics/PointF;
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 155
    const/4 v0, 0x1

    .line 149
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 158
    .end local v2    # "internalCoord":Landroid/graphics/PointF;
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->invalidateTexCoord()V

    .line 160
    :cond_2
    return-object p0
.end method

.method public setVertex(IFFF)Lcom/oneplus/gl/Model;
    .locals 3
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->throwIfNotAccessible()V

    .line 187
    iget-object v1, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    aget-object v0, v1, p1

    .line 188
    .local v0, "internalVertex":Lcom/oneplus/gl/Point3D;
    iget v1, v0, Lcom/oneplus/gl/Point3D;->x:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 189
    iget v1, v0, Lcom/oneplus/gl/Point3D;->y:F

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/oneplus/gl/Point3D;->set(FFF)Lcom/oneplus/gl/Point3D;

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->invalidateVertices()V

    .line 195
    :cond_1
    return-object p0

    .line 190
    :cond_2
    iget v1, v0, Lcom/oneplus/gl/Point3D;->z:F

    sub-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_0
.end method

.method public setVertex(ILcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Model;
    .locals 3
    .param p1, "index"    # I
    .param p2, "vertex"    # Lcom/oneplus/gl/Point3D;

    .prologue
    .line 172
    iget v0, p2, Lcom/oneplus/gl/Point3D;->x:F

    iget v1, p2, Lcom/oneplus/gl/Point3D;->y:F

    iget v2, p2, Lcom/oneplus/gl/Point3D;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/gl/Model;->setVertex(IFFF)Lcom/oneplus/gl/Model;

    move-result-object v0

    return-object v0
.end method

.method public setVertices([Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Model;
    .locals 1
    .param p1, "vertices"    # [Lcom/oneplus/gl/Point3D;

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gl/Model;->setVertices([Lcom/oneplus/gl/Point3D;I)Lcom/oneplus/gl/Model;

    move-result-object v0

    return-object v0
.end method

.method public setVertices([Lcom/oneplus/gl/Point3D;I)Lcom/oneplus/gl/Model;
    .locals 5
    .param p1, "vertices"    # [Lcom/oneplus/gl/Point3D;
    .param p2, "offset"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->throwIfNotAccessible()V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    array-length v3, v3

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 222
    iget-object v3, p0, Lcom/oneplus/gl/Model;->m_Vertices:[Lcom/oneplus/gl/Point3D;

    sub-int v4, v1, p2

    aget-object v2, v3, v4

    .line 223
    .local v2, "internalVertex":Lcom/oneplus/gl/Point3D;
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/gl/Point3D;->equals(Lcom/oneplus/gl/Point3D;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/gl/Point3D;->set(Lcom/oneplus/gl/Point3D;)Lcom/oneplus/gl/Point3D;

    .line 226
    const/4 v0, 0x1

    .line 220
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 229
    .end local v2    # "internalVertex":Lcom/oneplus/gl/Point3D;
    :cond_1
    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/gl/Model;->invalidateVertices()V

    .line 231
    :cond_2
    return-object p0
.end method
