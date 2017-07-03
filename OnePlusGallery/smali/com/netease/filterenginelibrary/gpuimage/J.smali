.class public Lcom/netease/filterenginelibrary/gpuimage/J;
.super Lcom/netease/filterenginelibrary/gpuimage/Z;


# static fields
.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;


# instance fields
.field protected s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringGausVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/J;->q:Ljava/lang/String;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/J;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/J;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/J;->q:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/J;->r:Ljava/lang/String;

    sget-object v2, Lcom/netease/filterenginelibrary/gpuimage/J;->q:Ljava/lang/String;

    sget-object v3, Lcom/netease/filterenginelibrary/gpuimage/J;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/Z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->s:F

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->s:F

    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->s:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->t:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->i:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->u:I

    invoke-virtual {v0, v1, v3}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->B:I

    invoke-virtual {v0, v1, v3}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->C:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->j:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->O:I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->A:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->b(II)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->I:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->b(II)V

    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 6

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->K:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->w:I

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(ILandroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->E:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public c(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->J:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->v:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->D:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    return-void
.end method

.method public d(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->L:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->x:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->F:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    return-void
.end method

.method public e(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->M:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->G:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    return-void
.end method

.method public f(F)V
    .locals 3

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->N:F

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->z:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->H:I

    const v2, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(IF)V

    return-void
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->s:F

    return v0
.end method

.method public s()F
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/J;->s:F

    return v0
.end method
