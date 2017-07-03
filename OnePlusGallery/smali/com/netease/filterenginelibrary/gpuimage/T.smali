.class public Lcom/netease/filterenginelibrary/gpuimage/T;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private k:I

.field private l:F

.field private m:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringRotateVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/T;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/T;->a:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/T;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->l:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/T;->a:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/T;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->l:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->e:I

    const-string v1, "rotateMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->k:I

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->l:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v5, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    invoke-interface {p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->k:I

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->m:[F

    invoke-virtual {p0, v0, v4}, Lcom/netease/filterenginelibrary/gpuimage/T;->f(I[F)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->f:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->h:I

    move v4, v3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v6, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->g:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/T;->f()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/T;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
