.class public Lcom/netease/filterenginelibrary/gpuimage/Z;
.super Lcom/netease/filterenginelibrary/gpuimage/Y;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:F

.field protected K:Landroid/graphics/PointF;

.field protected L:F

.field protected M:F

.field protected N:F

.field protected O:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/Y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->J:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->K:Landroid/graphics/PointF;

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->L:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->M:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->N:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->O:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/Y;->a()V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/Z;->t()V

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/Y;->a(II)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/Z;->t()V

    return-void
.end method

.method public r()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public s()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected t()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/Z;->s()F

    move-result v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v2

    const-string v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->t:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v2

    const-string v3, "texelHeightOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->u:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->t:I

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->i:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->u:I

    invoke-virtual {v0, v1, v6}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "aspectRatio"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->v:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "blurCenter"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->w:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "radius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->x:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "outRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->y:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "theta"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->z:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "blurMode"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->A:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->v:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->J:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->w:I

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->K:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->K:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(ILandroid/graphics/PointF;)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->x:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->L:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->y:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->M:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->z:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->N:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->A:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->O:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->b(II)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/Z;->r()F

    move-result v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v2

    const-string v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->B:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v2

    const-string v3, "texelHeightOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->C:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->B:I

    invoke-virtual {v0, v2, v6}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->C:I

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->j:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "aspectRatio"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->D:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "blurCenter"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->E:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "radius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->F:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "outRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->G:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "theta"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->H:I

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;->k()I

    move-result v1

    const-string v2, "blurMode"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->I:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->D:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->J:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->E:I

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->K:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(ILandroid/graphics/PointF;)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->F:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->L:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->G:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->M:F

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->H:I

    const v2, 0x40490fdb    # (float)Math.PI

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->N:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->I:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/Z;->O:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->b(II)V

    return-void
.end method
