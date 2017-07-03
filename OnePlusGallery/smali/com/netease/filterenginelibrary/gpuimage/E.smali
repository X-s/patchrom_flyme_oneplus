.class Lcom/netease/filterenginelibrary/gpuimage/E;
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

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->a:Lcom/netease/filterenginelibrary/gpuimage/y;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->b:I

    iput-object p3, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->b:I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->c:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/E;->c:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
