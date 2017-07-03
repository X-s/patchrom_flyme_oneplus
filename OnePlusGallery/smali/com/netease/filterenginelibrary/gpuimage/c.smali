.class public Lcom/netease/filterenginelibrary/gpuimage/c;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final a:Ljava/lang/String; = "GLTextureView"

.field private static final b:Z = true

.field private static final c:Z = true

.field private static final d:Z = true

.field private static final e:Z = true

.field private static final f:Z = true

.field private static final g:Z = false

.field private static final h:Z = true

.field private static final j:Lcom/netease/filterenginelibrary/gpuimage/m;


# instance fields
.field private i:Landroid/view/Surface;

.field private final k:Ljava/lang/ref/WeakReference;

.field private l:Lcom/netease/filterenginelibrary/gpuimage/l;

.field private m:Lcom/netease/filterenginelibrary/gpuimage/p;

.field private n:Z

.field private o:Lcom/netease/filterenginelibrary/gpuimage/h;

.field private p:Lcom/netease/filterenginelibrary/gpuimage/i;

.field private q:Lcom/netease/filterenginelibrary/gpuimage/j;

.field private r:Lcom/netease/filterenginelibrary/gpuimage/n;

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/m;-><init>(Lcom/netease/filterenginelibrary/gpuimage/m;)V

    sput-object v0, Lcom/netease/filterenginelibrary/gpuimage/c;->j:Lcom/netease/filterenginelibrary/gpuimage/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->k:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->k:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/filterenginelibrary/gpuimage/c;)I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->t:I

    return v0
.end method

.method static synthetic b(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/h;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->o:Lcom/netease/filterenginelibrary/gpuimage/h;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->p:Lcom/netease/filterenginelibrary/gpuimage/i;

    return-object v0
.end method

.method static synthetic c()Lcom/netease/filterenginelibrary/gpuimage/m;
    .locals 1

    sget-object v0, Lcom/netease/filterenginelibrary/gpuimage/c;->j:Lcom/netease/filterenginelibrary/gpuimage/m;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->q:Lcom/netease/filterenginelibrary/gpuimage/j;

    return-object v0
.end method

.method private d()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic e(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/n;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->r:Lcom/netease/filterenginelibrary/gpuimage/n;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/netease/filterenginelibrary/gpuimage/c;)I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->s:I

    return v0
.end method

.method static synthetic g(Lcom/netease/filterenginelibrary/gpuimage/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->u:Z

    return v0
.end method

.method static synthetic h(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/p;
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->m:Lcom/netease/filterenginelibrary/gpuimage/p;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->i:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->i:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->a()V

    return-void
.end method

.method protected a(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->i:Landroid/view/Surface;

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->i()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->s:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->u:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->c()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    const-string v0, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAttachedToWindow reattach ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->m:Lcom/netease/filterenginelibrary/gpuimage/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->c()I

    move-result v0

    :goto_0
    new-instance v2, Lcom/netease/filterenginelibrary/gpuimage/l;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->k:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->i:Landroid/view/Surface;

    invoke-direct {v2, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/l;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/Surface;)V

    iput-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v1, v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->n:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->i()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->n:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/c;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->g()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->h()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/c;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/netease/filterenginelibrary/gpuimage/c;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/c;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/netease/filterenginelibrary/gpuimage/c;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->requestRender()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/l;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->d()V

    :cond_0
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->s:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netease/filterenginelibrary/gpuimage/e;-><init>(Lcom/netease/filterenginelibrary/gpuimage/c;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->setEGLConfigChooser(Lcom/netease/filterenginelibrary/gpuimage/h;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/netease/filterenginelibrary/gpuimage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->o:Lcom/netease/filterenginelibrary/gpuimage/h;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/q;

    invoke-direct {v0, p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/q;-><init>(Lcom/netease/filterenginelibrary/gpuimage/c;Z)V

    invoke-virtual {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->setEGLConfigChooser(Lcom/netease/filterenginelibrary/gpuimage/h;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e()V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->t:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/netease/filterenginelibrary/gpuimage/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->p:Lcom/netease/filterenginelibrary/gpuimage/i;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/netease/filterenginelibrary/gpuimage/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->q:Lcom/netease/filterenginelibrary/gpuimage/j;

    return-void
.end method

.method public setGLWrapper(Lcom/netease/filterenginelibrary/gpuimage/n;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->r:Lcom/netease/filterenginelibrary/gpuimage/n;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->u:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0, p1}, Lcom/netease/filterenginelibrary/gpuimage/l;->a(I)V

    return-void
.end method

.method public setRenderer(Lcom/netease/filterenginelibrary/gpuimage/p;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->o:Lcom/netease/filterenginelibrary/gpuimage/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/q;-><init>(Lcom/netease/filterenginelibrary/gpuimage/c;Z)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->o:Lcom/netease/filterenginelibrary/gpuimage/h;

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->p:Lcom/netease/filterenginelibrary/gpuimage/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/f;

    invoke-direct {v0, p0, v2}, Lcom/netease/filterenginelibrary/gpuimage/f;-><init>(Lcom/netease/filterenginelibrary/gpuimage/c;Lcom/netease/filterenginelibrary/gpuimage/f;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->p:Lcom/netease/filterenginelibrary/gpuimage/i;

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->q:Lcom/netease/filterenginelibrary/gpuimage/j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/g;

    invoke-direct {v0, v2}, Lcom/netease/filterenginelibrary/gpuimage/g;-><init>(Lcom/netease/filterenginelibrary/gpuimage/g;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->q:Lcom/netease/filterenginelibrary/gpuimage/j;

    :cond_2
    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->m:Lcom/netease/filterenginelibrary/gpuimage/p;

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/l;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->k:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->i:Landroid/view/Surface;

    invoke-direct {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/l;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0, p3, p4}, Lcom/netease/filterenginelibrary/gpuimage/l;->a(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->e()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/c;->l:Lcom/netease/filterenginelibrary/gpuimage/l;

    invoke-virtual {v0}, Lcom/netease/filterenginelibrary/gpuimage/l;->f()V

    :cond_0
    return-void
.end method
