.class Lcom/netease/filterenginelibrary/gpuimage/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/W;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/W;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->a:Lcom/netease/filterenginelibrary/gpuimage/W;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->a:Lcom/netease/filterenginelibrary/gpuimage/W;

    iget v0, v0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->a:Lcom/netease/filterenginelibrary/gpuimage/W;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/X;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Landroid/graphics/Bitmap;IZ)I

    move-result v1

    iput v1, v0, Lcom/netease/filterenginelibrary/gpuimage/W;->m:I

    goto :goto_0
.end method
