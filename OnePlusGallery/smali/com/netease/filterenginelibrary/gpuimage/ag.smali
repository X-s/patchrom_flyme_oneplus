.class public Lcom/netease/filterenginelibrary/gpuimage/ag;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)I
    .locals 7

    const/4 v0, -0x1

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/16 v4, 0xde1

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v4, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    aget v0, v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v4, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    aput p1, v1, v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v2, v0

    if-nez v2, :cond_0

    const-string v2, "Load Shader Failed"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Compilation\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v1, 0x8b31

    invoke-static {p0, v1}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "Load Program"

    const-string v2, "Vertex Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const v1, 0x8b30

    invoke-static {p1, v1}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "Load Program"

    const-string v2, "Fragment Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    invoke-static {v1, v5, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v0

    if-gtz v2, :cond_2

    const-string v1, "Load Program"

    const-string v2, "Linking Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 13

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v12, v3, [I

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v12, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_0
    aget v0, v12, v1

    return v0

    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v7, p1, Landroid/hardware/Camera$Size;->width:I

    iget v8, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x1401

    move v3, v0

    move v4, v1

    move v5, v1

    move v6, v1

    move v9, v2

    move-object v11, p0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    aput p2, v12, v1

    goto :goto_0
.end method

.method public static b(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/filterenginelibrary/gpuimage/ag;->a(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method
