.class Lcom/netease/filterenginelibrary/gpuimage/q;
.super Lcom/netease/filterenginelibrary/gpuimage/e;


# instance fields
.field final synthetic j:Lcom/netease/filterenginelibrary/gpuimage/c;


# direct methods
.method public constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/c;Z)V
    .locals 8

    const/16 v2, 0x8

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/q;->j:Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/netease/filterenginelibrary/gpuimage/e;-><init>(Lcom/netease/filterenginelibrary/gpuimage/c;IIIIII)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
