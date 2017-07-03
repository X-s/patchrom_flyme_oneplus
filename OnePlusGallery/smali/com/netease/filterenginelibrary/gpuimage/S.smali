.class Lcom/netease/filterenginelibrary/gpuimage/S;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/P;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/P;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->b:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->b(Lcom/netease/filterenginelibrary/gpuimage/P;I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->c(Lcom/netease/filterenginelibrary/gpuimage/P;I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/P;->d(Lcom/netease/filterenginelibrary/gpuimage/P;)I

    move-result v2

    iget-boolean v3, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->c:Z

    invoke-static {v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Landroid/graphics/Bitmap;IZ)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->e(Lcom/netease/filterenginelibrary/gpuimage/P;)V

    const-string v0, "FilterEngineSDK"

    const-string v1, "bitmap Texture load complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->f(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/S;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->f(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;->onTextureLoadComplete()V

    :cond_0
    return-void
.end method
