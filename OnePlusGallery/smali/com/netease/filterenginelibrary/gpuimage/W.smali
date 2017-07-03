.class public Lcom/netease/filterenginelibrary/gpuimage/W;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field private n:Ljava/nio/ByteBuffer;

.field private o:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/W;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/W;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/aj;->a:Lcom/netease/filterenginelibrary/gpuimage/aj;

    invoke-virtual {p0, v0, v1, v1}, Lcom/netease/filterenginelibrary/gpuimage/W;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/W;->k()I

    move-result v0

    const-string v1, "inputTextureCoordinate2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->k:I

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/W;->k()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->l:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/X;

    invoke-direct {v0, p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/X;-><init>(Lcom/netease/filterenginelibrary/gpuimage/W;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/netease/filterenginelibrary/gpuimage/al;->a(Lcom/netease/filterenginelibrary/gpuimage/aj;ZZ)[F

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->n:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->b()V

    new-array v0, v3, [I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    return-void
.end method

.method protected f()V
    .locals 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->l:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->k:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->n:Ljava/nio/ByteBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public o()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/W;->o:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
