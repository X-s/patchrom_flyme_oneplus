.class public Lcom/netease/filterenginelibrary/gpuimage/K;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# instance fields
.field private a:I

.field private k:I

.field private l:F

.field private m:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/K;->d:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/K;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->l:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->m:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/PointF;)V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/K;->d:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/K;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->l:F

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->m:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->e:I

    const-string v1, "scale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->a:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->e:I

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->k:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->a:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(IF)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->k:I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->m:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->l:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->a:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(IF)V

    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->m:Landroid/graphics/PointF;

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->k:I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/K;->m:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/K;->a(ILandroid/graphics/PointF;)V

    return-void
.end method
