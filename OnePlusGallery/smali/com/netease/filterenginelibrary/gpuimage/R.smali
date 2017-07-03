.class Lcom/netease/filterenginelibrary/gpuimage/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/P;


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/P;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/R;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/R;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->d(Lcom/netease/filterenginelibrary/gpuimage/P;)I

    move-result v1

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/R;->a:Lcom/netease/filterenginelibrary/gpuimage/P;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/P;I)V

    return-void
.end method
