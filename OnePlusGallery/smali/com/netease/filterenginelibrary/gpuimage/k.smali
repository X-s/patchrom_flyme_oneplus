.class Lcom/netease/filterenginelibrary/gpuimage/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Landroid/view/Surface;

.field private g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->f:Landroid/view/Surface;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/filterenginelibrary/gpuimage/k;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p0, p1}, Lcom/netease/filterenginelibrary/gpuimage/k;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwEglException tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/netease/filterenginelibrary/gpuimage/k;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->d(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/j;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/j;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start() tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-nez v0, :cond_4

    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/netease/filterenginelibrary/gpuimage/k;->a(Ljava/lang/String;)V

    :cond_3
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createContext "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_4
    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->b(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/h;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/h;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->c(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/i;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/i;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createSurface()  tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/k;->g()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->d(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/j;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->f:Landroid/view/Surface;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/netease/filterenginelibrary/gpuimage/j;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    const-string v0, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/k;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/n;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->e(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/n;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/netease/filterenginelibrary/gpuimage/n;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->f(Lcom/netease/filterenginelibrary/gpuimage/c;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->f(Lcom/netease/filterenginelibrary/gpuimage/c;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->f(Lcom/netease/filterenginelibrary/gpuimage/c;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netease/filterenginelibrary/gpuimage/o;

    invoke-direct {v0}, Lcom/netease/filterenginelibrary/gpuimage/o;-><init>()V

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroySurface()  tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/k;->g()V

    return-void
.end method

.method public f()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish() tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/filterenginelibrary/gpuimage/c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->c(Lcom/netease/filterenginelibrary/gpuimage/c;)Lcom/netease/filterenginelibrary/gpuimage/i;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/i;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/k;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
