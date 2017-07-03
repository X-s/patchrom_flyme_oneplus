.class Lcom/netease/filterenginelibrary/gpuimage/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/P;

.field private final synthetic b:Lcom/netease/filterenginelibrary/gpuimage/y;


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/P;Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->b:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-static {v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;Lcom/netease/filterenginelibrary/gpuimage/y;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->e()V

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->c()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;)Lcom/netease/filterenginelibrary/gpuimage/y;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->b(Lcom/netease/filterenginelibrary/gpuimage/P;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Q;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v2}, Lcom/netease/filterenginelibrary/gpuimage/P;->c(Lcom/netease/filterenginelibrary/gpuimage/P;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(II)V

    const-string v0, "FilterEngineSDK"

    const-string v1, "filter has rendered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
