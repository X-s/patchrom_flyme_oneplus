.class public final Lcom/oneplus/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x2

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x1

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final m_BitmapFilterPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "opbaselib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    .line 58
    sget-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 70
    const/4 v2, 0x2

    .line 71
    .local v2, "sampleSize":I
    shr-int/lit8 v1, p0, 0x1

    .line 72
    .local v1, "decodeWidth":I
    shr-int/lit8 v0, p1, 0x1

    .line 73
    .local v0, "decodeHeight":I
    :goto_0
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 75
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 76
    shr-int/lit8 v1, v1, 0x1

    .line 77
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    shr-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public static centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v12, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 94
    .local v6, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 95
    .local v5, "originalHeight":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 96
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 99
    if-ne p1, v6, :cond_0

    if-ne p2, v5, :cond_0

    .line 115
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 103
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v10, v6

    int-to-float v11, p1

    div-float v8, v10, v11

    .line 104
    .local v8, "ratioX":F
    int-to-float v10, v5

    int-to-float v11, p2

    div-float v9, v10, v11

    .line 105
    .local v9, "ratioY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 106
    .local v7, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v7

    float-to-int v3, v10

    .line 107
    .local v3, "cropWidth":I
    int-to-float v10, p2

    mul-float/2addr v10, v7

    float-to-int v1, v10

    .line 108
    .local v1, "cropHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v2, "cropRect":Landroid/graphics/Rect;
    sub-int v10, v6, v3

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v1

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 113
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v11, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v4

    .line 115
    goto :goto_0
.end method

.method public static createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 130
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 131
    .local v0, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v0, p2, :cond_1

    .line 132
    move-object v2, p0

    .line 138
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-ne v2, p0, :cond_0

    .line 139
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    :cond_0
    return-object v2

    .line 135
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0, p1, p2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 136
    .local v3, "thumbSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 168
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 169
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 170
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1

    .line 171
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 172
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 174
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 177
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 180
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 183
    return-object v1
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 395
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 417
    :try_start_0
    move-object/from16 v0, p0

    instance-of v3, v0, Ljava/io/FileInputStream;

    if-nez v3, :cond_0

    .line 419
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 420
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 429
    :cond_0
    if-nez p1, :cond_1

    .line 430
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 431
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    :cond_2
    const/4 v11, 0x1

    .line 434
    .local v11, "swapWidthHeight":Z
    :goto_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 435
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 437
    if-eqz v11, :cond_3

    .line 439
    iget v15, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 440
    .local v15, "temp":I
    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 441
    iput v15, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 445
    .end local v15    # "temp":I
    :cond_3
    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v4, v0, v1, v5}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v13

    .line 446
    .local v13, "targetSize":Landroid/util/Size;
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    .line 447
    .local v14, "targetWidth":I
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 450
    .local v12, "targetHeight":I
    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, v14, v12}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 453
    move-object/from16 v0, p0

    instance-of v3, v0, Ljava/io/FileInputStream;

    if-eqz v3, :cond_7

    .line 454
    move-object/from16 v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 459
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 460
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 461
    move-object/from16 v0, p5

    iput-object v0, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 462
    const/4 v3, 0x1

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 463
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 464
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_9

    .line 466
    const-string v3, "ImageUtils"

    const-string v4, "decodeBitmap() - Fail to decode image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x0

    .line 488
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "swapWidthHeight":Z
    .end local v12    # "targetHeight":I
    .end local v13    # "targetSize":Landroid/util/Size;
    .end local v14    # "targetWidth":I
    :cond_4
    :goto_3
    return-object v2

    .line 423
    :cond_5
    const-string v3, "ImageUtils"

    const-string v4, "decodeBitmap() - Cannot save stream position"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v2, 0x0

    goto :goto_3

    .line 431
    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 456
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "swapWidthHeight":Z
    .restart local v12    # "targetHeight":I
    .restart local v13    # "targetSize":Landroid/util/Size;
    .restart local v14    # "targetWidth":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "swapWidthHeight":Z
    .end local v12    # "targetHeight":I
    .end local v13    # "targetSize":Landroid/util/Size;
    .end local v14    # "targetWidth":I
    :catch_0
    move-exception v9

    .line 487
    .local v9, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "decodeBitmap() - Fail to decode bitmap"

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    const/4 v2, 0x0

    goto :goto_3

    .line 460
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "swapWidthHeight":Z
    .restart local v12    # "targetHeight":I
    .restart local v13    # "targetSize":Landroid/util/Size;
    .restart local v14    # "targetWidth":I
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 471
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v14, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v12, :cond_4

    .line 473
    :cond_a
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v11, :cond_b

    .line 475
    int-to-float v3, v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 478
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 479
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 477
    :cond_b
    int-to-float v3, v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 248
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 284
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_3

    const/16 v20, 0x1

    .line 285
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 286
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_4

    .line 288
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_4

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_4

    .line 292
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 293
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 299
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 300
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 303
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 316
    :goto_1
    if-nez v20, :cond_1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_4

    .line 318
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 319
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 320
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 321
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 325
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    .line 326
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 362
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_2
    :goto_3
    return-object v14

    .line 284
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 308
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :sswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 309
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 310
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 344
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "temp":I
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 348
    :cond_4
    if-eqz v20, :cond_7

    .line 349
    const/4 v14, 0x0

    goto :goto_3

    .line 320
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 327
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 334
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 337
    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 338
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 339
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_3

    .line 331
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_1
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 332
    goto :goto_4

    .line 352
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .local v8, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 354
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 355
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_8

    .line 356
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    :cond_8
    if-eqz v8, :cond_2

    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v21

    .local v21, "x2":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 359
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v21    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    .line 361
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 358
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 352
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_5
    if-eqz v8, :cond_a

    if-eqz v4, :cond_b

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_6
    :try_start_8
    throw v3

    :catch_4
    move-exception v21

    .restart local v21    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v21    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catchall_1
    move-exception v3

    goto :goto_5

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 327
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 196
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 228
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 230
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 231
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 231
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v3, v4

    .line 234
    goto :goto_0

    .line 231
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 228
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    :try_start_6
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method public static decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 696
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 717
    :try_start_0
    move-object/from16 v0, p0

    instance-of v5, v0, Ljava/io/FileInputStream;

    if-nez v5, :cond_0

    .line 719
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 720
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 729
    :cond_0
    if-nez p1, :cond_1

    .line 730
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 731
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_6

    :cond_2
    const/16 v27, 0x1

    .line 734
    .local v27, "swapWidthHeight":Z
    :goto_0
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 735
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 736
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 737
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 738
    .local v23, "originalWidth":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 739
    .local v22, "originalHeight":I
    if-lez v23, :cond_3

    if-gtz v22, :cond_7

    .line 741
    :cond_3
    const-string v5, "ImageUtils"

    const-string v6, "decodeCenterCropBitmap() - Fail to get bitmap size"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v4, 0x0

    .line 818
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "originalHeight":I
    .end local v23    # "originalWidth":I
    .end local v27    # "swapWidthHeight":Z
    :cond_4
    :goto_1
    return-object v4

    .line 723
    :cond_5
    const-string v5, "ImageUtils"

    const-string v6, "decodeCenterCropBitmap() - Cannot save stream position"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v4, 0x0

    goto :goto_1

    .line 731
    :cond_6
    const/16 v27, 0x0

    goto :goto_0

    .line 744
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v22    # "originalHeight":I
    .restart local v23    # "originalWidth":I
    .restart local v27    # "swapWidthHeight":Z
    :cond_7
    if-eqz v27, :cond_8

    .line 746
    move/from16 v29, p2

    .line 747
    .local v29, "temp":I
    move/from16 p2, p3

    .line 748
    move/from16 p3, v29

    .line 752
    .end local v29    # "temp":I
    :cond_8
    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 753
    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 754
    move/from16 v0, p2

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    div-float v25, v5, v6

    .line 755
    .local v25, "ratioX":F
    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    div-float v26, v5, v6

    .line 756
    .local v26, "ratioY":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 757
    .local v24, "ratio":F
    move/from16 v0, v23

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v0, v5

    move/from16 v17, v0

    .line 758
    .local v17, "decodeWidth":I
    move/from16 v0, v22

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v15, v5

    .line 761
    .local v15, "decodeHeight":I
    move-object/from16 v0, p0

    instance-of v5, v0, Ljava/io/FileInputStream;

    if-eqz v5, :cond_9

    .line 762
    move-object/from16 v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 767
    :goto_2
    mul-int v16, v17, v15

    .line 768
    .local v16, "decodePixelCount":I
    mul-int v28, p2, p3

    .line 771
    .local v28, "targetPixelCount":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 772
    .local v13, "cropRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 773
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 774
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 775
    div-int/lit8 v5, v16, 0x2

    move/from16 v0, v28

    if-gt v0, v5, :cond_b

    .line 777
    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    div-float v25, v5, v6

    .line 778
    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, p3

    int-to-float v6, v0

    div-float v26, v5, v6

    .line 779
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 780
    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v14, v5

    .line 781
    .local v14, "cropWidth":I
    move/from16 v0, p3

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v12, v5

    .line 782
    .local v12, "cropHeight":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v18

    .line 783
    .local v18, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6, v14, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    sub-int v5, v23, v14

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v22, v12

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 785
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 786
    .local v21, "originalBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 802
    .end local v18    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_4
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 803
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 804
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v13, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    .line 809
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 810
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 811
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_1

    .line 764
    .end local v4    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "cropHeight":I
    .end local v13    # "cropRect":Landroid/graphics/Rect;
    .end local v14    # "cropWidth":I
    .end local v16    # "decodePixelCount":I
    .end local v21    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v28    # "targetPixelCount":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 815
    .end local v15    # "decodeHeight":I
    .end local v17    # "decodeWidth":I
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "originalHeight":I
    .end local v23    # "originalWidth":I
    .end local v24    # "ratio":F
    .end local v25    # "ratioX":F
    .end local v26    # "ratioY":F
    .end local v27    # "swapWidthHeight":Z
    :catch_0
    move-exception v19

    .line 817
    .local v19, "ex":Ljava/lang/Throwable;
    const-string v5, "ImageUtils"

    const-string v6, "decodeCenterCropBitmap() - Fail to decode"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 773
    .end local v19    # "ex":Ljava/lang/Throwable;
    .restart local v13    # "cropRect":Landroid/graphics/Rect;
    .restart local v15    # "decodeHeight":I
    .restart local v16    # "decodePixelCount":I
    .restart local v17    # "decodeWidth":I
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v22    # "originalHeight":I
    .restart local v23    # "originalWidth":I
    .restart local v24    # "ratio":F
    .restart local v25    # "ratioX":F
    .restart local v26    # "ratioY":F
    .restart local v27    # "swapWidthHeight":Z
    .restart local v28    # "targetPixelCount":I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 790
    :cond_b
    :try_start_1
    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v15}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v5

    move-object/from16 v0, v20

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 791
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 792
    .restart local v21    # "originalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v0, p2

    int-to-float v6, v0

    div-float v25, v5, v6

    .line 793
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v0, p3

    int-to-float v6, v0

    div-float v26, v5, v6

    .line 794
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 795
    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v14, v5

    .line 796
    .restart local v14    # "cropWidth":I
    move/from16 v0, p3

    int-to-float v5, v0

    mul-float v5, v5, v24

    float-to-int v12, v5

    .line 797
    .restart local v12    # "cropHeight":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6, v14, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 798
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v14

    div-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 554
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 590
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_5

    const/16 v20, 0x1

    .line 591
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 592
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_8

    .line 594
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_8

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_8

    .line 598
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 599
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 602
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 605
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 606
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 607
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 608
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 609
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 611
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 612
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 613
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 617
    .end local v18    # "temp":I
    :cond_2
    if-nez v20, :cond_3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_8

    .line 619
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 620
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 621
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 622
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 623
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 624
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_8

    .line 626
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    .line 627
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 663
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_4
    :goto_2
    return-object v14

    .line 590
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 621
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 628
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 635
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 638
    :goto_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 639
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 640
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_2

    .line 632
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_0
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 633
    goto :goto_3

    .line 645
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 649
    :cond_8
    if-eqz v20, :cond_9

    .line 650
    const/4 v14, 0x0

    goto :goto_2

    .line 653
    :cond_9
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .local v8, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 655
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 656
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_a

    .line 657
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 659
    :cond_a
    if-eqz v8, :cond_4

    if-eqz v4, :cond_b

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v21

    .local v21, "x2":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 660
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v21    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    .line 662
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 659
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 653
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 659
    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_4
    if-eqz v8, :cond_c

    if-eqz v4, :cond_d

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_c
    :goto_5
    :try_start_8
    throw v3

    :catch_4
    move-exception v21

    .restart local v21    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v21    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_4

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 502
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 534
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 536
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 537
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 540
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 537
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 538
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v3, v4

    .line 540
    goto :goto_0

    .line 537
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 534
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    :try_start_6
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method public static decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOrientation(Ljava/io/InputStream;)I
    .locals 18
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 850
    if-nez p0, :cond_0

    .line 852
    const-string v14, "ImageUtils"

    const-string v15, "decodeOrientation() - No stream to check"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v14, 0x0

    .line 936
    .end local p0    # "stream":Ljava/io/InputStream;
    .local v9, "isFileStream":Z
    .local v10, "initialStreamPosition":J
    :goto_0
    return v14

    .line 857
    .end local v9    # "isFileStream":Z
    .end local v10    # "initialStreamPosition":J
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v0, p0

    instance-of v9, v0, Ljava/io/FileInputStream;

    .line 858
    .restart local v9    # "isFileStream":Z
    const-wide/16 v10, 0x0

    .line 861
    .restart local v10    # "initialStreamPosition":J
    if-eqz v9, :cond_3

    .line 862
    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->position()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v10

    .line 881
    :goto_1
    :try_start_1
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v8, v14}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 882
    .local v8, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v12, Lcom/oneplus/base/SimpleRef;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 883
    .local v12, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v5

    .line 884
    .local v5, "fromTiff":Z
    if-eqz v5, :cond_5

    .line 885
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v8, v14}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 888
    :goto_2
    if-eqz v5, :cond_a

    .line 891
    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v6, v14, v10

    .line 894
    .local v6, "headerOffset":J
    new-instance v3, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    const/4 v15, 0x0

    .line 896
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 898
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v14

    sget-object v16, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_9

    .line 900
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v14

    const/16 v16, 0x112

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 902
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 903
    .local v2, "data":[I
    if-eqz v2, :cond_9

    array-length v14, v2

    if-lez v14, :cond_9

    .line 904
    const/4 v14, 0x0

    aget v14, v2, v14

    invoke-static {v14}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v14

    .line 911
    if-eqz v3, :cond_2

    if-eqz v15, :cond_7

    :try_start_3
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 924
    :cond_2
    :goto_3
    if-eqz v9, :cond_8

    .line 925
    :try_start_4
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 929
    :catch_0
    move-exception v4

    .line 931
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v15, "ImageUtils"

    const-string v16, "decodeOrientation() - Fail to restore stream position"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 863
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 864
    const v14, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->mark(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 871
    :catch_1
    move-exception v4

    .line 873
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v14, "ImageUtils"

    const-string v15, "decodeOrientation() - Cannot save stream position"

    invoke-static {v14, v15, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 867
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_6
    const-string v14, "ImageUtils"

    const-string v15, "decodeOrientation() - Cannot save stream position"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 868
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 887
    .restart local v5    # "fromTiff":Z
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :cond_5
    :try_start_7
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    invoke-static {v0, v8, v12}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v5, 0x1

    :goto_4
    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 911
    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v6    # "headerOffset":J
    :catch_2
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 914
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v13    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 916
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v14, "ImageUtils"

    const-string v15, "decodeOrientation() - Unknown error"

    invoke-static {v14, v15, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 917
    const/4 v14, 0x0

    .line 924
    if-eqz v9, :cond_f

    .line 925
    :try_start_9
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 929
    :catch_4
    move-exception v4

    .line 931
    const-string v15, "ImageUtils"

    const-string v16, "decodeOrientation() - Fail to restore stream position"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 911
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_7
    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 922
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v14

    .line 924
    if-eqz v9, :cond_10

    .line 925
    :try_start_b
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    .line 932
    :goto_5
    throw v14

    .line 927
    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_8
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 911
    .end local v2    # "data":[I
    :cond_9
    if-eqz v3, :cond_a

    if-eqz v15, :cond_b

    :try_start_d
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 924
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v6    # "headerOffset":J
    :cond_a
    :goto_6
    if-eqz v9, :cond_e

    .line 925
    :try_start_e
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 936
    :goto_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 911
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v6    # "headerOffset":J
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catch_5
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    .line 894
    :catch_6
    move-exception v14

    :try_start_10
    throw v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 911
    :catchall_1
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    :goto_8
    if-eqz v3, :cond_c

    if-eqz v15, :cond_d

    :try_start_11
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_c
    :goto_9
    :try_start_12
    throw v14

    :catch_7
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_9

    .line 927
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v6    # "headerOffset":J
    :cond_e
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_7

    .line 929
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_8
    move-exception v4

    .line 931
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v14, "ImageUtils"

    const-string v15, "decodeOrientation() - Fail to restore stream position"

    invoke-static {v14, v15, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 927
    .end local v5    # "fromTiff":Z
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_f
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_0

    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_10
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_5

    .line 929
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_9
    move-exception v4

    .line 931
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v15, "ImageUtils"

    const-string v16, "decodeOrientation() - Fail to restore stream position"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 911
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    goto :goto_8
.end method

.method public static decodeOrientation(Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 830
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 832
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 833
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 837
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v3

    .line 833
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 834
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 836
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeOrientation() - Fail to access file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    const/4 v3, 0x0

    goto :goto_0

    .line 833
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 830
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 833
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method private static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 943
    packed-switch p0, :pswitch_data_0

    .line 955
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 947
    :pswitch_0
    const/16 v0, 0xb4

    goto :goto_0

    .line 950
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 953
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    .locals 17
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 972
    const-string v11, "ImageUtils"

    const-string v12, "findTiffHeader() - No stream"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v11, 0x0

    .line 1041
    .end local p0    # "stream":Ljava/io/InputStream;
    :goto_0
    return v11

    .line 975
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 977
    const-string v11, "ImageUtils"

    const-string v12, "findTiffHeader() - No reference to receive result"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v11, 0x0

    goto :goto_0

    .line 982
    :cond_1
    move-object/from16 v0, p0

    instance-of v5, v0, Ljava/io/FileInputStream;

    .line 983
    .local v5, "isFileStream":Z
    const-wide/16 v6, 0x0

    .line 986
    .local v6, "initialStreamPosition":J
    if-eqz v5, :cond_3

    .line 987
    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 1003
    :goto_1
    const-wide/16 v8, 0x0

    .line 1004
    .local v8, "readCount":J
    :try_start_1
    new-instance v3, Lcom/oneplus/io/BufferedInputStream;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 1006
    const/4 v11, 0x4

    :try_start_2
    new-array v2, v11, [B

    .line 1009
    .local v2, "buffer":[B
    :goto_2
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V

    .line 1010
    invoke-virtual {v3, v2}, Lcom/oneplus/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v11

    const/4 v13, 0x4

    if-ge v11, v13, :cond_7

    .line 1011
    const/4 v11, 0x0

    .line 1022
    if-eqz v3, :cond_2

    if-eqz v12, :cond_5

    :try_start_3
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1033
    :cond_2
    :goto_3
    if-eqz v5, :cond_6

    .line 1034
    :try_start_4
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v4

    .line 1040
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - Fail to restore stream position"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 988
    .end local v2    # "buffer":[B
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v8    # "readCount":J
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 989
    const v11, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 996
    :catch_1
    move-exception v4

    .line 998
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v11, "ImageUtils"

    const-string v12, "findTiffHeader() - Cannot save stream position"

    invoke-static {v11, v12, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 999
    const/4 v11, 0x0

    goto :goto_0

    .line 992
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_4
    :try_start_6
    const-string v11, "ImageUtils"

    const-string v12, "findTiffHeader() - Cannot save stream position"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 993
    const/4 v11, 0x0

    goto :goto_0

    .line 1022
    .restart local v2    # "buffer":[B
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v8    # "readCount":J
    :catch_2
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1023
    .end local v2    # "buffer":[B
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v10    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 1025
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v11, "ImageUtils"

    const-string v12, "findTiffHeader() - Unknown error"

    invoke-static {v11, v12, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1026
    const/4 v11, 0x0

    .line 1033
    if-eqz v5, :cond_f

    .line 1034
    :try_start_9
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 1038
    :catch_4
    move-exception v4

    .line 1040
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - Fail to restore stream position"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1022
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 1031
    .end local v2    # "buffer":[B
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :catchall_0
    move-exception v11

    .line 1033
    if-eqz v5, :cond_10

    .line 1034
    :try_start_b
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    .line 1041
    :goto_4
    throw v11

    .line 1036
    .restart local v2    # "buffer":[B
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_6
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1012
    :cond_7
    :try_start_d
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1014
    if-eqz p1, :cond_8

    .line 1015
    add-long v14, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1016
    :cond_8
    const/4 v11, 0x1

    .line 1022
    if-eqz v3, :cond_9

    if-eqz v12, :cond_a

    :try_start_e
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1033
    :cond_9
    :goto_5
    if-eqz v5, :cond_b

    .line 1034
    :try_start_f
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    .line 1038
    :catch_5
    move-exception v4

    .line 1040
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - Fail to restore stream position"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1022
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catch_6
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5

    .line 1036
    :cond_b
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 1018
    :cond_c
    :try_start_12
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->reset()V

    .line 1019
    const-wide/16 v14, 0x1

    invoke-virtual {v3, v14, v15}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1020
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    goto/16 :goto_2

    .line 1004
    .end local v2    # "buffer":[B
    :catch_7
    move-exception v11

    :try_start_13
    throw v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1022
    :catchall_1
    move-exception v12

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v11, v16

    :goto_6
    if-eqz v3, :cond_d

    if-eqz v12, :cond_e

    :try_start_14
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_d
    :goto_7
    :try_start_15
    throw v11

    :catch_8
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_e
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_7

    .line 1036
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :cond_f
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_0

    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_10
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_4

    .line 1038
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_9
    move-exception v4

    .line 1040
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - Fail to restore stream position"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1022
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    goto :goto_6
.end method

.method public static isJfifHeader(Ljava/io/InputStream;)Z
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1054
    instance-of v6, p0, Ljava/io/FileInputStream;

    .line 1055
    .local v6, "isFileStream":Z
    const-wide/16 v4, 0x0

    .line 1058
    .local v4, "initialStreamPosition":J
    if-eqz v6, :cond_0

    .line 1059
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1077
    :goto_0
    const/4 v7, 0x2

    :try_start_1
    new-array v3, v7, [B

    .line 1078
    .local v3, "header":[B
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v9, :cond_2

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 1090
    :goto_1
    if-eqz v6, :cond_3

    .line 1091
    :try_start_2
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v8, v7

    .line 1098
    .end local v3    # "header":[B
    :goto_3
    return v8

    .line 1060
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1061
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v7, "ImageUtils"

    const-string v9, "isJfifHeader() - Cannot save stream position"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1064
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_4
    const-string v7, "ImageUtils"

    const-string v9, "isJfifHeader() - Cannot save stream position"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .restart local v3    # "header":[B
    :cond_2
    move v7, v8

    .line 1078
    goto :goto_1

    .line 1093
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1095
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 1097
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string v8, "ImageUtils"

    const-string v9, "isJfifHeader() - Fail to restore stream position"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1080
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "header":[B
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 1082
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :try_start_6
    const-string v7, "ImageUtils"

    const-string v9, "isJfifHeader() - Unknown error"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1090
    if-eqz v6, :cond_4

    .line 1091
    :try_start_7
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 1095
    :catch_3
    move-exception v2

    .line 1097
    const-string v7, "ImageUtils"

    const-string v9, "isJfifHeader() - Fail to restore stream position"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1093
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 1088
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 1090
    if-eqz v6, :cond_5

    .line 1091
    :try_start_9
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 1098
    :goto_4
    throw v7

    .line 1093
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_5
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 1095
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .line 1097
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string v8, "ImageUtils"

    const-string v9, "isJfifHeader() - Fail to restore stream position"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static isJfifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1110
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1112
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1125
    instance-of v6, p0, Ljava/io/FileInputStream;

    .line 1126
    .local v6, "isFileStream":Z
    const-wide/16 v4, 0x0

    .line 1129
    .local v4, "initialStreamPosition":J
    if-eqz v6, :cond_0

    .line 1130
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1148
    :goto_0
    const/4 v7, 0x4

    :try_start_1
    new-array v3, v7, [B

    .line 1149
    .local v3, "header":[B
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v9, :cond_2

    invoke-static {v3, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    .line 1161
    :goto_1
    if-eqz v6, :cond_3

    .line 1162
    :try_start_2
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v8, v7

    .line 1169
    .end local v3    # "header":[B
    :goto_3
    return v8

    .line 1131
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1132
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v2

    .line 1141
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v7, "ImageUtils"

    const-string v9, "isTiffHeader() - Cannot save stream position"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1135
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_4
    const-string v7, "ImageUtils"

    const-string v9, "isTiffHeader() - Cannot save stream position"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .restart local v3    # "header":[B
    :cond_2
    move v7, v8

    .line 1149
    goto :goto_1

    .line 1164
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1166
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 1168
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string v8, "ImageUtils"

    const-string v9, "isTiffHeader() - Fail to restore stream position"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1151
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "header":[B
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 1153
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :try_start_6
    const-string v7, "ImageUtils"

    const-string v9, "isTiffHeader() - Unknown error"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1161
    if-eqz v6, :cond_4

    .line 1162
    :try_start_7
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 1166
    :catch_3
    move-exception v2

    .line 1168
    const-string v7, "ImageUtils"

    const-string v9, "isTiffHeader() - Fail to restore stream position"

    invoke-static {v7, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1164
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 1159
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 1161
    if-eqz v6, :cond_5

    .line 1162
    :try_start_9
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 1169
    :goto_4
    throw v7

    .line 1164
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_5
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 1166
    .end local p0    # "stream":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .line 1168
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string v8, "ImageUtils"

    const-string v9, "isTiffHeader() - Fail to restore stream position"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static isTiffHeader([BLcom/oneplus/base/Ref;)Z
    .locals 7
    .param p0, "header"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/16 v6, 0x2a

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1182
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1205
    :cond_1
    :goto_0
    return v0

    .line 1184
    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_3

    aget-byte v2, p0, v1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_5

    :cond_3
    aget-byte v2, p0, v0

    aget-byte v3, p0, v1

    if-ne v2, v3, :cond_5

    .line 1186
    aget-byte v2, p0, v1

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_4

    .line 1188
    aget-byte v2, p0, v4

    if-nez v2, :cond_5

    aget-byte v2, p0, v5

    if-ne v2, v6, :cond_5

    .line 1190
    if-eqz p1, :cond_1

    .line 1191
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1197
    :cond_4
    aget-byte v2, p0, v4

    if-ne v2, v6, :cond_5

    aget-byte v2, p0, v5

    if-nez v2, :cond_5

    .line 1199
    if-eqz p1, :cond_1

    .line 1200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1205
    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 1218
    rem-int/lit16 p1, p1, 0x168

    .line 1219
    if-gez p1, :cond_0

    .line 1220
    add-int/lit16 p1, p1, 0x168

    .line 1221
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v9, p0

    .line 1242
    :goto_0
    return-object v9

    .line 1225
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 1227
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1228
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1229
    .local v8, "height":I
    mul-int v0, v12, v8

    mul-int/lit8 v7, v0, 0x4

    .line 1230
    .local v7, "dataSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1231
    .local v11, "srcPixels":Ljava/nio/IntBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 1232
    .local v10, "rotatedPixels":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1233
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1234
    invoke-static {v11, v12, v8, v10}, Lcom/oneplus/media/ImageUtils;->rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z

    .line 1235
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 1240
    .end local v7    # "dataSize":I
    .end local v8    # "height":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "rotatedPixels":Ljava/nio/IntBuffer;
    .end local v11    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v12    # "width":I
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1241
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0
.end method

.method public static rotateNV21Image([BIII)[B
    .locals 4
    .param p0, "srcYuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "degrees"    # I

    .prologue
    .line 1256
    sparse-switch p3, :sswitch_data_0

    .line 1267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rotation degrees : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1262
    :sswitch_0
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 1263
    .local v0, "rotatedUV":[B
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image90([BII[B)Z

    move-object p0, v0

    .line 1264
    .end local v0    # "rotatedUV":[B
    .end local p0    # "srcYuv":[B
    :sswitch_1
    return-object p0

    .line 1256
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private static native rotateNV21Image90([BII[B)Z
.end method

.method private static native rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z
.end method
