.class Lcom/netease/filterenginelibrary/gpuimage/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/v;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/v;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->a:Lcom/netease/filterenginelibrary/gpuimage/v;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->a:Lcom/netease/filterenginelibrary/gpuimage/v;

    iget v0, v0, Lcom/netease/filterenginelibrary/gpuimage/v;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->a:Lcom/netease/filterenginelibrary/gpuimage/v;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/w;->b:I

    iput v1, v0, Lcom/netease/filterenginelibrary/gpuimage/v;->m:I

    :cond_0
    return-void
.end method
