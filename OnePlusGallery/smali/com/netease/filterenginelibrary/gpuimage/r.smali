.class public Lcom/netease/filterenginelibrary/gpuimage/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/netease/filterenginelibrary/gpuimage/P;

.field private c:Lcom/netease/filterenginelibrary/gpuimage/c;

.field private d:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/netease/filterenginelibrary/gpuimage/u;

.field private g:Landroid/os/Handler;

.field private h:Landroid/widget/ProgressBar;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/view/Surface;

.field private r:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/u;->a:Lcom/netease/filterenginelibrary/gpuimage/u;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->f:Lcom/netease/filterenginelibrary/gpuimage/u;

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->g:Landroid/os/Handler;

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->h:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->p:Z

    invoke-direct {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->a:Landroid/content/Context;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/y;-><init>()V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->i:I

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/P;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->j:I

    return-void
.end method

.method static synthetic c(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->m:I

    return-void
.end method

.method static synthetic d(Lcom/netease/filterenginelibrary/gpuimage/r;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->n:I

    return-void
.end method

.method static synthetic e(Lcom/netease/filterenginelibrary/gpuimage/r;)Lcom/netease/filterenginelibrary/gpuimage/u;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->f:Lcom/netease/filterenginelibrary/gpuimage/u;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->k:I

    return-void
.end method

.method static synthetic f(Lcom/netease/filterenginelibrary/gpuimage/r;I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->l:I

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/filterenginelibrary/gpuimage/y;I)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-direct {v1, p1}, Lcom/netease/filterenginelibrary/gpuimage/P;-><init>(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Landroid/graphics/Bitmap;Z)V

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->j:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->i:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->i:I

    int-to-float v0, v0

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    new-instance v2, Lcom/netease/filterenginelibrary/gpuimage/ah;

    invoke-direct {v2, v0, p2}, Lcom/netease/filterenginelibrary/gpuimage/ah;-><init>(II)V

    invoke-virtual {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Lcom/netease/filterenginelibrary/gpuimage/P;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->r:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;

    invoke-virtual {v2, v0}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Lcom/netease/filterenginelibrary/gpuimage/ah;->b()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->j:I

    int-to-float v0, v0

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->i:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_1
.end method

.method protected a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(FFFF)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->o:I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, p1, v1, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(IZZ)V

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/r;->f()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->j:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->i:I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/r;->e()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->p:Z

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/t;

    invoke-direct {v0, p0, p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/t;-><init>(Lcom/netease/filterenginelibrary/gpuimage/r;Lcom/netease/filterenginelibrary/gpuimage/r;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/c;Landroid/view/Surface;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->q:Landroid/view/Surface;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/c;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-virtual {v0, p2}, Lcom/netease/filterenginelibrary/gpuimage/c;->a(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/c;->setRenderer(Lcom/netease/filterenginelibrary/gpuimage/p;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/c;->setRenderMode(I)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->requestRender()V

    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/u;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->f:Lcom/netease/filterenginelibrary/gpuimage/u;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/u;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/r;->e()V

    return-void
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/y;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->d:Lcom/netease/filterenginelibrary/gpuimage/y;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/gpuimage/y;)V

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/r;->e()V

    return-void
.end method

.method protected a(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Lcom/netease/filterenginelibrary/utils/OnBitmapTextureLoadCompleteListener;)V

    return-void
.end method

.method protected a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->r:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/P;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->p:Z

    return v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->o:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->o:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->m:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->k:I

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->o:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->o:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->n:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->l:I

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/c;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->c:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->requestRender()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->a()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/r;->e()V

    return-void
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->c()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->b:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/P;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/r;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method
