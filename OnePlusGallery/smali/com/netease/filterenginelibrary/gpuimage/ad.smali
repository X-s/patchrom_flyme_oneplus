.class Lcom/netease/filterenginelibrary/gpuimage/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I

.field private final synthetic f:Ljava/nio/IntBuffer;

.field private final synthetic g:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;IIIILjava/nio/IntBuffer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->a:Lcom/netease/filterenginelibrary/gpuimage/GPUImageView;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    iput p3, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    iput p4, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->d:I

    iput p5, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->e:I

    iput-object p6, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->f:Ljava/nio/IntBuffer;

    iput-object p7, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->g:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->d:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->e:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v0, v7

    :goto_0
    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    move v1, v7

    :goto_1
    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->f:Ljava/nio/IntBuffer;

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->c:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ad;->b:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {v6, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
