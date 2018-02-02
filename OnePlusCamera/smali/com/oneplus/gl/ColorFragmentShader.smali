.class public Lcom/oneplus/gl/ColorFragmentShader;
.super Lcom/oneplus/gl/FragmentShader;
.source "ColorFragmentShader.java"


# static fields
.field private static final SHADER_SCRIPT:Ljava/lang/String; = "precision mediump float;uniform vec4 vColor;uniform int bHasOpacityMask;uniform sampler2D sOpacityMask;varying vec2 vSharedOpacityMaskTexCoord;void main(){  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor = vec4 (vColor.xyz, vColor.w * a);  }  else  {    gl_FragColor = vColor;  }}"

.field public static final VAR_COLOR:Ljava/lang/String; = "vColor"


# instance fields
.field private m_Color:I

.field private final m_ColorVector:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gl/ColorFragmentShader;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 59
    const-string/jumbo v0, "precision mediump float;uniform vec4 vColor;uniform int bHasOpacityMask;uniform sampler2D sOpacityMask;varying vec2 vSharedOpacityMaskTexCoord;void main(){  if(bHasOpacityMask != 0)  {    float a = texture2D(sOpacityMask, vSharedOpacityMaskTexCoord).w;    gl_FragColor = vec4 (vColor.xyz, vColor.w * a);  }  else  {    gl_FragColor = vColor;  }}"

    invoke-direct {p0, v0}, Lcom/oneplus/gl/FragmentShader;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    .line 60
    invoke-virtual {p0, p1}, Lcom/oneplus/gl/ColorFragmentShader;->setColor(I)Lcom/oneplus/gl/ColorFragmentShader;

    .line 57
    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_Color:I

    return v0
.end method

.method public hasAlphaBlending()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextureCoordinateNeeded()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 4
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gl/FragmentShader;->onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 98
    iget-object v2, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    iget v1, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_Color:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v1, v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getOpacity()F

    move-result v1

    :goto_0
    mul-float/2addr v1, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 99
    iget-object v1, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    invoke-virtual {p0, p2, v1}, Lcom/oneplus/gl/ColorFragmentShader;->setColor(Lcom/oneplus/gl/Program;[F)Z

    .line 102
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getOpacityMask()Lcom/oneplus/gl/Texture2D;

    move-result-object v0

    .line 103
    .local v0, "opacityMask":Lcom/oneplus/gl/Texture;
    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0, p2}, Lcom/oneplus/gl/ColorFragmentShader;->disableOpacityMaskTexture(Lcom/oneplus/gl/Program;)V

    .line 92
    :goto_1
    return-void

    .line 98
    .end local v0    # "opacityMask":Lcom/oneplus/gl/Texture;
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 107
    .restart local v0    # "opacityMask":Lcom/oneplus/gl/Texture;
    :cond_1
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 108
    invoke-virtual {v0}, Lcom/oneplus/gl/Texture;->getObjectId()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/oneplus/gl/ColorFragmentShader;->enableOpacityMaskTexture(Lcom/oneplus/gl/Program;)Z

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/oneplus/gl/ColorFragmentShader;->setOpacityMaskTextureUnit(Lcom/oneplus/gl/Program;I)Z

    goto :goto_1
.end method

.method public setColor(I)Lcom/oneplus/gl/ColorFragmentShader;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/gl/ColorFragmentShader;->throwIfNotAccessible()V

    .line 123
    iput p1, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_Color:I

    .line 124
    iget-object v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 125
    iget-object v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 126
    iget-object v0, p0, Lcom/oneplus/gl/ColorFragmentShader;->m_ColorVector:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 127
    return-object p0
.end method

.method protected setColor(Lcom/oneplus/gl/Program;[F)Z
    .locals 5
    .param p1, "program"    # Lcom/oneplus/gl/Program;
    .param p2, "color"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/oneplus/gl/Program;->getObjectId()I

    move-result v1

    const-string/jumbo v2, "vColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "location":I
    if-ltz v0, :cond_0

    .line 142
    invoke-static {v0, v4, p2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 143
    return v4

    .line 145
    :cond_0
    return v3
.end method
