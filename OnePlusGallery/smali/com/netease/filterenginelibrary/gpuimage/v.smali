.class public Lcom/netease/filterenginelibrary/gpuimage/v;
.super Lcom/netease/filterenginelibrary/gpuimage/W;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final p:Ljava/lang/String;


# instance fields
.field private n:I

.field private o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringAddBlendVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/v;->p:Ljava/lang/String;

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringAddBlendFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/v;->p:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/v;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->o:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/v;->p:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/v;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->o:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/W;->a()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->e:I

    const-string v1, "ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->n:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->n:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->o:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/v;->a(IF)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->o:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->n:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->o:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/v;->a(IF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/w;

    invoke-direct {v0, p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/w;-><init>(Lcom/netease/filterenginelibrary/gpuimage/v;I)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/v;->m:I

    return-void
.end method
