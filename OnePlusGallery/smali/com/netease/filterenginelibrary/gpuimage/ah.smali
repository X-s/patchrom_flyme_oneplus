.class public Lcom/netease/filterenginelibrary/gpuimage/ah;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "PixelBuffer"

.field static final b:Z


# instance fields
.field c:Lcom/netease/filterenginelibrary/gpuimage/P;

.field d:I

.field e:I

.field f:Landroid/graphics/Bitmap;

.field g:Ljavax/microedition/khronos/egl/EGL10;

.field h:Ljavax/microedition/khronos/egl/EGLDisplay;

.field i:[Ljavax/microedition/khronos/egl/EGLConfig;

.field j:Ljavax/microedition/khronos/egl/EGLConfig;

.field k:Ljavax/microedition/khronos/egl/EGLContext;

.field l:Ljavax/microedition/khronos/egl/EGLSurface;

.field m:Ljavax/microedition/khronos/opengles/GL10;

.field n:Ljava/lang/String;

.field private o:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;


# direct methods
.method public constructor <init>(II)V
    .locals 9

    const/16 v8, 0x3038

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    new-array v1, v4, [I

    const/4 v0, 0x5

    new-array v2, v0, [I

    const/16 v0, 0x3057

    aput v0, v2, v5

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    aput v0, v2, v6

    const/16 v0, 0x3056

    aput v0, v2, v4

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    aput v0, v2, v7

    const/4 v0, 0x4

    aput v8, v2, v0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/ah;->c()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0x3098

    new-array v1, v7, [I

    aput v0, v1, v5

    aput v4, v1, v6

    aput v8, v1, v4

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->k:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->l:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->l:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->l:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, p1, p2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method private c()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/16 v0, 0xf

    new-array v2, v0, [I

    const/16 v0, 0x3025

    aput v0, v2, v4

    const/4 v0, 0x2

    const/16 v1, 0x3026

    aput v1, v2, v0

    const/16 v0, 0x3024

    aput v0, v2, v5

    const/4 v0, 0x5

    aput v3, v2, v0

    const/4 v0, 0x6

    const/16 v1, 0x3023

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    const/16 v0, 0x3022

    aput v0, v2, v3

    const/16 v0, 0x9

    aput v3, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v3, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v5, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v2, v0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v10, v5, v4

    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->i:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->i:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->i:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v4

    return-object v0
.end method

.method private d()V
    .locals 12

    const-string v0, "PixelBuffer"

    const-string v1, "Config List {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->i:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const-string v0, "PixelBuffer"

    const-string v1, "}"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-object v3, v1, v0

    const/16 v4, 0x3025

    invoke-direct {p0, v3, v4}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3026

    invoke-direct {p0, v3, v5}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3024

    invoke-direct {p0, v3, v6}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    const/16 v7, 0x3023

    invoke-direct {p0, v3, v7}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    const/16 v8, 0x3022

    invoke-direct {p0, v3, v8}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    const/16 v9, 0x3021

    invoke-direct {p0, v3, v9}, Lcom/netease/filterenginelibrary/gpuimage/ah;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const-string v9, "PixelBuffer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "    <d,s,r,g,b,a> = <"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v8

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->o:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->o:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;

    invoke-interface {v0, v8}, Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;->onBufferGenerated(Ljava/nio/IntBuffer;)V

    :cond_0
    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iget v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void

    :cond_1
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    if-lt v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v4, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    if-nez v1, :cond_0

    const-string v1, "PixelBuffer"

    const-string v2, "getBitmap: Renderer was not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PixelBuffer"

    const-string v2, "getBitmap: This thread does not own the OpenGL context."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0}, Lcom/netease/filterenginelibrary/gpuimage/ah;->e()V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Lcom/netease/filterenginelibrary/gpuimage/P;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PixelBuffer"

    const-string v1, "setRenderer: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0, v1, v2}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->d:I

    iget v3, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0
.end method

.method protected a(Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->o:Lcom/netease/filterenginelibrary/utils/OnBufferGenerateListener;

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->c:Lcom/netease/filterenginelibrary/gpuimage/P;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->m:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/netease/filterenginelibrary/gpuimage/P;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->l:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/filterenginelibrary/gpuimage/ah;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method
