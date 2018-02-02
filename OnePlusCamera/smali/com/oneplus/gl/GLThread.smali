.class public Lcom/oneplus/gl/GLThread;
.super Lcom/oneplus/base/BaseThread;
.source "GLThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;,
        Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRS_ARGB:[I

.field private static final EGL_CONTEXT_ATTRS:[I

.field private static final EGL_EMPTY_ATTRS:[I

.field public static final FLAG_ABANDON_CONTENT:I = 0x1

.field public static final FLAG_WITH_DEFAULT_EGL_SURFACE:I = 0x2

.field public static final PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_DefaultEglSurfaceHandle:Lcom/oneplus/base/Handle;

.field private m_EglConfig:Landroid/opengl/EGLConfig;

.field private m_EglContext:Landroid/opengl/EGLContext;

.field private m_EglDisplay:Landroid/opengl/EGLDisplay;

.field private m_EglSurfaceHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gl/GLThread$EglSurfaceHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gl/GLThread;->destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x3038

    const/4 v5, 0x0

    .line 38
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsEGLContextReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gl/GLThread;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_CONFIG_ATTRS_ARGB:[I

    .line 51
    const/16 v0, 0x3098

    const/4 v1, 0x2

    .line 50
    filled-new-array {v0, v1, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_CONTEXT_ATTRS:[I

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 55
    aput v6, v0, v5

    .line 54
    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_EMPTY_ATTRS:[I

    .line 23
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x3021
        0x8
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method private createEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 263
    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_0

    .line 264
    return v7

    .line 268
    :cond_0
    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "createEglSurface() - Create window surface for "

    iget-object v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    iget-object v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    sget-object v5, Lcom/oneplus/gl/GLThread;->EGL_EMPTY_ATTRS:[I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 283
    .local v1, "eglSurface":Landroid/opengl/EGLSurface;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_4

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "createEglSurface() - Fail to create EGL surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "CreateWindowSurface"

    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    .line 287
    return v6

    .line 275
    .end local v1    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "createEglSurface() - Create pbuffer surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 277
    const/16 v2, 0x3057

    aput v2, v0, v6

    iget v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    aput v2, v0, v7

    .line 278
    const/16 v2, 0x3056

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 279
    const/16 v2, 0x3038

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 281
    .local v0, "attrs":[I
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v3, v0, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .restart local v1    # "eglSurface":Landroid/opengl/EGLSurface;
    goto :goto_0

    .line 286
    .end local v0    # "attrs":[I
    :cond_3
    const-string/jumbo v2, "CreatePbufferSurface"

    goto :goto_1

    .line 289
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createEglSurface() - EGL surface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-object v1, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 293
    return v7
.end method

.method private destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;I)V

    .line 354
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyEglSurface() - Destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 356
    iput-object v3, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 344
    return-void
.end method

.method private makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 5
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 363
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 364
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    :goto_0
    if-nez v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeCurrent() - No EGL surface for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return v4

    .line 363
    .end local v0    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 369
    .restart local v0    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_1
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    iget v1, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    iget v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    invoke-static {v4, v4, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 374
    return v3

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    return v3

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeCurrent() - Fail to make current to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "MakeCurrent"

    invoke-virtual {p0, v1}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    .line 384
    return v4
.end method

.method private restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 444
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 445
    .local v0, "isLast":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    return-void

    .line 444
    .end local v0    # "isLast":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isLast":Z
    goto :goto_0

    .line 447
    :cond_1
    if-nez v0, :cond_2

    .line 448
    return-void

    .line 451
    :cond_2
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_3

    .line 452
    iget-object v1, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    check-cast p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 456
    .restart local p1    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz p1, :cond_5

    .line 458
    iget-object v1, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 459
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreEglSurface() - Fail to restore current EGL surface to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_4
    :goto_1
    return-void

    .line 463
    :cond_5
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextDestroying()V

    .line 464
    invoke-direct {p0, v3}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    .line 465
    sget-object v1, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private restoreEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;I)V
    .locals 3
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    .param p2, "flags"    # I

    .prologue
    .line 415
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "handle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 417
    .local v0, "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v2, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v2, p1, :cond_0

    .line 419
    invoke-direct {p0, v0, p2}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V

    .line 413
    .end local v0    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_1
    return-void
.end method

.method private swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 3
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    .line 586
    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 587
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    if-eqz v0, :cond_1

    .line 589
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x1

    return v1

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "swapBuffers() - Fail to swap buffers"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v1, "SwapBuffers"

    invoke-virtual {p0, v1}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    .line 596
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "swapBuffers() - No EGL surface to swap"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "operationName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 146
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkEglError() - Operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", error : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public final createEglContext()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gl/GLThread;->createEglContext(I)Z

    move-result v0

    return v0
.end method

.method public final createEglContext(I)Z
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 175
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 180
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    .line 181
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createEglContext() - EGL display : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 186
    .local v8, "versions":[I
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v8, v2, v8, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createEglContext() - Fail to initialize EGL"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createEglContext() - EGL version : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v8, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v8, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 195
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .line 196
    .local v6, "configCount":[I
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Lcom/oneplus/gl/GLThread;->EGL_CONFIG_ATTRS_ARGB:[I

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createEglContext() - Fail to choose configuration"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 200
    return v2

    .line 202
    :cond_2
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    .line 203
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createEglContext() - EGL config : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    sget-object v7, Lcom/oneplus/gl/GLThread;->EGL_CONTEXT_ATTRS:[I

    invoke-static {v0, v1, v4, v7, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 207
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createEglContext() - EGL context : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0, v0}, Lcom/oneplus/gl/GLThread;->onEglContextCreated(Landroid/opengl/EGLContext;)V

    .line 214
    .end local v3    # "configs":[Landroid/opengl/EGLConfig;
    .end local v6    # "configCount":[I
    .end local v8    # "versions":[I
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_DefaultEglSurfaceHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6

    :goto_1
    return v5

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createEglContext() - Create default EGL surface"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v9, v5, v5}, Lcom/oneplus/gl/GLThread;->createEglSurface(Landroid/view/Surface;II)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_DefaultEglSurfaceHandle:Lcom/oneplus/base/Handle;

    .line 218
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_DefaultEglSurfaceHandle:Lcom/oneplus/base/Handle;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gl/GLThread;->setCurrentEglSurface(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    goto :goto_0

    :cond_6
    move v5, v2

    .line 222
    goto :goto_1
.end method

.method public final createEglSurface(Landroid/view/Surface;II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 237
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createEglSurface() - No EGL context"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object v4

    .line 242
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createEglSurface() - Invalid size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v4

    .line 249
    :cond_2
    new-instance v0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;-><init>(Lcom/oneplus/gl/GLThread;Landroid/view/Surface;II)V

    .line 250
    .local v0, "handle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/gl/GLThread;->createEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    return-object v4

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    return-object v0
.end method

.method public final destroyEglContext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 304
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v3, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0, v3}, Lcom/oneplus/gl/GLThread;->onEglContextDestroying(Landroid/opengl/EGLContext;)V

    .line 309
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextDestroying()V

    .line 312
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "destroyEglContext() - Destroy all EGL surfaces"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 317
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 318
    .local v2, "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    invoke-virtual {v2}, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->close()V

    .line 319
    invoke-direct {p0, v2}, Lcom/oneplus/gl/GLThread;->destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    .line 315
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    .end local v2    # "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 323
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 326
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "destroyEglContext() - Destroy EGL context"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 328
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 329
    .local v0, "destroyedContext":Landroid/opengl/EGLContext;
    iput-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 330
    iput-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    .line 333
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 336
    invoke-virtual {p0, v0}, Lcom/oneplus/gl/GLThread;->onEglContextDestroyed(Landroid/opengl/EGLContext;)V

    .line 339
    sget-object v3, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method protected onEglContextCreated(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 392
    return-void
.end method

.method protected onEglContextDestroyed(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 400
    return-void
.end method

.method protected onEglContextDestroying(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 408
    return-void
.end method

.method protected onStarting()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 434
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    .line 435
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    .line 428
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 476
    :try_start_0
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->destroyEglContext()V

    .line 472
    return-void

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->destroyEglContext()V

    .line 479
    throw v0
.end method

.method public final setCurrentEglSurface(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "surfaceHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 495
    if-nez p1, :cond_0

    .line 497
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCurrentEglSurface() - No EGL surface handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-object v6

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCurrentEglSurface() - Invalid surface handle"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-object v6

    :cond_1
    move-object v1, p1

    .line 505
    check-cast v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 508
    .local v1, "eglSurfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 509
    .local v0, "currentHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz v0, :cond_2

    .line 510
    iget-object v4, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v4, p1, :cond_2

    .line 512
    return-object v0

    .line 514
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "handle$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 516
    .local v2, "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v4, v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v4, p1, :cond_3

    .line 518
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 519
    return-object v6

    .line 520
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 522
    return-object v2

    .line 527
    .end local v2    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_5
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 528
    return-object v6

    .line 531
    :cond_6
    new-instance v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;-><init>(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    .line 532
    .restart local v2    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 535
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 537
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextReady()V

    .line 538
    sget-object v4, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 542
    :cond_7
    return-object v2
.end method

.method public swapBuffers(Lcom/oneplus/base/Handle;)Z
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v4, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 555
    if-nez p1, :cond_0

    .line 557
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "swapBuffers() - No EGL surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return v4

    .line 560
    :cond_0
    instance-of v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-nez v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "swapBuffers() - Invalid EGL surface handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return v4

    :cond_1
    move-object v1, p1

    .line 565
    check-cast v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 566
    .local v1, "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    iget-object v2, v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->owner:Lcom/oneplus/gl/GLThread;

    if-ne v2, p0, :cond_3

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 571
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 572
    .local v0, "activeSurfaceHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-eq v2, v1, :cond_4

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "swapBuffers() - Not current EGL surface"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v4

    .line 568
    .end local v0    # "activeSurfaceHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "swapBuffers() - Invalid EGL surface handle"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return v4

    .line 579
    .restart local v0    # "activeSurfaceHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_4
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v2

    return v2
.end method
