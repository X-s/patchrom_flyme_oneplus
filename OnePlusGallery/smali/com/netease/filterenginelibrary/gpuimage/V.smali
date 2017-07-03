.class public Lcom/netease/filterenginelibrary/gpuimage/V;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# instance fields
.field private l:I

.field private m:F

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringSharpenVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/V;->a:Ljava/lang/String;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringSharpenFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/V;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/V;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/V;->a:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/V;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->m:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/V;->k()I

    move-result v0

    const-string v1, "sharpness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->l:I

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/V;->k()I

    move-result v0

    const-string v1, "imageWidthFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->n:I

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/V;->k()I

    move-result v0

    const-string v1, "imageHeightFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->o:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->m:F

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/V;->a(F)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->m:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->l:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->m:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/V;->a(IF)V

    return-void
.end method

.method public a(II)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/y;->a(II)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->n:I

    int-to-float v1, p1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/V;->a(IF)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/V;->o:I

    int-to-float v1, p2

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/V;->a(IF)V

    return-void
.end method
