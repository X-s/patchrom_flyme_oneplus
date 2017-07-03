.class public Lcom/netease/filterenginelibrary/gpuimage/U;
.super Lcom/netease/filterenginelibrary/gpuimage/y;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private k:I

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringSaturationFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/U;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/U;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/U;->b:Ljava/lang/String;

    sget-object v1, Lcom/netease/filterenginelibrary/gpuimage/U;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->l:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->a()V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/U;->k()I

    move-result v0

    const-string v1, "saturation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->k:I

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->l:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->k:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/U;->a(IF)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/y;->d()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/U;->l:F

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/U;->a(F)V

    return-void
.end method
