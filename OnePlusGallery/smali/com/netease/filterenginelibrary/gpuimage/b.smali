.class Lcom/netease/filterenginelibrary/gpuimage/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/filterenginelibrary/utils/OnRenderingListener;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/b;->a:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/b;->a:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;)Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/b;->a:Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;->a(Lcom/netease/filterenginelibrary/gpuimage/FilterEngineSDK;)Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/filterenginelibrary/utils/OnRenderingPreparationFinishedListener;->onPreparationFinished(Z)V

    :cond_0
    return-void
.end method
