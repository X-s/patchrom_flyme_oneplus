.class public Lcom/oneplus/gl/SimpleVertexShader;
.super Lcom/oneplus/gl/VertexShader;
.source "SimpleVertexShader.java"


# static fields
.field private static final SHADER_SCRIPT:Ljava/lang/String; = "attribute vec4 vPosition;uniform mat4 uMVPMatrix;uniform mat4 uTransformMatrix;attribute vec2 vTexCoord;attribute vec2 vOpacityMaskTexCoord;varying vec2 vSharedTexCoord;varying vec2 vSharedOpacityMaskTexCoord;void main(){  vSharedTexCoord = vTexCoord;  vSharedOpacityMaskTexCoord = vOpacityMaskTexCoord;  gl_Position = uMVPMatrix * uTransformMatrix * vPosition;}"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "attribute vec4 vPosition;uniform mat4 uMVPMatrix;uniform mat4 uTransformMatrix;attribute vec2 vTexCoord;attribute vec2 vOpacityMaskTexCoord;varying vec2 vSharedTexCoord;varying vec2 vSharedOpacityMaskTexCoord;void main(){  vSharedTexCoord = vTexCoord;  vSharedOpacityMaskTexCoord = vOpacityMaskTexCoord;  gl_Position = uMVPMatrix * uTransformMatrix * vPosition;}"

    invoke-direct {p0, v0}, Lcom/oneplus/gl/VertexShader;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onComplete(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 1
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/gl/SimpleVertexShader;->setVertexPositionBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 42
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/gl/SimpleVertexShader;->setTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 43
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/gl/SimpleVertexShader;->setOpacityMaskTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gl/VertexShader;->onComplete(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 47
    return-void
.end method

.method protected onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 3
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gl/VertexShader;->onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V

    .line 58
    invoke-virtual {p3, p1}, Lcom/oneplus/gl/ModelBase;->getVertexBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 59
    .local v1, "vertexBuffer":Ljava/nio/FloatBuffer;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0, p2, v1}, Lcom/oneplus/gl/SimpleVertexShader;->setVertexPositionBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/gl/DrawingContext;->getMvpMatrix()[F

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/SimpleVertexShader;->setMvpMatrix(Lcom/oneplus/gl/Program;[F)Z

    .line 66
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getTransformMatrix()[F

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/SimpleVertexShader;->setTransformMatrix(Lcom/oneplus/gl/Program;[F)Z

    .line 69
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getFragmentShader()Lcom/oneplus/gl/FragmentShader;

    move-result-object v0

    .line 70
    .local v0, "fragmentShader":Lcom/oneplus/gl/FragmentShader;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gl/FragmentShader;->isTextureCoordinateNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p3, p1}, Lcom/oneplus/gl/ModelBase;->getTexCoordBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/SimpleVertexShader;->setTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 74
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/gl/ModelBase;->getOpacityMask()Lcom/oneplus/gl/Texture2D;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {p3, p1}, Lcom/oneplus/gl/ModelBase;->getOpacityMaskTexCoordBuffer(Lcom/oneplus/gl/DrawingContext;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/oneplus/gl/SimpleVertexShader;->setOpacityMaskTexCoordBuffer(Lcom/oneplus/gl/Program;Ljava/nio/FloatBuffer;)Z

    .line 76
    :cond_2
    return-void
.end method
