.class abstract Lcom/netease/filterenginelibrary/gpuimage/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/filterenginelibrary/gpuimage/h;


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/netease/filterenginelibrary/gpuimage/c;


# direct methods
.method public constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/c;[I)V
    .locals 1

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/d;->b:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/netease/filterenginelibrary/gpuimage/d;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/d;->a:[I

    return-void
.end method

.method private a([I)[I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/filterenginelibrary/gpuimage/d;->b:Lcom/netease/filterenginelibrary/gpuimage/c;

    invoke-static {v0}, Lcom/netease/filterenginelibrary/gpuimage/c;->a(Lcom/netease/filterenginelibrary/gpuimage/c;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    const/4 v2, 0x4

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/d;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v4, v5, v4

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/d;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/netease/filterenginelibrary/gpuimage/d;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
