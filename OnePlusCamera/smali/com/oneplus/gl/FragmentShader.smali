.class public Lcom/oneplus/gl/FragmentShader;
.super Lcom/oneplus/gl/Shader;
.source "FragmentShader.java"


# static fields
.field public static final VAR_HAS_OPACITY_MASK:Ljava/lang/String; = "bHasOpacityMask"

.field public static final VAR_OPACITY_MASK_TEXTURE_UNIT:Ljava/lang/String; = "sOpacityMask"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 26
    const v0, 0x8b30

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gl/Shader;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected disableOpacityMaskTexture(Lcom/oneplus/gl/Program;)V
    .locals 2
    .param p1, "program"    # Lcom/oneplus/gl/Program;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v0

    const-string/jumbo v1, "bHasOpacityMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 34
    return-void
.end method

.method protected enableOpacityMaskTexture(Lcom/oneplus/gl/Program;)Z
    .locals 5
    .param p1, "program"    # Lcom/oneplus/gl/Program;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "bHasOpacityMask"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 50
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 51
    return v4

    .line 53
    :cond_0
    return v3
.end method

.method public hasAlphaBlending()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isTextureCoordinateNeeded()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected setOpacityMaskTextureUnit(Lcom/oneplus/gl/Program;I)Z
    .locals 4
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "unit"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "sOpacityMask"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 88
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 89
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_0
    return v3
.end method
