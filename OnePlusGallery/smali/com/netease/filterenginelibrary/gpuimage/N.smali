.class public Lcom/netease/filterenginelibrary/gpuimage/N;
.super Lcom/netease/filterenginelibrary/gpuimage/W;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private n:F

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netease/filterenginelibrary/gpuimage/FilterNativeLibrary;->stringMultiplyBlendFragmentShader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/ai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/N;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/N;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/N;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 3

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/N;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/W;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/N;->a(Landroid/graphics/Bitmap;)V

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/netease/filterenginelibrary/gpuimage/W;->a()V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->e:I

    const-string v1, "ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->o:I

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->o:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/N;->a(IF)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->o:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->n:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/N;->a(IF)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/N;->m:I

    return-void
.end method
