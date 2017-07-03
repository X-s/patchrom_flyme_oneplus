.class public Lcom/netease/filterenginelibrary/gpuimage/y;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Queue;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringNoFilterVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/y;->b:Ljava/lang/String;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringNoFilterFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/y;->c:Ljava/lang/String;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringGestureVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/y;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/y;->b:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/y;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LOFTCAM"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->f:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->g:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->m:Z

    return-void
.end method

.method protected a(IF)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/A;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;IF)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->i:I

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->j:I

    return-void
.end method

.method protected a(ILandroid/graphics/PointF;)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/F;

    invoke-direct {v0, p0, p2, p1}, Lcom/netease/filterenginelibrary/gpuimage/F;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/B;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/B;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->g()V

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->f:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->h:I

    move v4, v3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v6, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->g:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->f()V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected b(II)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/z;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;II)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/C;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/C;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->m:Z

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->d()V

    return-void
.end method

.method protected c(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/D;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/D;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected d(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/E;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/E;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->m:Z

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->b()V

    return-void
.end method

.method protected e(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/G;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/G;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected f(I[F)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/H;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/H;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected g()V
    .locals 2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->m:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->j:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->e:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->f:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->h:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/y;->g:I

    return v0
.end method
