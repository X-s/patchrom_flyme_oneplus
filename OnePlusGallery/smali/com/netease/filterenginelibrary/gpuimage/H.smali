.class Lcom/netease/filterenginelibrary/gpuimage/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private final synthetic b:I

.field private final synthetic c:[F


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/H;->a:Lcom/netease/filterenginelibrary/gpuimage/y;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/H;->b:I

    iput-object p3, p0, Lcom/netease/filterenginelibrary/gpuimage/H;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/H;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/H;->c:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
