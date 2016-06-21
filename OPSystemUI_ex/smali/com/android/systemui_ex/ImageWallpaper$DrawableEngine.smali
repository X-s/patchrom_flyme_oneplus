.class Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field mOffsetsChanged:Z

.field private mReceiver:Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field mScale:F

.field mSurfaceChanged:Z

.field mVisible:Z

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui_ex/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/ImageWallpaper;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, -0x1

    .line 171
    iput-object p1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    .line 172
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 113
    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 114
    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 115
    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 116
    iput v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 117
    iput v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    .line 120
    iput-boolean v2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    .line 174
    return-void
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 609
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 610
    .local v4, "vertexShader":I
    if-nez v4, :cond_1

    move v2, v5

    .line 636
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 613
    .local v1, "fragmentShader":I
    if-nez v1, :cond_2

    move v2, v5

    goto :goto_0

    .line 615
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 616
    .local v2, "program":I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 617
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 619
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 620
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 622
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 623
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 625
    new-array v3, v7, [I

    .line 626
    .local v3, "status":[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 627
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 628
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "error":Ljava/lang/String;
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 631
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 632
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 633
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 640
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 642
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 645
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 646
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 648
    new-array v2, v5, [I

    .line 649
    .local v2, "status":[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 650
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 651
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "error":Ljava/lang/String;
    const-string v4, "ImageWallpaperGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 657
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 662
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 663
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 668
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 669
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 670
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 758
    new-array v5, v4, [I

    .line 759
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 760
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    .line 761
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 765
    aget-object v0, v3, v6

    .line 767
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 570
    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    int-to-float v4, p1

    aput v4, v2, v3

    const/16 v3, 0xb

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    const/16 v3, 0x10

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 578
    .local v2, "verticesData":[F
    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    .line 579
    .local v0, "bytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 581
    .local v1, "triangleVertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 582
    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 7
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 485
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 486
    .local v0, "c":Landroid/graphics/Canvas;
    if-eqz v0, :cond_3

    .line 492
    int-to-float v1, p4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v3, v1, v2

    .line 493
    .local v3, "right":F
    int-to-float v1, p5

    iget-object v2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v4, v1, v2

    .line 494
    .local v4, "bottom":F
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 495
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 496
    int-to-float v1, p4

    int-to-float v2, p5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 498
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 499
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 502
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 504
    .local v6, "dest":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v6    # "dest":Landroid/graphics/RectF;
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 510
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_3
    return-void

    .line 507
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .locals 26
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 513
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v22, 0x0

    .line 566
    :goto_0
    return v22

    .line 515
    :cond_0
    move/from16 v0, p4

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v21, v7, v8

    .line 516
    .local v21, "right":F
    move/from16 v0, p5

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v18, v7, v8

    .line 518
    .local v18, "bottom":F
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v19

    .line 519
    .local v19, "frame":Landroid/graphics/Rect;
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 520
    .local v5, "ortho":Landroid/renderscript/Matrix4f;
    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v21

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 524
    .local v11, "triangleVertices":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v23

    .line 525
    .local v23, "texture":I
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 527
    .local v20, "program":I
    const-string v7, "position"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 528
    .local v6, "attribPosition":I
    const-string v7, "texCoords"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 529
    .local v12, "attribTexCoords":I
    const-string v7, "texture"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v25

    .line 530
    .local v25, "uniformTexture":I
    const-string v7, "projection"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v24

    .line 532
    .local v24, "uniformProjection":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 534
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 535
    const/16 v7, 0xde1

    move/from16 v0, v23

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 537
    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 538
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 539
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 540
    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 541
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, v24

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 545
    if-gtz p2, :cond_1

    if-lez p3, :cond_2

    .line 546
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 547
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 551
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 552
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 555
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 559
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 561
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v22

    .line 562
    .local v22, "status":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkEglError()V

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->finishGL()V

    goto/16 :goto_0
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 676
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 677
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 678
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 679
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 771
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 333
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 334
    .local v2, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui_ex/ImageWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    .local v0, "c":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 336
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 337
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 338
    return-object v2
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .locals 13
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 682
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 684
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 685
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v6, v9, :cond_0

    .line 686
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglGetDisplay failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 690
    :cond_0
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 691
    .local v5, "version":[I
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 692
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglInitialize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 696
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 697
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v6, :cond_2

    .line 698
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "eglConfig not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 701
    :cond_2
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 702
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v9, :cond_3

    .line 703
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createContext failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 707
    :cond_3
    const/4 v6, 0x5

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 712
    .local v0, "attribs":[I
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v9, v10, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    .line 713
    .local v4, "tmpSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v4, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 715
    new-array v3, v7, [I

    .line 716
    .local v3, "maxSize":[I
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 717
    .local v2, "frame":Landroid/graphics/Rect;
    const/16 v6, 0xd33

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 719
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v10, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 720
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 722
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    aget v9, v3, v8

    if-gt v6, v9, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    aget v9, v3, v8

    if-le v6, v9, :cond_5

    .line 723
    :cond_4
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 724
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 725
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requested  texture size "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " exceeds the support maximum of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 748
    :goto_0
    return v6

    .line 731
    :cond_5
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v11, 0x0

    invoke-interface {v6, v9, v10, p1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 732
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v9, :cond_9

    .line 733
    :cond_6
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 734
    .local v1, "error":I
    const/16 v6, 0x300b

    if-eq v1, v6, :cond_7

    const/16 v6, 0x3003

    if-ne v1, v6, :cond_8

    .line 735
    :cond_7
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWindowSurface returned "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 737
    goto :goto_0

    .line 739
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createWindowSurface failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 743
    .end local v1    # "error":I
    :cond_9
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v8, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 744
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglMakeCurrent failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    move v6, v7

    .line 748
    goto/16 :goto_0

    .line 707
    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 586
    new-array v7, v3, [I

    .line 588
    .local v7, "textures":[I
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 589
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 592
    aget v6, v7, v1

    .line 593
    .local v6, "texture":I
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 594
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 596
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 597
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 599
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 600
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 602
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 603
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 605
    return v6
.end method

.method private updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 453
    const/4 v2, 0x0

    .line 455
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 456
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 457
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 458
    iget-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 459
    iget-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 460
    iget-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    :goto_0
    if-eqz v2, :cond_0

    .line 468
    iput-object v5, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 469
    iput v4, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 470
    iput v4, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 474
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 482
    :cond_0
    :goto_1
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 465
    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 479
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 753
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 754
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 753
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method drawFrame()V
    .locals 18

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    const-string v15, "window"

    invoke-virtual {v1, v15}, Lcom/android/systemui_ex/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 348
    .local v12, "newRotation":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v12, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mSurfaceChanged:Z

    if-eqz v1, :cond_1

    .line 350
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 351
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mSurfaceChanged:Z

    .line 353
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 354
    .local v2, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v11

    .line 355
    .local v11, "frame":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 356
    .local v10, "dw":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 357
    .local v9, "dh":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    if-ne v10, v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v9, v1, :cond_5

    :cond_2
    const/4 v14, 0x1

    .line 359
    .local v14, "surfaceDimensionsChanged":Z
    :goto_0
    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-eq v12, v1, :cond_6

    :cond_3
    const/4 v13, 0x1

    .line 360
    .local v13, "redrawNeeded":Z
    :goto_1
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v1, :cond_7

    .line 450
    :cond_4
    :goto_2
    return-void

    .line 357
    .end local v13    # "redrawNeeded":Z
    .end local v14    # "surfaceDimensionsChanged":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_0

    .line 359
    .restart local v14    # "surfaceDimensionsChanged":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 367
    .restart local v13    # "redrawNeeded":Z
    :cond_7
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    if-eqz v14, :cond_9

    .line 378
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 396
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    int-to-float v0, v9

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v15

    float-to-int v1, v1

    sub-int v3, v10, v1

    .line 399
    .local v3, "availw":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v15

    float-to-int v1, v1

    sub-int v4, v9, v1

    .line 400
    .local v4, "availh":I
    div-int/lit8 v5, v3, 0x2

    .line 401
    .local v5, "xPixels":I
    div-int/lit8 v6, v4, 0x2

    .line 406
    .local v6, "yPixels":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v8, v10, v1

    .line 407
    .local v8, "availwUnscaled":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v7, v9, v1

    .line 408
    .local v7, "availhUnscaled":I
    if-gez v8, :cond_a

    .line 409
    int-to-float v1, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mXOffset:F

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    mul-float/2addr v1, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v1, v15

    float-to-int v1, v1

    add-int/2addr v5, v1

    .line 410
    :cond_a
    if-gez v7, :cond_b

    .line 411
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mYOffset:F

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    mul-float/2addr v1, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v1, v15

    float-to-int v1, v1

    add-int/2addr v6, v1

    .line 413
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 414
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 415
    if-eqz v14, :cond_c

    .line 416
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 417
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 419
    :cond_c
    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v5, v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-eq v6, v1, :cond_4

    .line 426
    :cond_d
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 427
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-boolean v1, v1, Lcom/android/systemui_ex/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v1, :cond_e

    move-object/from16 v1, p0

    .line 434
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v1, p0

    .line 435
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v1, p0

    .line 438
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-boolean v1, v1, Lcom/android/systemui_ex/ImageWallpaper;->mIsHwAccelerated:Z

    if-nez v1, :cond_4

    .line 446
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 217
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 293
    iput p2, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 297
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mSurfaceChanged:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 308
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 320
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 314
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 330
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 276
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 271
    :cond_0
    return-void
.end method

.method public trimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/4 v1, -0x1

    .line 177
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 184
    iput v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 185
    iput v1, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 186
    iget-object v0, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 188
    :cond_0
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    .line 223
    .local v3, "p":Landroid/graphics/Point;
    iget v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v6, :cond_2

    .line 225
    :cond_0
    iget-object v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui_ex/ImageWallpaper;

    iget-object v6, v6, Lcom/android/systemui_ex/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 226
    invoke-direct {p0}, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 227
    iget v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v6, :cond_2

    .line 229
    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 230
    iget v6, v3, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 235
    :cond_2
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 236
    .local v5, "surfaceWidth":I
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/systemui_ex/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 239
    .local v4, "surfaceHeight":I
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 240
    .local v2, "frame":Landroid/graphics/Rect;
    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 242
    .local v1, "dw":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 243
    .local v0, "dh":I
    if-ne v5, v1, :cond_3

    if-ne v4, v0, :cond_3

    .line 256
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    :goto_0
    return-void

    .line 252
    :cond_3
    invoke-interface {p1, v5, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
