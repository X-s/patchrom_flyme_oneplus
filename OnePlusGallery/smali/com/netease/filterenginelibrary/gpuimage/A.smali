.class Lcom/netease/filterenginelibrary/gpuimage/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private final synthetic b:I

.field private final synthetic c:F


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/y;IF)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/A;->a:Lcom/netease/filterenginelibrary/gpuimage/y;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/A;->b:I

    iput p3, p0, Lcom/netease/filterenginelibrary/gpuimage/A;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/A;->b:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/A;->c:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
