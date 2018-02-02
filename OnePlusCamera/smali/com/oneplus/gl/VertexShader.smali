.class public Lcom/oneplus/gl/VertexShader;
.super Lcom/oneplus/gl/Shader;
.source "VertexShader.java"


# static fields
.field public static final VAR_MVP_MATRIX:Ljava/lang/String; = "uMVPMatrix"

.field public static final VAR_OPACITY_MASK_TEXTURE_COORD:Ljava/lang/String; = "vOpacityMaskTexCoord"

.field public static final VAR_SHARED_OPACITY_MASK_TEXTURE_COORD:Ljava/lang/String; = "vSharedOpacityMaskTexCoord"

.field public static final VAR_SHARED_TEXTURE_COORD:Ljava/lang/String; = "vSharedTexCoord"

.field public static final VAR_TEXTURE_COORD:Ljava/lang/String; = "vTexCoord"

.field public static final VAR_TRANSFORM_MATRIX:Ljava/lang/String; = "uTransformMatrix"

.field public static final VAR_VERTEX_POSITION:Ljava/lang/String; = "vPosition"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 48
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/Shader;-><init>(ILjava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected setMvpMatrix(Lcom/oneplus/gl/Program;[F)Z
    .locals 5
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "matrix"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 63
    invoke-static {v0, v4, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 64
    return v4

    .line 66
    :cond_0
    return v3
.end method

.method protected setOpacityMaskTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z
    .locals 6
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "texCoordBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "vOpacityMaskTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 81
    if-eqz p2, :cond_1

    .line 83
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 84
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto :goto_0
.end method

.method protected setTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z
    .locals 6
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "texCoordBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "vTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 104
    if-eqz p2, :cond_1

    .line 106
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 107
    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    :cond_0
    :goto_0
    return v3

    .line 110
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto :goto_0
.end method

.method protected setTransformMatrix(Lcom/oneplus/gl/Program;[F)Z
    .locals 5
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "matrix"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "uTransformMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 127
    invoke-static {v0, v4, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    return v4

    .line 130
    :cond_0
    return v3
.end method

.method protected setVertexPositionBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z
    .locals 6
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "vertexBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "vPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 145
    if-eqz p2, :cond_1

    .line 147
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 148
    const/4 v1, 0x3

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 153
    :cond_0
    :goto_0
    return v3

    .line 151
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto :goto_0
.end method
