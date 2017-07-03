.class Lcom/netease/filterenginelibrary/gpuimage/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private final synthetic b:Landroid/graphics/PointF;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/y;Landroid/graphics/PointF;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->a:Lcom/netease/filterenginelibrary/gpuimage/y;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->b:Landroid/graphics/PointF;

    iput p3, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v2

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v3

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/F;->c:I

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
