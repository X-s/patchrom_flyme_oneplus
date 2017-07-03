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

    .line 27
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

    const-string v1, "bHasOpacityMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 37
    return-void
.end method

.method protected enableOpacityMaskTexture(Lcom/oneplus/gl/Program;)Z
    .locals 4
    .param p1, "program"    # Lcom/oneplus/gl/Program;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v2

    const-string v3, "bHasOpacityMask"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 50
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 53
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .locals 3
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "unit"    # I

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string v2, "sOpacityMask"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 88
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 89
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
