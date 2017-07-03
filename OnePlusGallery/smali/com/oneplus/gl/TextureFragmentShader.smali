.class public Lcom/oneplus/gl/TextureFragmentShader;
.super Lcom/oneplus/gl/FragmentShader;
.source "TextureFragmentShader.java"


# static fields
.field private static final SHADER_SCRIPT_2D:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D aaaTexture;\nuniform int bHasOpacityMask;\nuniform sampler2D sOpacityMask;\nuniform mat4 uTransform;\nuniform float fOpacity;\nvarying vec2 vSharedTexCoord;\nvarying vec2 vSharedOpacityMaskTexCoord;\nvoid main(){  vec4 coord4 = uTransform * vec4 (vSharedTexCoord.xy, 0, 1);  gl_FragColor = texture2D(aaaTexture, coord4.xy);  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor.w = gl_FragColor.w * a * fOpacity;  }  else  {    gl_FragColor.w = gl_FragColor.w * fOpacity;  }}"

.field private static final SHADER_SCRIPT_EXTERNAL_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require \nprecision highp float;uniform samplerExternalOES aaaTexture;uniform int bHasOpacityMask;uniform sampler2D sOpacityMask;uniform mat4 uTransform;uniform float fOpacity;\nvarying vec2 vSharedTexCoord;varying vec2 vSharedOpacityMaskTexCoord;\nvoid main(){  vec4 coord4 = uTransform * vec4 (vSharedTexCoord.xy, 0, 1);  gl_FragColor = texture2D(aaaTexture, vec2 (coord4.x, 1.0 - coord4.y));  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor.w = gl_FragColor.w * a * fOpacity;  }  else  {    gl_FragColor.w = gl_FragColor.w * fOpacity;  }}"

.field public static final VAR_OPACITY:Ljava/lang/String; = "fOpacity"

.field public static final VAR_TEXTURE_COORD_TRANSFORM_MATRIX:Ljava/lang/String; = "uTransform"

.field public static final VAR_TEXTURE_UNIT:Ljava/lang/String; = "aaaTexture"


# instance fields
.field private final m_OwnsTexture:Z

.field private m_Texture:Lcom/oneplus/gl/Texture;

.field private final m_TransformMatrix:[F


# direct methods
.method public constructor <init>(Lcom/oneplus/gl/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/oneplus/gl/Texture;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gl/TextureFragmentShader;-><init>(Lcom/oneplus/gl/Texture;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gl/Texture;Z)V
    .locals 1
    .param p1, "texture"    # Lcom/oneplus/gl/Texture;
    .param p2, "ownsTexture"    # Z

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/oneplus/gl/Texture;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/gl/TextureFragmentShader;->selectShaderSource(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/gl/FragmentShader;-><init>(Ljava/lang/String;)V

    .line 99
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_TransformMatrix:[F

    .line 120
    iput-object p1, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    .line 121
    iput-boolean p2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_OwnsTexture:Z

    .line 122
    return-void
.end method

.method private static selectShaderSource(I)Ljava/lang/String;
    .locals 3
    .param p0, "textureType"    # I

    .prologue
    .line 203
    sparse-switch p0, :sswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported texture type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :sswitch_0
    const-string v0, "precision mediump float;\nuniform sampler2D aaaTexture;\nuniform int bHasOpacityMask;\nuniform sampler2D sOpacityMask;\nuniform mat4 uTransform;\nuniform float fOpacity;\nvarying vec2 vSharedTexCoord;\nvarying vec2 vSharedOpacityMaskTexCoord;\nvoid main(){  vec4 coord4 = uTransform * vec4 (vSharedTexCoord.xy, 0, 1);  gl_FragColor = texture2D(aaaTexture, coord4.xy);  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor.w = gl_FragColor.w * a * fOpacity;  }  else  {    gl_FragColor.w = gl_FragColor.w * fOpacity;  }}"

    .line 208
    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "#extension GL_OES_EGL_image_external : require \nprecision highp float;uniform samplerExternalOES aaaTexture;uniform int bHasOpacityMask;uniform sampler2D sOpacityMask;uniform mat4 uTransform;uniform float fOpacity;\nvarying vec2 vSharedTexCoord;varying vec2 vSharedOpacityMaskTexCoord;\nvoid main(){  vec4 coord4 = uTransform * vec4 (vSharedTexCoord.xy, 0, 1);  gl_FragColor = texture2D(aaaTexture, vec2 (coord4.x, 1.0 - coord4.y));  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor.w = gl_FragColor.w * a * fOpacity;  }  else  {    gl_FragColor.w = gl_FragColor.w * fOpacity;  }}"

    goto :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0xde1 -> :sswitch_0
        0x8d65 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getTexture()Lcom/oneplus/gl/Texture;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    return-object v0
.end method

.method public hasAlphaBlending()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    instance-of v0, v0, Lcom/oneplus/gl/Texture2D;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    check-cast v0, Lcom/oneplus/gl/Texture2D;

    invoke-virtual {v0}, Lcom/oneplus/gl/Texture2D;->getFormat()Lcom/oneplus/gl/Texture2D$Format;

    move-result-object v0

    sget-object v2, Lcom/oneplus/gl/Texture2D$Format;->RGB_565:Lcom/oneplus/gl/Texture2D$Format;

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method protected onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 4
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gl/FragmentShader;->onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 153
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    invoke-virtual {v2}, Lcom/oneplus/gl/Texture;->getType()I

    move-result v1

    .line 154
    .local v1, "textureType":I
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 155
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    invoke-virtual {v2}, Lcom/oneplus/gl/Texture;->getObjectId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/TextureFragmentShader;->setTextureUnit(Lcom/oneplus/gl/Program;I)Z

    .line 159
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    instance-of v2, v2, Lcom/oneplus/gl/Texture2D;

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/oneplus/gl/TextureFragmentShader;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/TextureFragmentShader;->setTexCoordTransformMatrix(Lcom/oneplus/gl/Program;[F)Z

    .line 170
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getOpacityMask()Lcom/oneplus/gl/Texture2D;

    move-result-object v0

    .line 171
    .local v0, "opacityMask":Lcom/oneplus/gl/Texture;
    if-nez v0, :cond_2

    .line 172
    invoke-virtual {p0, p2}, Lcom/oneplus/gl/TextureFragmentShader;->disableOpacityMaskTexture(Lcom/oneplus/gl/Program;)V

    .line 182
    :goto_1
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getOpacity()F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/TextureFragmentShader;->setOpacity(Lcom/oneplus/gl/Program;F)Z

    .line 183
    return-void

    .line 161
    .end local v0    # "opacityMask":Lcom/oneplus/gl/Texture;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    instance-of v2, v2, Lcom/oneplus/gl/ExternalOESTexture;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    check-cast v2, Lcom/oneplus/gl/ExternalOESTexture;

    iget-object v3, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_TransformMatrix:[F

    invoke-virtual {v2, v3}, Lcom/oneplus/gl/ExternalOESTexture;->getTransformMatrix([F)V

    .line 166
    iget-object v2, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_TransformMatrix:[F

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/TextureFragmentShader;->setTexCoordTransformMatrix(Lcom/oneplus/gl/Program;[F)Z

    goto :goto_0

    .line 175
    .restart local v0    # "opacityMask":Lcom/oneplus/gl/Texture;
    :cond_2
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 176
    const/16 v2, 0xde1

    invoke-virtual {v0}, Lcom/oneplus/gl/Texture;->getObjectId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/oneplus/gl/TextureFragmentShader;->enableOpacityMaskTexture(Lcom/oneplus/gl/Program;)Z

    .line 178
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/TextureFragmentShader;->setOpacityMaskTextureUnit(Lcom/oneplus/gl/Program;I)Z

    goto :goto_1
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    if-eqz v0, :cond_1

    .line 192
    iget-boolean v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_OwnsTexture:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    invoke-static {v0}, Lcom/oneplus/gl/EglObject;->release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/TextureFragmentShader;->m_Texture:Lcom/oneplus/gl/Texture;

    .line 196
    :cond_1
    invoke-super {p0}, Lcom/oneplus/gl/FragmentShader;->onRelease()V

    .line 197
    return-void
.end method

.method protected setOpacity(Lcom/oneplus/gl/Program;F)Z
    .locals 3
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "opacity"    # F

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string v2, "fOpacity"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 279
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 280
    const/4 v1, 0x1

    .line 282
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setTexCoordTransformMatrix(Lcom/oneplus/gl/Program;[F)Z
    .locals 5
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "matrix"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v3

    const-string v4, "uTransform"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 315
    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 318
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected setTextureUnit(Lcom/oneplus/gl/Program;I)Z
    .locals 3
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "unit"    # I

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string v2, "aaaTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 295
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 297
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 298
    const/4 v1, 0x1

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
