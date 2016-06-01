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
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsEGLContextReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gl/GLThread;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_CONFIG_ATTRS_ARGB:[I

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_CONTEXT_ATTRS:[I

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/gl/GLThread;->EGL_EMPTY_ATTRS:[I

    return-void

    .line 36
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

    .line 44
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gl/GLThread;
    .param p1, "x1"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/gl/GLThread;->destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gl/GLThread;
    .param p1, "x1"    # Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V

    return-void
.end method

.method private createEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    iget-object v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v4, :cond_0

    .line 262
    :goto_0
    return v2

    .line 237
    :cond_0
    iget-object v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v5, "createEglSurface() - Create window surface for "

    iget-object v6, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    iget-object v6, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    sget-object v7, Lcom/oneplus/gl/GLThread;->EGL_EMPTY_ATTRS:[I

    invoke-static {v4, v5, v6, v7, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 252
    .local v1, "eglSurface":Landroid/opengl/EGLSurface;
    :goto_1
    if-eqz v1, :cond_1

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v4, :cond_4

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "createEglSurface() - Fail to create EGL surface"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    const-string v2, "CreateWindowSurface"

    :goto_2
    invoke-virtual {p0, v2}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    move v2, v3

    .line 256
    goto :goto_0

    .line 244
    .end local v1    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v5, "createEglSurface() - Create pbuffer surface"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v4, 0x5

    new-array v0, v4, [I

    const/16 v4, 0x3057

    aput v4, v0, v3

    iget v4, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    aput v4, v0, v2

    const/4 v4, 0x2

    const/16 v5, 0x3056

    aput v5, v0, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    aput v5, v0, v4

    const/4 v4, 0x4

    const/16 v5, 0x3038

    aput v5, v0, v4

    .line 250
    .local v0, "attrs":[I
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    .restart local v1    # "eglSurface":Landroid/opengl/EGLSurface;
    goto :goto_1

    .line 255
    .end local v0    # "attrs":[I
    :cond_3
    const-string v2, "CreatePbufferSurface"

    goto :goto_2

    .line 258
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEglSurface() - EGL surface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-object v1, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    goto/16 :goto_0
.end method

.method private destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    .line 316
    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;I)V

    .line 323
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyEglSurface() - Destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    goto :goto_0
.end method

.method private makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 5
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 333
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    :goto_0
    if-nez v0, :cond_1

    .line 335
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeCurrent() - No EGL surface for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_1
    return v1

    .line 332
    .end local v0    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 338
    .restart local v0    # "eglSurface":Landroid/opengl/EGLSurface;
    :cond_1
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v0, v0, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 341
    goto :goto_1

    .line 345
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v0, v0, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 346
    goto :goto_1

    .line 348
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeCurrent() - Fail to make current to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "MakeCurrent"

    invoke-virtual {p0, v2}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 410
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 411
    .local v0, "isLast":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isLast":Z
    :cond_1
    move v0, v1

    .line 410
    goto :goto_0

    .line 413
    .restart local v0    # "isLast":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 417
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3

    .line 418
    iget-object v2, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {p0, v2}, Lcom/oneplus/gl/GLThread;->swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    .line 421
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    check-cast p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 422
    .restart local p1    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz p1, :cond_4

    .line 424
    iget-object v1, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreEglSurface() - Fail to restore current EGL surface to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 429
    :cond_4
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextDestroying()V

    .line 430
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    .line 431
    sget-object v2, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private restoreEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;I)V
    .locals 3
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    .param p2, "flags"    # I

    .prologue
    .line 381
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 383
    .local v0, "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v2, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v2, p1, :cond_0

    .line 385
    invoke-direct {p0, v0, p2}, Lcom/oneplus/gl/GLThread;->restoreEglSurface(Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;I)V

    .line 389
    .end local v0    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_1
    return-void
.end method

.method private swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z
    .locals 3
    .param p1, "surfaceHandle"    # Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .prologue
    .line 552
    iget-object v0, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->eglSurface:Landroid/opengl/EGLSurface;

    .line 553
    .local v0, "eglSurface":Landroid/opengl/EGLSurface;
    if-eqz v0, :cond_1

    .line 555
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    .line 562
    :goto_0
    return v1

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v2, "swapBuffers() - Fail to swap buffers"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "SwapBuffers"

    invoke-virtual {p0, v1}, Lcom/oneplus/gl/GLThread;->checkEglError(Ljava/lang/String;)V

    .line 562
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v2, "swapBuffers() - No EGL surface to swap"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "operationName"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 139
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEglError() - Operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public final createEglContext()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 152
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v5

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_2

    .line 158
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    .line 159
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEglContext() - EGL display : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 164
    .local v8, "versions":[I
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v8, v2, v8, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v1, "createEglContext() - Fail to initialize EGL"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEglContext() - EGL version : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v8, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v8, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 173
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .line 174
    .local v6, "configCount":[I
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Lcom/oneplus/gl/GLThread;->EGL_CONFIG_ATTRS_ARGB:[I

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v1, "createEglContext() - Fail to choose configuration"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    move v5, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_4
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    .line 181
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEglContext() - EGL config : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    sget-object v7, Lcom/oneplus/gl/GLThread;->EGL_CONTEXT_ATTRS:[I

    invoke-static {v0, v1, v4, v7, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 185
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEglContext() - EGL context : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0, v0}, Lcom/oneplus/gl/GLThread;->onEglContextCreated(Landroid/opengl/EGLContext;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_0

    move v5, v2

    goto/16 :goto_0
.end method

.method public final createEglSurface(Landroid/view/Surface;II)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 206
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v3, "createEglSurface() - No EGL context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 224
    :goto_0
    return-object v0

    .line 211
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEglSurface() - Invalid size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;-><init>(Lcom/oneplus/gl/GLThread;Landroid/view/Surface;II)V

    .line 219
    .local v0, "handle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/gl/GLThread;->createEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 220
    goto :goto_0

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final destroyEglContext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 273
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    if-nez v3, :cond_0

    .line 309
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-virtual {p0, v3}, Lcom/oneplus/gl/GLThread;->onEglContextDestroying(Landroid/opengl/EGLContext;)V

    .line 278
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextDestroying()V

    .line 281
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "destroyEglContext() - Destroy all EGL surfaces"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 286
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 287
    .local v2, "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    invoke-virtual {v2}, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->close()V

    .line 288
    invoke-direct {p0, v2}, Lcom/oneplus/gl/GLThread;->destroyEglSurface(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    .line 284
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 290
    .end local v2    # "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 292
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 295
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "destroyEglContext() - Destroy EGL context"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 297
    iget-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 298
    .local v0, "destroyedContext":Landroid/opengl/EGLContext;
    iput-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglContext:Landroid/opengl/EGLContext;

    .line 299
    iput-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglConfig:Landroid/opengl/EGLConfig;

    .line 302
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_EglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 305
    invoke-virtual {p0, v0}, Lcom/oneplus/gl/GLThread;->onEglContextDestroyed(Landroid/opengl/EGLContext;)V

    .line 308
    sget-object v3, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onEglContextCreated(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 359
    return-void
.end method

.method protected onEglContextDestroyed(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 367
    return-void
.end method

.method protected onEglContextDestroying(Landroid/opengl/EGLContext;)V
    .locals 0
    .param p1, "context"    # Landroid/opengl/EGLContext;

    .prologue
    .line 375
    return-void
.end method

.method protected onStarting()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 400
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    .line 401
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    .line 402
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 442
    :try_start_0
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->destroyEglContext()V

    .line 448
    return-void

    .line 446
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->destroyEglContext()V

    throw v0
.end method

.method public final setCurrentEglSurface(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "surfaceHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 461
    if-nez p1, :cond_1

    .line 463
    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEglSurface() - No EGL surface handle"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 508
    :cond_0
    :goto_0
    return-object v2

    .line 466
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->m_EglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 468
    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v6, "setCurrentEglSurface() - Invalid surface handle"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 469
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 471
    check-cast v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 474
    .local v1, "eglSurfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 475
    .local v0, "currentHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v5, p1, :cond_3

    move-object v2, v0

    .line 478
    goto :goto_0

    .line 480
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 482
    .local v2, "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v5, v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-ne v5, p1, :cond_4

    .line 484
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v2, v4

    .line 485
    goto :goto_0

    .line 486
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    .end local v2    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->makeCurrent(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v2, v4

    .line 494
    goto :goto_0

    .line 497
    :cond_7
    new-instance v2, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;-><init>(Lcom/oneplus/gl/GLThread;Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)V

    .line 498
    .restart local v2    # "handle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 501
    iget-object v4, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 503
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->notifyEglContextReady()V

    .line 504
    sget-object v4, Lcom/oneplus/gl/GLThread;->PROP_IS_EGL_CONTEXT_READY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/gl/GLThread;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public swapBuffers(Lcom/oneplus/base/Handle;)Z
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/gl/GLThread;->verifyAccess()V

    .line 521
    if-nez p1, :cond_0

    .line 523
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "swapBuffers() - No EGL surface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_0
    return v2

    .line 526
    :cond_0
    instance-of v3, p1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-nez v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "swapBuffers() - Invalid EGL surface handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 531
    check-cast v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    .line 532
    .local v1, "surfaceHandle":Lcom/oneplus/gl/GLThread$EglSurfaceHandle;
    iget-object v3, v1, Lcom/oneplus/gl/GLThread$EglSurfaceHandle;->owner:Lcom/oneplus/gl/GLThread;

    if-ne v3, p0, :cond_2

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 534
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "swapBuffers() - Invalid EGL surface handle"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->m_ActiveEglSurfaceHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;

    .line 538
    .local v0, "activeSurfaceHandle":Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/oneplus/gl/GLThread$ActiveEglSurfaceHandle;->surfaceHandle:Lcom/oneplus/gl/GLThread$EglSurfaceHandle;

    if-eq v3, v1, :cond_5

    .line 540
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gl/GLThread;->TAG:Ljava/lang/String;

    const-string v4, "swapBuffers() - Not current EGL surface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_5
    invoke-direct {p0, v1}, Lcom/oneplus/gl/GLThread;->swapBuffers(Lcom/oneplus/gl/GLThread$EglSurfaceHandle;)Z

    move-result v2

    goto :goto_0
.end method
