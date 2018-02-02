.class public final Lcom/oneplus/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field public static final FLAG_IGNORE_ORIENTATION:I = 0x20

.field public static final FLAG_MUTABLE:I = 0x8

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x2

.field public static final FLAG_OPAQUE:I = 0x10

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x1

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x4

.field private static final LARGE_IMAGE_SIZE_THRESHOLD:I = 0x17d7840

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final m_BitmapFilterPaint:Landroid/graphics/Paint;


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/media/ImageUtils;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/media/ImageUtils;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/media/ImageUtils;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-media-IfdSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/media/ImageUtils;->-com-oneplus-media-IfdSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/media/ImageUtils;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/media/Ifd;->values()[Lcom/oneplus/media/Ifd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/media/ImageUtils;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    .line 84
    sget-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToNV21(Landroid/graphics/Bitmap;[B)V
    .locals 14
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "nv21Buffer"    # [B

    .prologue
    const/4 v13, 0x3

    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Input image is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 129
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 130
    .local v0, "height":I
    mul-int v3, v5, v0

    .line 131
    .local v3, "pixelCounts":I
    mul-int/lit8 v2, v3, 0x3

    .line 132
    .local v2, "nv21BufferLength":I
    if-nez p1, :cond_1

    .line 133
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "NV21 buffer is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 134
    :cond_1
    array-length v8, p1

    if-ge v8, v2, :cond_2

    .line 135
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid NV21 buffer, length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", expect length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    :cond_2
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->lockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    .local v1, "imageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    new-array v4, v8, [B

    .line 140
    .local v4, "rgbaBuffer":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 141
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 143
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "bitmapToNV21() - rgba : "

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    array-length v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, ", nv21 : "

    const/4 v12, 0x1

    aput-object v11, v10, v12

    array-length v11, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, ", width : "

    aput-object v11, v10, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    const-string/jumbo v11, ", height : "

    const/4 v12, 0x5

    aput-object v11, v10, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 147
    .local v6, "time":J
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 148
    invoke-static {v4, p1, v5, v0}, Lcom/oneplus/media/ImageUtils;->rgbaToYuvaAndNv21a([B[BII)V

    .line 149
    :cond_3
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "bitmapToNV21() - RGBA to NV21, spent : "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string/jumbo v11, " ms"

    invoke-static {v8, v9, v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public static bitmapToNV21(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Input image is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 106
    .local v1, "pixelCounts":I
    mul-int/lit8 v2, v1, 0x3

    new-array v0, v2, [B

    .line 109
    .local v0, "nv21Buffer":[B
    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->bitmapToNV21(Landroid/graphics/Bitmap;[B)V

    .line 112
    return-object v0
.end method

.method public static calculateSampleSize(IIII)I
    .locals 1
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIIIZ)I

    move-result v0

    return v0
.end method

.method public static calculateSampleSize(IIIIZ)I
    .locals 3
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "downScale"    # Z

    .prologue
    .line 178
    const/4 v2, 0x2

    .line 179
    .local v2, "sampleSize":I
    shr-int/lit8 v1, p0, 0x1

    .line 180
    .local v1, "decodeWidth":I
    shr-int/lit8 v0, p1, 0x1

    .line 181
    .local v0, "decodeHeight":I
    :goto_0
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 183
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 184
    shr-int/lit8 v1, v1, 0x1

    .line 185
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    if-eqz p4, :cond_2

    .end local v2    # "sampleSize":I
    :goto_1
    return v2

    .restart local v2    # "sampleSize":I
    :cond_2
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v12, 0x0

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 202
    .local v6, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 203
    .local v5, "originalHeight":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 204
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 207
    if-ne p1, v6, :cond_0

    if-ne p2, v5, :cond_0

    .line 208
    return-object p0

    .line 211
    :cond_0
    int-to-float v10, v6

    int-to-float v11, p1

    div-float v8, v10, v11

    .line 212
    .local v8, "ratioX":F
    int-to-float v10, v5

    int-to-float v11, p2

    div-float v9, v10, v11

    .line 213
    .local v9, "ratioY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 214
    .local v7, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v7

    float-to-int v3, v10

    .line 215
    .local v3, "cropWidth":I
    int-to-float v10, p2

    mul-float/2addr v10, v7

    float-to-int v1, v10

    .line 216
    .local v1, "cropHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    .local v2, "cropRect":Landroid/graphics/Rect;
    sub-int v10, v6, v3

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v1

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 220
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 221
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v11, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    return-object v4
.end method

.method public static combineNV21Images([BII[B[BIIII)V
    .locals 11
    .param p0, "destBuffer"    # [B
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "srcBuffer"    # [B
    .param p4, "srcAlphaBuffer"    # [B
    .param p5, "srcWidth"    # I
    .param p6, "srcHeight"    # I
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 241
    invoke-static/range {v0 .. v10}, Lcom/oneplus/media/ImageUtils;->combineNV21Images([BII[B[BIIIIII)V

    .line 239
    return-void
.end method

.method public static combineNV21Images([BII[B[BIIIIII)V
    .locals 1
    .param p0, "destBuffer"    # [B
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "srcBuffer"    # [B
    .param p4, "srcAlphaBuffer"    # [B
    .param p5, "srcWidth"    # I
    .param p6, "srcHeight"    # I
    .param p7, "srcScaledWidth"    # I
    .param p8, "srcScaledHeight"    # I
    .param p9, "x"    # I
    .param p10, "y"    # I

    .prologue
    .line 261
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static/range {p0 .. p10}, Lcom/oneplus/media/ImageUtils;->combineNV21ImagesNative([BII[B[BIIIIII)V

    .line 259
    :cond_0
    return-void
.end method

.method private static native combineNV21ImagesNative([BII[B[BIIIIII)V
.end method

.method public static copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 282
    if-eqz p2, :cond_0

    :try_start_0
    array-length v7, p2

    if-nez v7, :cond_1

    .line 283
    :cond_0
    return v9

    .line 286
    :cond_1
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "exif":Landroid/media/ExifInterface;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v5, "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, p2

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 290
    aget-object v7, p2, v4

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 292
    aget-object v7, p2, v4

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 294
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 295
    return v9

    .line 298
    :cond_4
    new-instance v3, Landroid/media/ExifInterface;

    .end local v3    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 307
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "i":I
    .end local v5    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 308
    .local v2, "ex":Ljava/lang/Throwable;
    const-string/jumbo v7, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "copyExif() - Fail to copy from \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    return v10

    .line 301
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v4    # "i":I
    .restart local v5    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    return v9
.end method

.method public static createBitmapFromRgbaBuffer(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "rgbaBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I
    .param p5, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p6, "dstBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 328
    return-object p6

    .line 329
    :cond_0
    mul-int v1, p1, p2

    mul-int/lit8 v0, v1, 0x4

    .line 330
    .local v0, "capacity":I
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 331
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    .line 334
    :goto_0
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->removeArgbPaddings(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;)V

    .line 337
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p1, :cond_5

    .line 338
    :cond_2
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 339
    :cond_3
    invoke-virtual {p6, p5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 340
    return-object p6

    .line 333
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 337
    :cond_5
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_3

    goto :goto_1
.end method

.method public static createBitmapFromRgbaImagePlane(Landroid/media/Image;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 353
    if-nez p0, :cond_0

    .line 354
    return-object p2

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 356
    .local v8, "planes":[Landroid/media/Image$Plane;
    array-length v1, v8

    if-lez v1, :cond_1

    aget-object v7, v8, v2

    .line 358
    .local v7, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 359
    .local v0, "rgbaBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/oneplus/media/ImageUtils;->createBitmapFromRgbaBuffer(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 361
    .end local v0    # "rgbaBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "plane":Landroid/media/Image$Plane;
    :cond_1
    return-object p2
.end method

.method public static createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 375
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 376
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 377
    .local v0, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v0, p2, :cond_1

    .line 378
    move-object v2, p0

    .line 384
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-ne v2, p0, :cond_0

    .line 385
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 386
    :cond_0
    return-object v2

    .line 381
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0, p1, p2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 382
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

.method public static createWithBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 397
    const/high16 v0, -0x1000000

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->createWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createWithBackground(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 411
    return-object v6

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 415
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 416
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 418
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 419
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 420
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    return-object v3

    .line 416
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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
    .line 439
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

    .line 452
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 453
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 454
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1

    .line 455
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 456
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 457
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 458
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 459
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 460
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 461
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 464
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 465
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 467
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
    .line 683
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
    .line 663
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 34
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 706
    and-int/lit8 v6, p4, 0x10

    if-eqz v6, :cond_3

    const/16 v20, 0x1

    .line 709
    .local v20, "isOpaque":Z
    :goto_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v18

    .line 710
    .local v18, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v19

    .line 713
    .local v19, "isJfifHeader":Z
    if-nez p1, :cond_0

    .line 714
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 715
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_4

    :cond_1
    const/16 v28, 0x1

    .line 718
    .local v28, "swapWidthHeight":Z
    :goto_1
    const/4 v5, 0x0

    .line 723
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .line 724
    .local v22, "needFillOuter":Z
    if-eqz v18, :cond_1c

    .line 728
    const/4 v7, 0x0

    const/16 v26, 0x0

    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v27, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 730
    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .local v27, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v21

    .line 731
    .local v21, "movie":Landroid/graphics/Movie;
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/Movie;->setTime(I)Z

    .line 732
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Movie;->width()I

    move-result v25

    .line 733
    .local v25, "originalWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Movie;->height()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result v24

    .line 734
    .local v24, "originalHeight":I
    if-eqz v27, :cond_2

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 877
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "isGifHeader":Z
    .end local v19    # "isJfifHeader":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v22    # "needFillOuter":Z
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v28    # "swapWidthHeight":Z
    :catch_0
    move-exception v14

    .line 878
    .local v14, "ex":Ljava/lang/Throwable;
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v7, "decodeBitmap() - Fail to decode bitmap"

    invoke-static {v6, v7, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    const/4 v6, 0x0

    return-object v6

    .line 706
    .end local v14    # "ex":Ljava/lang/Throwable;
    .end local v20    # "isOpaque":Z
    :cond_3
    const/16 v20, 0x0

    .restart local v20    # "isOpaque":Z
    goto :goto_0

    .line 715
    .restart local v18    # "isGifHeader":Z
    .restart local v19    # "isJfifHeader":Z
    :cond_4
    const/16 v28, 0x0

    .restart local v28    # "swapWidthHeight":Z
    goto :goto_1

    .line 734
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "movie":Landroid/graphics/Movie;
    .restart local v22    # "needFillOuter":Z
    .restart local v24    # "originalHeight":I
    .restart local v25    # "originalWidth":I
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v6

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    move-object/from16 v33, v7

    move-object v7, v6

    move-object/from16 v6, v33

    :goto_4
    if-eqz v26, :cond_5

    :try_start_6
    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    if-eqz v7, :cond_7

    :try_start_7
    throw v7

    :catch_3
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_5

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 735
    .restart local v21    # "movie":Landroid/graphics/Movie;
    .restart local v24    # "originalHeight":I
    .restart local v25    # "originalWidth":I
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_8
    const/16 v17, 0x1

    .line 736
    .local v17, "isFromMovie":Z
    const/4 v12, 0x0

    .line 737
    .local v12, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    if-lez v25, :cond_9

    if-gtz v24, :cond_f

    .line 739
    :cond_9
    const/4 v7, 0x0

    const/16 v26, 0x0

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_8
    new-instance v27, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 742
    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_9
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v8, "decodeBitmap() - Fail to get width and height by movie, try to use GifDecoder!"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance v15, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v15}, Lcom/oneplus/util/GifDecoder;-><init>()V

    .line 744
    .local v15, "gifDecoder":Lcom/oneplus/util/GifDecoder;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 745
    invoke-virtual {v15}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 747
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lcom/oneplus/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 748
    .local v16, "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_a

    .line 750
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 751
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    .line 752
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 753
    .local v12, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 754
    const-string/jumbo v6, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "decodeBitmap() - decode by GifDecoder width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v16    # "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    :cond_a
    invoke-virtual {v15}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 758
    if-eqz v27, :cond_b

    :try_start_a
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_b
    :goto_6
    if-eqz v7, :cond_f

    :try_start_b
    throw v7
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :catch_4
    move-exception v7

    goto :goto_6

    .end local v15    # "gifDecoder":Lcom/oneplus/util/GifDecoder;
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v12, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v6

    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_7
    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v7

    move-object/from16 v33, v7

    move-object v7, v6

    move-object/from16 v6, v33

    :goto_8
    if-eqz v26, :cond_c

    :try_start_d
    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    :cond_c
    :goto_9
    if-eqz v7, :cond_e

    :try_start_e
    throw v7

    :catch_6
    move-exception v8

    if-nez v7, :cond_d

    move-object v7, v8

    goto :goto_9

    :cond_d
    if-eq v7, v8, :cond_c

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_e
    throw v6

    .line 760
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_f
    move/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 761
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_10

    .line 762
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 764
    :cond_10
    if-eqz v17, :cond_1b

    .line 765
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 772
    :cond_11
    :goto_a
    if-eqz v28, :cond_12

    .line 774
    move/from16 v32, v25

    .line 775
    .local v32, "temp":I
    move/from16 v25, v24

    .line 776
    move/from16 v24, v32

    .line 780
    .end local v32    # "temp":I
    :cond_12
    const/4 v6, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v30

    .line 781
    .local v30, "targetSize":Landroid/util/Size;
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getWidth()I

    move-result v31

    .line 782
    .local v31, "targetWidth":I
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getHeight()I

    move-result v29

    .line 847
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v29, "targetHeight":I
    :cond_13
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move/from16 v0, v31

    if-ne v6, v0, :cond_14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, v29

    if-eq v6, v0, :cond_28

    .line 849
    :cond_14
    :goto_b
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 850
    .local v10, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move/from16 v0, v31

    if-ne v6, v0, :cond_15

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, v29

    if-eq v6, v0, :cond_16

    .line 852
    :cond_15
    if-eqz v28, :cond_29

    .line 853
    move/from16 v0, v31

    int-to-float v6, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v29

    int-to-float v7, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 857
    :cond_16
    :goto_c
    if-eqz v28, :cond_17

    .line 858
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 859
    :cond_17
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 863
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_18
    if-eqz v22, :cond_19

    if-eqz v19, :cond_19

    .line 866
    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->fillOuterPixels(Landroid/graphics/Bitmap;)Z

    .line 870
    :cond_19
    if-eqz v20, :cond_1a

    if-eqz v19, :cond_2a

    .line 874
    :cond_1a
    :goto_d
    return-object v5

    .line 766
    .end local v29    # "targetHeight":I
    .end local v30    # "targetSize":Landroid/util/Size;
    .end local v31    # "targetWidth":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "isFromMovie":Z
    .restart local v21    # "movie":Landroid/graphics/Movie;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1b
    if-eqz v12, :cond_11

    .line 768
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v12, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 787
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :cond_1c
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 788
    .local v23, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 789
    const/4 v7, 0x0

    const/16 v26, 0x0

    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_f
    new-instance v27, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 791
    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    const/4 v6, 0x0

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 796
    if-eqz v27, :cond_1d

    :try_start_11
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_1d
    :goto_e
    if-eqz v7, :cond_23

    :try_start_12
    throw v7
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 794
    :catch_7
    move-exception v13

    .local v13, "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .line 795
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_f
    :try_start_13
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v7, "Fail to decode stream"

    invoke-static {v6, v7, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    .end local v13    # "e":Ljava/lang/Throwable;
    :goto_10
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    .line 798
    .restart local v25    # "originalWidth":I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    .line 801
    .restart local v24    # "originalHeight":I
    if-eqz v28, :cond_1e

    .line 803
    move/from16 v32, v25

    .line 804
    .restart local v32    # "temp":I
    move/from16 v25, v24

    .line 805
    move/from16 v24, v32

    .line 809
    .end local v32    # "temp":I
    :cond_1e
    const/4 v6, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v30

    .line 810
    .restart local v30    # "targetSize":Landroid/util/Size;
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getWidth()I

    move-result v31

    .line 811
    .restart local v31    # "targetWidth":I
    invoke-virtual/range {v30 .. v30}, Landroid/util/Size;->getHeight()I

    move-result v29

    .line 814
    .restart local v29    # "targetHeight":I
    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v31

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v6

    move-object/from16 v0, v23

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 817
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    mul-int v6, v25, v24

    const v7, 0x17d7840

    if-lt v6, v7, :cond_1f

    .line 820
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 824
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1f
    if-nez v5, :cond_22

    .line 826
    const/4 v6, 0x0

    move-object/from16 v0, v23

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, v23

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 828
    move-object/from16 v0, p5

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 829
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 830
    and-int/lit8 v6, p4, 0x8

    if-eqz v6, :cond_20

    .line 831
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 832
    :cond_20
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_21

    if-eqz v19, :cond_21

    .line 833
    const/16 v22, 0x1

    .line 835
    :cond_21
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 839
    :cond_22
    if-nez v5, :cond_13

    .line 841
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v7, "decodeBitmap() - Fail to decode image"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    .line 842
    const/4 v6, 0x0

    return-object v6

    .line 796
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .end local v29    # "targetHeight":I
    .end local v30    # "targetSize":Landroid/util/Size;
    .end local v31    # "targetWidth":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_8
    move-exception v7

    goto/16 :goto_e

    :cond_23
    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_10

    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v6

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_12
    :try_start_14
    throw v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v7

    move-object/from16 v33, v7

    move-object v7, v6

    move-object/from16 v6, v33

    :goto_13
    if-eqz v26, :cond_24

    :try_start_15
    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    :cond_24
    :goto_14
    if-eqz v7, :cond_26

    :try_start_16
    throw v7

    .line 794
    :catch_a
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Throwable;
    goto/16 :goto_f

    .line 796
    .end local v13    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v8

    if-nez v7, :cond_25

    move-object v7, v8

    goto :goto_14

    :cond_25
    if-eq v7, v8, :cond_24

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_26
    throw v6
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 827
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "originalHeight":I
    .restart local v25    # "originalWidth":I
    .restart local v29    # "targetHeight":I
    .restart local v30    # "targetSize":Landroid/util/Size;
    .restart local v31    # "targetWidth":I
    :cond_27
    const/4 v6, 0x0

    goto :goto_11

    .line 847
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_28
    if-eqz v28, :cond_18

    goto/16 :goto_b

    .line 855
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_29
    move/from16 v0, v31

    int-to-float v6, v0

    :try_start_17
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v29

    int-to-float v7, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_c

    .line 870
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_2a
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v6, :cond_1a

    .line 871
    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->createWithBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    move-result-object v5

    .local v5, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_d

    .line 796
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .end local v29    # "targetHeight":I
    .end local v30    # "targetSize":Landroid/util/Size;
    .end local v31    # "targetWidth":I
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v6

    goto :goto_13

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_13

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_c
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_12

    .line 758
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v17    # "isFromMovie":Z
    .restart local v21    # "movie":Landroid/graphics/Movie;
    .restart local v24    # "originalHeight":I
    .restart local v25    # "originalWidth":I
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v6

    goto/16 :goto_8

    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_6
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_8

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_d
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_7

    .line 734
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v24    # "originalHeight":I
    .end local v25    # "originalWidth":I
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_7
    move-exception v6

    goto/16 :goto_4

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_8
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .local v26, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_4

    .end local v26    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_e
    move-exception v6

    move-object/from16 v26, v27

    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_3
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 533
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
    .line 570
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_2

    const/16 v21, 0x1

    .line 571
    .local v21, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 572
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    .line 574
    if-nez v21, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_3

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_3

    .line 578
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 579
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 582
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 585
    .local v9, "orientation":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v20

    .line 586
    .local v20, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 587
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 588
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 589
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 602
    :goto_1
    if-nez v21, :cond_1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_4

    .line 604
    :cond_1
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 605
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 606
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 607
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 608
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 609
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 611
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    .line 612
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 570
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "thumbData":[B
    .end local v21    # "useEmbeddedThumbOnly":Z
    :cond_2
    const/16 v21, 0x0

    .restart local v21    # "useEmbeddedThumbOnly":Z
    goto/16 :goto_0

    .line 594
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "thumbData":[B
    :sswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 595
    .local v19, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 596
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 631
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "temp":I
    .end local v20    # "thumbData":[B
    :catch_0
    move-exception v15

    .line 634
    :cond_3
    if-eqz v21, :cond_7

    .line 635
    const/4 v3, 0x0

    return-object v3

    .line 602
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "thumbData":[B
    :cond_4
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_3

    goto :goto_2

    .line 606
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 613
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 620
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 623
    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 624
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 625
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 617
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_1
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_4

    .line 638
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "thumbData":[B
    :cond_7
    const/4 v4, 0x0

    const/16 v18, 0x0

    .local v18, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v18    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 640
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 641
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_8

    .line 642
    const-string/jumbo v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 649
    :cond_8
    if-eqz v8, :cond_9

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 646
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v15

    .line 647
    .local v15, "ex":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    const/4 v3, 0x0

    return-object v3

    .line 649
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 643
    :cond_a
    return-object v14

    .line 649
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    move-object/from16 v8, v18

    .end local v18    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_7
    if-eqz v8, :cond_b

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_b
    :goto_8
    if-eqz v4, :cond_d

    :try_start_7
    throw v4

    :catch_4
    move-exception v5

    if-nez v4, :cond_c

    move-object v4, v5

    goto :goto_8

    :cond_c
    if-eq v4, v5, :cond_b

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v8, v18

    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v18    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    goto :goto_7

    :catch_5
    move-exception v3

    goto :goto_6

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 613
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
    .line 547
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
    .line 480
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x0

    .line 513
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .local v2, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 520
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 518
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 519
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v5

    .line 520
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 515
    :cond_1
    return-object v4

    .line 520
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 518
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 520
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-eq v4, v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public static decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 41
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 886
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v35

    if-nez v35, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isPngHeader(Ljava/io/InputStream;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 889
    :cond_0
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - start"

    invoke-static/range {v35 .. v36}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/16 v5, 0x400

    .line 892
    .local v5, "decodeGridSize":I
    const/16 v22, 0x0

    .line 893
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 894
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/16 v36, 0x0

    const/16 v20, 0x0

    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v21, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 897
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .local v21, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v12

    .line 898
    .local v12, "orientation":I
    const-string/jumbo v35, "ImageUtils"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "decodeBitmapProgressively() - orientation : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 902
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v14

    .line 903
    .local v14, "originalWidth":I
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v13

    .line 904
    .local v13, "originalHeight":I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 905
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v35, 0x0

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 906
    and-int/lit8 v35, p3, 0x1

    if-eqz v35, :cond_a

    const/16 v35, 0x1

    :goto_0
    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 907
    move-object/from16 v0, p4

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 908
    const/16 v35, 0x1

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 909
    and-int/lit8 v35, p3, 0x8

    if-eqz v35, :cond_1

    .line 910
    const/16 v35, 0x1

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 913
    :cond_1
    const/16 v35, 0x5a

    move/from16 v0, v35

    if-eq v12, v0, :cond_2

    const/16 v35, 0x10e

    move/from16 v0, v35

    if-ne v12, v0, :cond_b

    .line 915
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 916
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    move/from16 v26, p1

    .line 917
    .local v26, "temp":I
    move/from16 p1, p2

    .line 918
    move/from16 p2, v26

    .line 922
    .end local v26    # "temp":I
    :goto_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v14

    move/from16 v37, v0

    div-float v15, v35, v37

    .line 923
    .local v15, "ratioX":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v13

    move/from16 v37, v0

    div-float v16, v35, v37

    .line 924
    .local v16, "ratioY":F
    const/high16 v35, 0x44800000    # 1024.0f

    mul-float v35, v35, v15

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 925
    .local v25, "targetGridWidth":I
    const/high16 v35, 0x44800000    # 1024.0f

    mul-float v35, v35, v16

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 928
    .local v24, "targetGridHeight":I
    const-string/jumbo v35, "ImageUtils"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "decodeBitmapProgressively() - originalWidth : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " , originalHeight : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v35, "ImageUtils"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "decodeBitmapProgressively() - targetWidth : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " , targetHeight : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/16 v27, 0x0

    .line 934
    .local v27, "x":I
    :goto_2
    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    .line 935
    .local v29, "xStart":I
    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    add-int/lit8 v28, v35, -0x1

    .line 936
    .local v28, "xEnd":I
    move/from16 v0, v28

    if-lt v0, v14, :cond_3

    .line 937
    add-int/lit8 v28, v14, -0x1

    .line 939
    :cond_3
    const/16 v31, 0x0

    .line 942
    .local v31, "y":I
    :goto_3
    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    .line 943
    .local v33, "yStart":I
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    add-int/lit8 v32, v35, -0x1

    .line 944
    .local v32, "yEnd":I
    move/from16 v0, v32

    if-lt v0, v13, :cond_4

    .line 945
    add-int/lit8 v32, v13, -0x1

    .line 948
    :cond_4
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v28

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 949
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 952
    .local v18, "regionBitmap":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 953
    .local v23, "targetCanvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v35

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 954
    .local v19, "src":Landroid/graphics/Rect;
    mul-int v30, v27, v25

    .line 955
    .local v30, "xTargetStart":I
    mul-int v34, v31, v24

    .line 956
    .local v34, "yTargetStart":I
    move/from16 v9, v25

    .line 957
    .local v9, "dstWidth":I
    move/from16 v8, v24

    .line 958
    .local v8, "dstHeight":I
    add-int/lit8 v35, v14, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 959
    mul-int v35, v27, v25

    sub-int v9, p1, v35

    .line 960
    :cond_5
    add-int/lit8 v35, v13, -0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 961
    mul-int v35, v31, v24

    sub-int v8, p2, v35

    .line 962
    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    add-int v35, v30, v9

    add-int v37, v34, v8

    move/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v37

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 963
    .local v7, "dst":Landroid/graphics/Rect;
    const/16 v35, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 965
    add-int/lit8 v35, v13, -0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    .line 969
    add-int/lit8 v35, v14, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 982
    if-eqz v21, :cond_7

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    :goto_4
    if-eqz v36, :cond_12

    :try_start_3
    throw v36
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 974
    :catch_0
    move-exception v10

    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v20, v21

    .line 975
    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "dstHeight":I
    .end local v9    # "dstWidth":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "orientation":I
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    .end local v17    # "rect":Landroid/graphics/Rect;
    .end local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    .end local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v24    # "targetGridHeight":I
    .end local v25    # "targetGridWidth":I
    .end local v27    # "x":I
    .end local v28    # "xEnd":I
    .end local v29    # "xStart":I
    .end local v30    # "xTargetStart":I
    .end local v31    # "y":I
    .end local v32    # "yEnd":I
    .end local v33    # "yStart":I
    .end local v34    # "yTargetStart":I
    :goto_5
    :try_start_4
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - Fail to decode bitmap"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 976
    const/16 v22, 0x0

    .line 980
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_8

    .line 981
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 984
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_8
    :goto_6
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - end"

    invoke-static/range {v35 .. v36}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return-object v22

    .line 887
    .end local v5    # "decodeGridSize":I
    :cond_9
    const/16 v35, 0x0

    return-object v35

    .line 906
    .restart local v5    # "decodeGridSize":I
    .restart local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "orientation":I
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_a
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 921
    :cond_b
    :try_start_5
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v22

    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 939
    .restart local v7    # "dst":Landroid/graphics/Rect;
    .restart local v8    # "dstHeight":I
    .restart local v9    # "dstWidth":I
    .restart local v15    # "ratioX":F
    .restart local v16    # "ratioY":F
    .restart local v17    # "rect":Landroid/graphics/Rect;
    .restart local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "src":Landroid/graphics/Rect;
    .restart local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .restart local v24    # "targetGridHeight":I
    .restart local v25    # "targetGridWidth":I
    .restart local v27    # "x":I
    .restart local v28    # "xEnd":I
    .restart local v29    # "xStart":I
    .restart local v30    # "xTargetStart":I
    .restart local v31    # "y":I
    .restart local v32    # "yEnd":I
    .restart local v33    # "yStart":I
    .restart local v34    # "yTargetStart":I
    :cond_c
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3

    .line 931
    :cond_d
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 982
    :catch_1
    move-exception v36

    goto :goto_4

    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "dstHeight":I
    .end local v9    # "dstWidth":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "orientation":I
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    .end local v17    # "rect":Landroid/graphics/Rect;
    .end local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v24    # "targetGridHeight":I
    .end local v25    # "targetGridWidth":I
    .end local v27    # "x":I
    .end local v28    # "xEnd":I
    .end local v29    # "xStart":I
    .end local v30    # "xTargetStart":I
    .end local v31    # "y":I
    .end local v32    # "yEnd":I
    .end local v33    # "yStart":I
    .end local v34    # "yTargetStart":I
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v35

    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :goto_7
    :try_start_6
    throw v35
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v36

    move-object/from16 v40, v36

    move-object/from16 v36, v35

    move-object/from16 v35, v40

    :goto_8
    if-eqz v20, :cond_e

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_e
    :goto_9
    if-eqz v36, :cond_11

    :try_start_8
    throw v36

    .line 974
    :catch_3
    move-exception v10

    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto :goto_5

    .line 982
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v37

    if-nez v36, :cond_f

    move-object/from16 v36, v37

    goto :goto_9

    :cond_f
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_e

    invoke-virtual/range {v36 .. v37}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    .line 979
    :catchall_1
    move-exception v35

    .line 980
    :goto_a
    if-eqz v6, :cond_10

    .line 981
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 979
    :cond_10
    throw v35

    .line 982
    :cond_11
    :try_start_9
    throw v35
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 980
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v7    # "dst":Landroid/graphics/Rect;
    .restart local v8    # "dstHeight":I
    .restart local v9    # "dstWidth":I
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "orientation":I
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    .restart local v15    # "ratioX":F
    .restart local v16    # "ratioY":F
    .restart local v17    # "rect":Landroid/graphics/Rect;
    .restart local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "src":Landroid/graphics/Rect;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .restart local v24    # "targetGridHeight":I
    .restart local v25    # "targetGridWidth":I
    .restart local v27    # "x":I
    .restart local v28    # "xEnd":I
    .restart local v29    # "xStart":I
    .restart local v30    # "xTargetStart":I
    .restart local v31    # "y":I
    .restart local v32    # "yEnd":I
    .restart local v33    # "yStart":I
    .restart local v34    # "yTargetStart":I
    :cond_12
    if-eqz v6, :cond_13

    .line 981
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_13
    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_6

    .line 979
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v35

    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v20    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_a

    .line 982
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "dstHeight":I
    .end local v9    # "dstWidth":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "orientation":I
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    .end local v17    # "rect":Landroid/graphics/Rect;
    .end local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v24    # "targetGridHeight":I
    .end local v25    # "targetGridWidth":I
    .end local v27    # "x":I
    .end local v28    # "xEnd":I
    .end local v29    # "xStart":I
    .end local v30    # "xTargetStart":I
    .end local v31    # "y":I
    .end local v32    # "yEnd":I
    .end local v33    # "yStart":I
    .end local v34    # "yTargetStart":I
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v35

    goto :goto_8

    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v35

    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_8

    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v35

    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v20    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_7
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1199
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
    .line 1179
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 38
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1222
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_3

    const/16 v23, 0x1

    .line 1225
    .local v23, "isOpaque":Z
    :goto_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v21

    .line 1226
    .local v21, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v22

    .line 1229
    .local v22, "isJfifHeader":Z
    if-nez p1, :cond_0

    .line 1230
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1231
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_4

    :cond_1
    const/16 v34, 0x1

    .line 1234
    .local v34, "swapWidthHeight":Z
    :goto_1
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1235
    .local v25, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 1236
    const/4 v5, 0x0

    const/16 v32, 0x0

    .local v32, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v33, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1238
    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .local v33, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1244
    if-eqz v33, :cond_2

    :try_start_3
    invoke-virtual/range {v33 .. v33}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    if-eqz v5, :cond_8

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1241
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Throwable;
    move-object/from16 v32, v33

    .line 1242
    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_5
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 1243
    const/4 v4, 0x0

    return-object v4

    .line 1222
    .end local v18    # "e":Ljava/lang/Throwable;
    .end local v21    # "isGifHeader":Z
    .end local v22    # "isJfifHeader":Z
    .end local v23    # "isOpaque":Z
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v34    # "swapWidthHeight":Z
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "isOpaque":Z
    goto :goto_0

    .line 1231
    .restart local v21    # "isGifHeader":Z
    .restart local v22    # "isJfifHeader":Z
    :cond_4
    const/16 v34, 0x0

    .restart local v34    # "swapWidthHeight":Z
    goto :goto_1

    .line 1244
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v5

    goto :goto_2

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v32    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_4
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v37, v5

    move-object v5, v4

    move-object/from16 v4, v37

    :goto_5
    if-eqz v32, :cond_5

    :try_start_7
    invoke-virtual/range {v32 .. v32}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_6
    if-eqz v5, :cond_7

    :try_start_8
    throw v5

    .line 1241
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 1244
    .end local v18    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_6

    :cond_6
    if-eq v5, v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 1247
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_8
    :try_start_9
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v28, v0

    .line 1248
    .local v28, "originalWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 1249
    .local v27, "originalHeight":I
    if-lez v28, :cond_9

    if-gtz v27, :cond_a

    .line 1251
    :cond_9
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to get bitmap size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/4 v4, 0x0

    return-object v4

    .line 1254
    :cond_a
    if-eqz v34, :cond_b

    .line 1256
    move/from16 v36, p2

    .line 1257
    .local v36, "temp":I
    move/from16 p2, p3

    .line 1258
    move/from16 p3, v36

    .line 1262
    .end local v36    # "temp":I
    :cond_b
    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1263
    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1264
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1265
    .local v30, "ratioX":F
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1266
    .local v31, "ratioY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1267
    .local v29, "ratio":F
    move/from16 v0, v28

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v0, v4

    move/from16 v16, v0

    .line 1268
    .local v16, "decodeWidth":I
    move/from16 v0, v27

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v14, v4

    .line 1271
    .local v14, "decodeHeight":I
    mul-int v15, v16, v14

    .line 1272
    .local v15, "decodePixelCount":I
    mul-int v35, p2, p3

    .line 1275
    .local v35, "targetPixelCount":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1276
    .local v12, "cropRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1277
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1278
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1279
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_c

    .line 1280
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1281
    :cond_c
    const/16 v20, 0x0

    .line 1282
    .local v20, "isCropped":Z
    if-eqz v21, :cond_11

    .line 1285
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v24

    .line 1286
    .local v24, "movie":Landroid/graphics/Movie;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 1287
    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1288
    .local v26, "originalBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 1329
    .end local v24    # "movie":Landroid/graphics/Movie;
    :goto_8
    if-nez v20, :cond_d

    .line 1331
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1332
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1333
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1334
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v13, v4

    .line 1335
    .local v13, "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v11, v4

    .line 1336
    .local v11, "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1337
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1341
    .end local v11    # "cropHeight":I
    .end local v13    # "cropWidth":I
    :cond_d
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1342
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_e

    if-eqz v22, :cond_13

    .line 1346
    :cond_e
    :goto_9
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1347
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v12, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1350
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1352
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1353
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1354
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1356
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_f
    return-object v3

    .line 1277
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "isCropped":Z
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1290
    .restart local v20    # "isCropped":Z
    :cond_11
    div-int/lit8 v4, v15, 0x2

    move/from16 v0, v35

    if-gt v0, v4, :cond_12

    .line 1293
    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1294
    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1295
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1296
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v13, v4

    .line 1297
    .restart local v13    # "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v11, v4

    .line 1298
    .restart local v11    # "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1299
    sub-int v4, v28, v13

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v27, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1302
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v17

    .line 1305
    .local v17, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_a
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v26

    .line 1314
    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1318
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 1319
    const/16 v20, 0x1

    goto/16 :goto_8

    .line 1308
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v18

    .line 1309
    .restart local v18    # "e":Ljava/lang/Throwable;
    :try_start_c
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode bitmap region"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1310
    const/4 v4, 0x0

    .line 1314
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1310
    return-object v4

    .line 1313
    .end local v18    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 1314
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1313
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 1359
    .end local v11    # "cropHeight":I
    .end local v12    # "cropRect":Landroid/graphics/Rect;
    .end local v13    # "cropWidth":I
    .end local v14    # "decodeHeight":I
    .end local v15    # "decodePixelCount":I
    .end local v16    # "decodeWidth":I
    .end local v17    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v20    # "isCropped":Z
    .end local v21    # "isGifHeader":Z
    .end local v22    # "isJfifHeader":Z
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v27    # "originalHeight":I
    .end local v28    # "originalWidth":I
    .end local v29    # "ratio":F
    .end local v30    # "ratioX":F
    .end local v31    # "ratioY":F
    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v34    # "swapWidthHeight":Z
    .end local v35    # "targetPixelCount":I
    :catch_6
    move-exception v19

    .line 1360
    .local v19, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1361
    const/4 v4, 0x0

    return-object v4

    .line 1324
    .end local v19    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "cropRect":Landroid/graphics/Rect;
    .restart local v14    # "decodeHeight":I
    .restart local v15    # "decodePixelCount":I
    .restart local v16    # "decodeWidth":I
    .restart local v20    # "isCropped":Z
    .restart local v21    # "isGifHeader":Z
    .restart local v22    # "isJfifHeader":Z
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v27    # "originalHeight":I
    .restart local v28    # "originalWidth":I
    .restart local v29    # "ratio":F
    .restart local v30    # "ratioX":F
    .restart local v31    # "ratioY":F
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v34    # "swapWidthHeight":Z
    .restart local v35    # "targetPixelCount":I
    :cond_12
    :try_start_e
    move/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v14}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1325
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .line 1342
    .restart local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_13
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v4, :cond_e

    .line 1343
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_9

    .line 1244
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "cropRect":Landroid/graphics/Rect;
    .end local v14    # "decodeHeight":I
    .end local v15    # "decodePixelCount":I
    .end local v16    # "decodeWidth":I
    .end local v20    # "isCropped":Z
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v27    # "originalHeight":I
    .end local v28    # "originalWidth":I
    .end local v29    # "ratio":F
    .end local v30    # "ratioX":F
    .end local v31    # "ratioY":F
    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v35    # "targetPixelCount":I
    .restart local v32    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    goto/16 :goto_5

    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v4

    move-object/from16 v32, v33

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .local v32, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_5

    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_7
    move-exception v4

    move-object/from16 v32, v33

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v32    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_4
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1051
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1088
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_4

    const/16 v22, 0x1

    .line 1089
    .local v22, "useEmbeddedThumbOnly":Z
    :goto_0
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    .line 1090
    .local v18, "preferQualityOverSpeed":Z
    :goto_1
    const/4 v9, 0x0

    .line 1091
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_7

    .line 1093
    if-nez v22, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_7

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_7

    .line 1097
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1101
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1104
    .local v9, "orientation":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v21

    .line 1105
    .local v21, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1106
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1107
    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1108
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 1110
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 1111
    .local v20, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1112
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1116
    .end local v20    # "temp":I
    :cond_2
    if-nez v22, :cond_3

    .line 1117
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_6

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_6

    .line 1120
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1121
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1122
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1123
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1124
    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1125
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 1127
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    .line 1128
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 1088
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "preferQualityOverSpeed":Z
    .end local v21    # "thumbData":[B
    .end local v22    # "useEmbeddedThumbOnly":Z
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "useEmbeddedThumbOnly":Z
    goto/16 :goto_0

    .line 1089
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "preferQualityOverSpeed":Z
    goto/16 :goto_1

    .line 1118
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v21    # "thumbData":[B
    :cond_6
    if-nez v18, :cond_7

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    move/from16 v0, p1

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    move/from16 v0, p2

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gez v3, :cond_3

    .line 1150
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "thumbData":[B
    :cond_7
    :goto_3
    if-eqz v22, :cond_a

    .line 1151
    const/4 v3, 0x0

    return-object v3

    .line 1122
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v21    # "thumbData":[B
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 1129
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1136
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1139
    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1140
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1141
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 1133
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_0
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    goto :goto_4

    .line 1154
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "thumbData":[B
    :cond_a
    const/4 v4, 0x0

    const/16 v19, 0x0

    .local v19, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 1156
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1157
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_b

    .line 1158
    const-string/jumbo v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1165
    :cond_b
    if-eqz v8, :cond_c

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1162
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 1163
    .local v15, "ex":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1164
    const/4 v3, 0x0

    return-object v3

    .line 1165
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_5

    .line 1159
    :cond_d
    return-object v14

    .line 1165
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object/from16 v8, v19

    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v23, v4

    move-object v4, v3

    move-object/from16 v3, v23

    :goto_7
    if-eqz v8, :cond_e

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_e
    :goto_8
    if-eqz v4, :cond_10

    :try_start_7
    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_f

    move-object v4, v5

    goto :goto_8

    :cond_f
    if-eq v4, v5, :cond_e

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_10
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v8, v19

    .restart local v8    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v19    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    goto :goto_7

    :catch_4
    move-exception v3

    goto :goto_6

    .line 1147
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v15

    .restart local v15    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_3

    .line 1129
    nop

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
    .line 1065
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
    .line 997
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x0

    .line 1031
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1033
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .local v2, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1038
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1036
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1037
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v5

    .line 1038
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1033
    :cond_1
    return-object v4

    .line 1038
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 1036
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1038
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-eq v4, v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public static decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOrientation(Ljava/io/InputStream;)I
    .locals 21
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1393
    if-nez p0, :cond_0

    .line 1395
    const-string/jumbo v13, "ImageUtils"

    const-string/jumbo v14, "decodeOrientation() - No stream to check"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const/4 v13, 0x0

    return v13

    .line 1400
    :cond_0
    const/4 v15, 0x0

    const/4 v11, 0x0

    .local v11, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v12, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1403
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .local v12, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v7, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1404
    .local v7, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v10, Lcom/oneplus/base/SimpleRef;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1405
    .local v10, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v6

    .line 1406
    .local v6, "fromTiff":Z
    if-eqz v6, :cond_4

    .line 1407
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1410
    .end local v6    # "fromTiff":Z
    :goto_0
    if-eqz v6, :cond_e

    .line 1413
    invoke-interface {v7}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v18

    sub-long v8, v16, v18

    .line 1416
    .local v8, "headerOffset":J
    const/4 v14, 0x0

    const/4 v3, 0x0

    .local v3, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_2
    new-instance v4, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1418
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v4, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1420
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v13

    sget-object v16, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_9

    .line 1422
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v13

    const/16 v16, 0x112

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 1424
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 1425
    .local v2, "data":[I
    if-eqz v2, :cond_9

    array-length v13, v2

    if-lez v13, :cond_9

    .line 1426
    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-static {v13}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v13

    .line 1433
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_1
    if-eqz v14, :cond_6

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1440
    .end local v2    # "data":[I
    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v8    # "headerOffset":J
    .end local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v20, v14

    move-object v14, v13

    move-object/from16 v13, v20

    :goto_3
    if-eqz v11, :cond_3

    :try_start_7
    invoke-virtual {v11}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9

    :cond_3
    :goto_4
    if-eqz v14, :cond_11

    :try_start_8
    throw v14
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 1437
    :catch_1
    move-exception v5

    .line 1438
    .local v5, "ex":Ljava/lang/Throwable;
    :goto_5
    const-string/jumbo v13, "ImageUtils"

    const-string/jumbo v14, "decodeOrientation() - Unknown error"

    invoke-static {v13, v14, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1439
    const/4 v13, 0x0

    return v13

    .line 1409
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "fromTiff":Z
    .restart local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_4
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-static {v0, v7, v10}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .local v6, "fromTiff":Z
    goto :goto_0

    .line 1433
    .end local v6    # "fromTiff":Z
    .restart local v2    # "data":[I
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "headerOffset":J
    :catch_2
    move-exception v14

    goto :goto_1

    .line 1440
    :cond_6
    if-eqz v12, :cond_7

    :try_start_a
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_7
    :goto_6
    if-eqz v15, :cond_8

    :try_start_b
    throw v15
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 1437
    .end local v2    # "data":[I
    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v8    # "headerOffset":J
    :catch_3
    move-exception v5

    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object v11, v12

    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .local v11, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_5

    .line 1440
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "data":[I
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "headerOffset":J
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_4
    move-exception v15

    goto :goto_6

    .line 1426
    :cond_8
    return v13

    .line 1433
    .end local v2    # "data":[I
    :cond_9
    if-eqz v4, :cond_a

    :try_start_c
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_a
    :goto_7
    if-eqz v14, :cond_e

    :try_start_d
    throw v14
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1440
    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v8    # "headerOffset":J
    .end local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_1
    move-exception v13

    move-object v14, v15

    move-object v11, v12

    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v11    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3

    .line 1433
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v8    # "headerOffset":J
    .restart local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v14

    goto :goto_7

    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_6
    move-exception v13

    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_8
    :try_start_e
    throw v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v14

    move-object/from16 v20, v14

    move-object v14, v13

    move-object/from16 v13, v20

    :goto_9
    if-eqz v3, :cond_b

    :try_start_f
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_b
    :goto_a
    if-eqz v14, :cond_d

    :try_start_10
    throw v14

    :catch_7
    move-exception v16

    if-nez v14, :cond_c

    move-object/from16 v14, v16

    goto :goto_a

    :cond_c
    move-object/from16 v0, v16

    if-eq v14, v0, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_d
    throw v13
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1440
    .end local v8    # "headerOffset":J
    :cond_e
    if-eqz v12, :cond_f

    :try_start_11
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_f
    :goto_b
    if-eqz v15, :cond_12

    :try_start_12
    throw v15
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    :catch_8
    move-exception v15

    goto :goto_b

    .end local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v15

    if-nez v14, :cond_10

    move-object v14, v15

    goto :goto_4

    :cond_10
    if-eq v14, v15, :cond_3

    :try_start_13
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_11
    throw v13
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    .line 1443
    .restart local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_12
    const/4 v13, 0x0

    return v13

    .line 1440
    .end local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .local v11, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v13

    move-object v14, v15

    goto :goto_3

    :catch_a
    move-exception v13

    goto/16 :goto_2

    .line 1433
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v8    # "headerOffset":J
    .restart local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v13

    goto :goto_9

    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catchall_5
    move-exception v13

    move-object v3, v4

    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v3, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_9

    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_b
    move-exception v13

    move-object v3, v4

    .end local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto :goto_8
.end method

.method public static decodeOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1373
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1375
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    .line 1381
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1378
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1379
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeOrientation() - Fail to access file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1380
    const/4 v3, 0x0

    return v3

    .line 1381
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1375
    :cond_1
    return v3

    .line 1381
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 1378
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1381
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decodeSize(Ljava/io/InputStream;)Landroid/util/Size;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1648
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;I)Landroid/util/Size;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "flags"    # I

    .prologue
    .line 1663
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    .locals 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 1691
    if-nez p0, :cond_0

    .line 1693
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v7, "decodeSize() - No stream"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    return-object v8

    .line 1696
    :cond_0
    const/4 v3, 0x0

    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v4, Lcom/oneplus/io/StreamState;

    invoke-direct {v4, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1699
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v4, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v5, 0x0

    .line 1700
    .local v5, "swapWidthHeight":Z
    and-int/lit8 v6, p2, 0x20

    if-nez v6, :cond_2

    .line 1702
    :try_start_1
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v0

    .line 1703
    .local v0, "decodedOrientation":I
    const/16 v6, 0x5a

    if-eq v0, v6, :cond_1

    const/16 v6, 0x10e

    if-ne v0, v6, :cond_4

    :cond_1
    const/4 v5, 0x1

    .line 1704
    :goto_0
    if-eqz p1, :cond_2

    .line 1705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1709
    .end local v0    # "decodedOrientation":I
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1710
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1711
    const/4 v6, 0x0

    invoke-static {p0, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1714
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v6, :cond_9

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v6, :cond_9

    .line 1716
    if-eqz v5, :cond_6

    .line 1717
    new-instance v7, Landroid/util/Size;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v7, v6, v9}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1726
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_5

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1723
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v4

    .line 1724
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v5    # "swapWidthHeight":Z
    :goto_2
    const-string/jumbo v6, "ImageUtils"

    const-string/jumbo v7, "decodeSize() - Fail to decode"

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1725
    return-object v8

    .line 1703
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "decodedOrientation":I
    .restart local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v5    # "swapWidthHeight":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1726
    .end local v0    # "decodedOrientation":I
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 1717
    :cond_5
    return-object v7

    .line 1718
    :cond_6
    :try_start_4
    new-instance v7, Landroid/util/Size;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v7, v6, v9}, Landroid/util/Size;-><init>(II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1726
    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_8

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v6

    goto :goto_3

    .line 1718
    :cond_8
    return-object v7

    .line 1726
    :cond_9
    if-eqz v4, :cond_a

    :try_start_7
    invoke-virtual {v4}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    move-object v6, v8

    :goto_4
    if-eqz v6, :cond_b

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_3
    move-exception v6

    goto :goto_4

    .line 1720
    :cond_b
    return-object v8

    .line 1726
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v5    # "swapWidthHeight":Z
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_4
    move-exception v6

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_5
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_6
    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :cond_c
    :goto_7
    if-eqz v7, :cond_e

    :try_start_b
    throw v7

    .line 1723
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 1726
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_6
    move-exception v9

    if-nez v7, :cond_d

    move-object v7, v9

    goto :goto_7

    :cond_d
    if-eq v7, v9, :cond_c

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    throw v6
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v6

    move-object v7, v8

    goto :goto_6

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v5    # "swapWidthHeight":Z
    :catchall_2
    move-exception v6

    move-object v7, v8

    move-object v3, v4

    .end local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_6

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_7
    move-exception v6

    move-object v3, v4

    .end local v4    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_5
.end method

.method public static decodeSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1586
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;I)Landroid/util/Size;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 1601
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 1613
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1629
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1631
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2, p1, p2}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1637
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1634
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1635
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decodeSize() - Fail to open \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1636
    return-object v5

    .line 1637
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1631
    :cond_1
    return-object v4

    .line 1637
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 1634
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1637
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-eq v4, v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decodeTakenTime(Ljava/io/InputStream;)J
    .locals 31
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1472
    if-nez p0, :cond_0

    .line 1474
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v25, "decodeTakenTime() - No stream to check"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-wide/16 v24, 0x0

    return-wide v24

    .line 1479
    :cond_0
    const/16 v26, 0x0

    const/16 v22, 0x0

    .local v22, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v23, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1482
    .end local v22    # "streamState":Lcom/oneplus/io/StreamState;
    .local v23, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v11, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1483
    .local v11, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v17, Lcom/oneplus/base/SimpleRef;

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1484
    .local v17, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v10

    .line 1485
    .local v10, "fromTiff":Z
    const-wide/16 v12, 0x0

    .line 1486
    .local v12, "gpstime":J
    const-wide/16 v20, 0x0

    .line 1487
    .local v20, "origintime":J
    if-eqz v10, :cond_2

    .line 1488
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v11, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1491
    .end local v10    # "fromTiff":Z
    :goto_0
    if-eqz v10, :cond_f

    .line 1494
    invoke-interface {v11}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v28

    sub-long v14, v24, v28

    .line 1497
    .local v14, "headerOffset":J
    const/16 v25, 0x0

    const/4 v7, 0x0

    .local v7, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :try_start_2
    new-instance v8, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14, v15}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1499
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v8, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1501
    invoke-static {}, Lcom/oneplus/media/ImageUtils;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v24

    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v27

    aget v24, v24, v27

    packed-switch v24, :pswitch_data_0

    goto :goto_1

    .line 1504
    :pswitch_0
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v24

    const v27, 0x9003

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1506
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1507
    .local v3, "dateTime":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1509
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v24, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1512
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v20

    goto :goto_1

    .line 1490
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v14    # "headerOffset":J
    .restart local v10    # "fromTiff":Z
    :cond_2
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v10

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    .local v10, "fromTiff":Z
    goto :goto_0

    .line 1515
    .end local v10    # "fromTiff":Z
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "dateTime":Ljava/lang/String;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v14    # "headerOffset":J
    :catch_0
    move-exception v6

    .line 1516
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v27, "decodeTakenTime() - Error when parse date time original"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 1566
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v24

    move-object v7, v8

    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_2
    :try_start_7
    throw v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v25

    move-object/from16 v30, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v30

    :goto_3
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :goto_4
    if-eqz v25, :cond_e

    :try_start_9
    throw v25
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1575
    .end local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "gpstime":J
    .end local v14    # "headerOffset":J
    .end local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v20    # "origintime":J
    :catch_2
    move-exception v24

    move-object/from16 v22, v23

    .end local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_5
    :try_start_a
    throw v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v25

    move-object/from16 v30, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v30

    :goto_6
    if-eqz v22, :cond_5

    :try_start_b
    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :cond_5
    :goto_7
    if-eqz v25, :cond_14

    :try_start_c
    throw v25
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 1572
    :catch_3
    move-exception v9

    .line 1573
    .local v9, "ex":Ljava/lang/Throwable;
    :goto_8
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v25, "decodeTakenTime() - Unknown error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1574
    const-wide/16 v24, 0x0

    return-wide v24

    .line 1524
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "gpstime":J
    .restart local v14    # "headerOffset":J
    .restart local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v20    # "origintime":J
    .restart local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :pswitch_1
    :try_start_d
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v24

    const/16 v27, 0x1d

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1526
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1527
    .restart local v3    # "dateTime":Ljava/lang/String;
    const-string/jumbo v24, "ImageUtils"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "decodeTakenTime() - ENTRY_ID_GPS_DATE_STAMP: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1530
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v24, "yyyy:MM:dd"

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1533
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-wide v4

    .line 1534
    .local v4, "dateInMillies":J
    add-long/2addr v12, v4

    goto/16 :goto_1

    .line 1537
    .end local v4    # "dateInMillies":J
    :catch_4
    move-exception v6

    .line 1538
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v27, "decodeTakenTime() - Error when parse GPS date stamp"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1566
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v24

    move-object v7, v8

    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v7, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto/16 :goto_3

    .line 1543
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_6
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v24

    const/16 v27, 0x7

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1545
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v19

    .line 1546
    .local v19, "rationals":[Landroid/util/Rational;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_1

    .line 1548
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1550
    aget-object v24, v19, v16

    invoke-virtual/range {v24 .. v24}, Landroid/util/Rational;->getNumerator()I

    move-result v18

    .line 1551
    .local v18, "numberator":I
    if-nez v16, :cond_8

    .line 1552
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v24, v0

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    .line 1548
    :cond_7
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1553
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1554
    mul-int/lit8 v24, v18, 0x3c

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    goto :goto_a

    .line 1555
    :cond_9
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1556
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    goto :goto_a

    .line 1558
    .end local v18    # "numberator":I
    :cond_a
    const-string/jumbo v24, "ImageUtils"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "decodeTakenTime() - ENTRY_ID_GPS_TIME_STAMP: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    .line 1566
    .end local v16    # "i":I
    .end local v19    # "rationals":[Landroid/util/Rational;
    :cond_b
    if-eqz v8, :cond_c

    :try_start_10
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_c
    :goto_b
    if-eqz v25, :cond_f

    :try_start_11
    throw v25

    .line 1575
    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v12    # "gpstime":J
    .end local v14    # "headerOffset":J
    .end local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v20    # "origintime":J
    :catchall_3
    move-exception v24

    move-object/from16 v25, v26

    move-object/from16 v22, v23

    .end local v23    # "streamState":Lcom/oneplus/io/StreamState;
    .local v22, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_6

    .line 1566
    .end local v22    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "gpstime":J
    .restart local v14    # "headerOffset":J
    .restart local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v20    # "origintime":J
    .restart local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v25

    goto :goto_b

    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_6
    move-exception v27

    if-nez v25, :cond_d

    move-object/from16 v25, v27

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_e
    throw v24
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1569
    .end local v14    # "headerOffset":J
    :cond_f
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-lez v24, :cond_11

    .line 1575
    .end local v12    # "gpstime":J
    :goto_c
    if-eqz v23, :cond_10

    :try_start_12
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :cond_10
    :goto_d
    if-eqz v26, :cond_12

    :try_start_13
    throw v26
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 1572
    :catch_7
    move-exception v9

    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object/from16 v22, v23

    .end local v23    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v22    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_8

    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v22    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v12    # "gpstime":J
    .restart local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_11
    move-wide/from16 v12, v20

    .line 1569
    goto :goto_c

    .line 1575
    .end local v12    # "gpstime":J
    :catch_8
    move-exception v26

    goto :goto_d

    .line 1569
    :cond_12
    return-wide v12

    .line 1575
    .end local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v20    # "origintime":J
    .end local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v26

    if-nez v25, :cond_13

    move-object/from16 v25, v26

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_5

    :try_start_14
    invoke-virtual/range {v25 .. v26}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_14
    throw v24
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    .local v22, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v24

    move-object/from16 v25, v26

    goto/16 :goto_6

    :catch_a
    move-exception v24

    goto/16 :goto_5

    .line 1566
    .end local v22    # "streamState":Lcom/oneplus/io/StreamState;
    .local v7, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v11    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v12    # "gpstime":J
    .restart local v14    # "headerOffset":J
    .restart local v17    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v20    # "origintime":J
    .restart local v23    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v24

    goto/16 :goto_3

    :catch_b
    move-exception v24

    goto/16 :goto_2

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decodeTakenTime(Ljava/lang/String;)J
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1454
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1456
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v6

    .line 1462
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1459
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1460
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeTakenTime() - Fail to access file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1461
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1462
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1456
    :cond_1
    return-wide v6

    .line 1462
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 1459
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1462
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1733
    packed-switch p0, :pswitch_data_0

    .line 1745
    const/4 v0, 0x0

    return v0

    .line 1737
    :pswitch_0
    const/16 v0, 0xb4

    return v0

    .line 1740
    :pswitch_1
    const/16 v0, 0x5a

    return v0

    .line 1743
    :pswitch_2
    const/16 v0, 0x10e

    return v0

    .line 1733
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

.method private static fillOuterPixels(Landroid/graphics/Bitmap;)Z
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 1753
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1754
    :cond_0
    return v11

    .line 1755
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1756
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1757
    .local v1, "height":I
    if-lt v6, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 1758
    :cond_2
    return v11

    .line 1759
    :cond_3
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->lockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1764
    .local v3, "pixelBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {}, Lcom/oneplus/media/ImageUtils;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v10

    aget v9, v9, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v9, :pswitch_data_0

    .line 1810
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 1775
    return v11

    .line 1767
    :pswitch_0
    const/4 v0, 0x2

    .line 1778
    .local v0, "bytesPerPixel":I
    :goto_0
    mul-int v5, v6, v0

    .line 1779
    .local v5, "stride":I
    :try_start_1
    new-array v4, v5, [B

    .line 1780
    .local v4, "row":[B
    new-array v2, v0, [B

    .line 1783
    .local v2, "pixel":[B
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1784
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1785
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1786
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1789
    add-int/lit8 v9, v1, -0x2

    mul-int/2addr v9, v5

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1790
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1791
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1794
    const/4 v7, 0x0

    .local v7, "y":I
    const/4 v8, 0x0

    .local v8, "yPixelOffset":I
    :goto_1
    if-ge v7, v1, :cond_4

    .line 1797
    add-int v9, v8, v0

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1798
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1799
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1800
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1803
    add-int/lit8 v9, v6, -0x2

    mul-int/2addr v9, v0

    add-int/2addr v9, v8

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1804
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1805
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v5

    goto :goto_1

    .line 1771
    .end local v0    # "bytesPerPixel":I
    .end local v2    # "pixel":[B
    .end local v4    # "row":[B
    .end local v5    # "stride":I
    .end local v7    # "y":I
    .end local v8    # "yPixelOffset":I
    :pswitch_1
    const/4 v0, 0x4

    .line 1772
    .restart local v0    # "bytesPerPixel":I
    goto :goto_0

    .line 1810
    .restart local v2    # "pixel":[B
    .restart local v4    # "row":[B
    .restart local v5    # "stride":I
    .restart local v7    # "y":I
    .restart local v8    # "yPixelOffset":I
    :cond_4
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 1812
    const/4 v9, 0x1

    return v9

    .line 1809
    .end local v0    # "bytesPerPixel":I
    .end local v2    # "pixel":[B
    .end local v4    # "row":[B
    .end local v5    # "stride":I
    .end local v7    # "y":I
    .end local v8    # "yPixelOffset":I
    :catchall_0
    move-exception v9

    .line 1810
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 1809
    throw v9

    .line 1764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    .locals 19
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
    .line 1826
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 1828
    const-string/jumbo v11, "ImageUtils"

    const-string/jumbo v14, "findTiffHeader() - No stream"

    invoke-static {v11, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const/4 v11, 0x0

    return v11

    .line 1831
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1833
    const-string/jumbo v11, "ImageUtils"

    const-string/jumbo v14, "findTiffHeader() - No reference to receive result"

    invoke-static {v11, v14}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const/4 v11, 0x0

    return v11

    .line 1838
    :cond_1
    const-wide/16 v12, 0x0

    .line 1839
    .local v12, "tiffPosition":J
    const/4 v14, 0x0

    const/4 v3, 0x0

    .local v3, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    const/4 v8, 0x0

    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v4, Lcom/oneplus/io/BufferedInputStream;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1840
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .local v4, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :try_start_1
    new-instance v9, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1843
    .local v9, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v11, 0x1003

    :try_start_2
    new-array v2, v11, [B

    .line 1847
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "buffer":[B
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-nez v11, :cond_7

    .line 1849
    const/4 v11, 0x0

    const/16 v15, 0x1000

    invoke-virtual {v4, v2, v11, v15}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 1850
    .local v7, "realCount":I
    move v10, v7

    .line 1857
    .local v10, "tail":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    add-int/lit8 v11, v10, -0x3

    if-ge v6, v11, :cond_a

    .line 1859
    move-object/from16 v0, p2

    invoke-static {v2, v6, v0}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1861
    if-eqz p1, :cond_3

    .line 1862
    invoke-virtual {v9}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v16

    add-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1863
    :cond_3
    const/4 v15, 0x1

    .line 1877
    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v9}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    move-object v11, v14

    :cond_6
    :goto_3
    if-eqz v11, :cond_8

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 1874
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Throwable;
    move-object v8, v9

    .end local v9    # "streamState":Lcom/oneplus/io/StreamState;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    move-object v3, v4

    .line 1875
    .end local v2    # "buffer":[B
    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v6    # "i":I
    .end local v7    # "realCount":I
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v10    # "tail":I
    :goto_4
    const-string/jumbo v11, "ImageUtils"

    const-string/jumbo v14, "findTiffHeader() - Unknown error"

    invoke-static {v11, v14, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1876
    const/4 v11, 0x0

    return v11

    .line 1854
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "buffer":[B
    .restart local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v9    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_7
    const/4 v11, 0x3

    const/16 v15, 0x1000

    :try_start_6
    invoke-virtual {v4, v2, v11, v15}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v7

    .line 1855
    .restart local v7    # "realCount":I
    add-int/lit8 v10, v7, 0x3

    .restart local v10    # "tail":I
    goto :goto_0

    .line 1877
    .restart local v6    # "i":I
    :catch_1
    move-exception v14

    goto :goto_2

    :catch_2
    move-exception v11

    if-eqz v14, :cond_6

    if-eq v14, v11, :cond_5

    :try_start_7
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-object v11, v14

    goto :goto_3

    .line 1863
    :cond_8
    return v15

    .line 1865
    :cond_9
    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    .line 1857
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1867
    :cond_a
    const/16 v11, 0x1000

    if-ge v7, v11, :cond_f

    .line 1868
    const/4 v15, 0x0

    .line 1877
    if-eqz v9, :cond_b

    :try_start_8
    invoke-virtual {v9}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_c
    move-object v11, v14

    :cond_d
    :goto_6
    if-eqz v11, :cond_e

    :try_start_a
    throw v11

    :catch_3
    move-exception v14

    goto :goto_5

    :catch_4
    move-exception v11

    if-eqz v14, :cond_d

    if-eq v14, v11, :cond_c

    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    move-object v11, v14

    goto :goto_6

    .line 1868
    :cond_e
    return v15

    .line 1869
    :cond_f
    const/4 v6, 0x0

    :goto_7
    const/4 v11, 0x3

    if-ge v6, v11, :cond_2

    .line 1870
    rsub-int/lit8 v11, v6, 0x3

    sub-int v11, v10, v11

    :try_start_b
    aget-byte v11, v2, v11

    aput-byte v11, v2, v6
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1869
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1877
    .end local v2    # "buffer":[B
    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v6    # "i":I
    .end local v7    # "realCount":I
    .end local v9    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v10    # "tail":I
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v11

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_8
    :try_start_c
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v18, v14

    move-object v14, v11

    move-object/from16 v11, v18

    :goto_9
    if-eqz v8, :cond_10

    :try_start_d
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    :cond_10
    move-object v15, v14

    :cond_11
    :goto_a
    if-eqz v3, :cond_12

    :try_start_e
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :cond_12
    move-object v14, v15

    :cond_13
    :goto_b
    if-eqz v14, :cond_14

    :try_start_f
    throw v14

    .line 1874
    :catch_6
    move-exception v5

    .restart local v5    # "ex":Ljava/lang/Throwable;
    goto :goto_4

    .line 1877
    .end local v5    # "ex":Ljava/lang/Throwable;
    :catch_7
    move-exception v15

    if-eqz v14, :cond_11

    if-eq v14, v15, :cond_10

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v15, v14

    goto :goto_a

    :catch_8
    move-exception v14

    if-eqz v15, :cond_13

    if-eq v15, v14, :cond_12

    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v14, v15

    goto :goto_b

    :cond_14
    throw v11
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v11

    goto :goto_9

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .local v3, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    goto :goto_9

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v9    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "streamState":Lcom/oneplus/io/StreamState;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    move-object v3, v4

    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    goto :goto_9

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v11

    move-object v3, v4

    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    goto :goto_8

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v9    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_a
    move-exception v11

    move-object v8, v9

    .end local v9    # "streamState":Lcom/oneplus/io/StreamState;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    move-object v3, v4

    .end local v4    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    goto :goto_8
.end method

.method public static getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 1907
    if-nez p0, :cond_0

    .line 1909
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "getMimeType() - No stream"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    return-object v6

    .line 1912
    :cond_0
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    invoke-direct {v3, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1915
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v4, 0x8

    :try_start_1
    new-array v1, v4, [B

    .line 1916
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    if-ge v4, v5, :cond_3

    .line 1932
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1929
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 1930
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_1
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "getMimeType() - Cannot save stream position"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1931
    return-object v6

    .line 1932
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1917
    :cond_2
    return-object v6

    .line 1920
    :cond_3
    :try_start_4
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1921
    const-string/jumbo v5, "image/jpeg"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1932
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_5

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v4

    goto :goto_2

    .line 1921
    :cond_5
    return-object v5

    .line 1922
    :cond_6
    :try_start_7
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1923
    const-string/jumbo v5, "image/png"
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1932
    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_8

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_3
    move-exception v4

    goto :goto_3

    .line 1923
    :cond_8
    return-object v5

    .line 1924
    :cond_9
    :try_start_a
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1925
    const-string/jumbo v5, "image/gif"
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1932
    if-eqz v3, :cond_a

    :try_start_b
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    move-object v4, v6

    :goto_4
    if-eqz v4, :cond_b

    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :catch_4
    move-exception v4

    goto :goto_4

    .line 1925
    :cond_b
    return-object v5

    .line 1932
    :cond_c
    if-eqz v3, :cond_d

    :try_start_d
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    :cond_d
    move-object v4, v6

    :goto_5
    if-eqz v4, :cond_e

    :try_start_e
    throw v4
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :catch_5
    move-exception v4

    goto :goto_5

    .line 1926
    :cond_e
    return-object v6

    .line 1932
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_6
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_6
    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_7
    if-eqz v2, :cond_f

    :try_start_10
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    :cond_f
    :goto_8
    if-eqz v5, :cond_11

    :try_start_11
    throw v5

    .line 1929
    :catch_7
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1932
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_8
    move-exception v7

    if-nez v5, :cond_10

    move-object v5, v7

    goto :goto_8

    :cond_10
    if-eq v5, v7, :cond_f

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_11
    throw v4
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_6
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1888
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1890
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1896
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1893
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1894
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMimeType() - Fail to open \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1895
    return-object v5

    .line 1896
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1890
    :cond_1
    return-object v4

    .line 1896
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 1893
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1896
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-eq v4, v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static isGifHeader(Ljava/io/InputStream;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1944
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1946
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x3

    :try_start_1
    new-array v1, v4, [B

    .line 1947
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 1953
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1950
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 1951
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isGifHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1952
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 1947
    goto :goto_0

    .line 1953
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1947
    :cond_2
    return v4

    .line 1953
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 1950
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 1953
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3
.end method

.method public static isGifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1964
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1965
    :cond_0
    return v1

    .line 1966
    :cond_1
    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isJfifHeader(Ljava/io/InputStream;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1978
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1980
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x2

    :try_start_1
    new-array v1, v4, [B

    .line 1981
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 1987
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1984
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 1985
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isJfifHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1986
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 1981
    goto :goto_0

    .line 1987
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1981
    :cond_2
    return v4

    .line 1987
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 1984
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 1987
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3
.end method

.method public static isJfifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1998
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1999
    :cond_0
    return v1

    .line 2000
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isPngHeader(Ljava/io/InputStream;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2012
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2014
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v4, 0x8

    :try_start_1
    new-array v1, v4, [B

    .line 2015
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2021
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2018
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2019
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isPngHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2020
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2015
    goto :goto_0

    .line 2021
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2015
    :cond_2
    return v4

    .line 2021
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 2018
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2021
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3
.end method

.method public static isPngHeader([B)Z
    .locals 5
    .param p0, "header"    # [B

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2032
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 2033
    :cond_0
    return v1

    .line 2034
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x89

    if-ne v2, v3, :cond_3

    .line 2035
    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    .line 2036
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3

    .line 2037
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    .line 2038
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 2039
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3

    .line 2040
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    .line 2041
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_2

    .line 2034
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2041
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2034
    goto :goto_0
.end method

.method public static isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2055
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2057
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x4

    :try_start_1
    new-array v1, v4, [B

    .line 2058
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2064
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2061
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2062
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isTiffHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2063
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2058
    goto :goto_0

    .line 2064
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2058
    :cond_2
    return v4

    .line 2064
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 2061
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2064
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_3
.end method

.method public static isTiffHeader([BILcom/oneplus/base/Ref;)Z
    .locals 6
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/16 v5, 0x4d

    const/16 v4, 0x2a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2089
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2090
    :cond_0
    return v2

    .line 2091
    :cond_1
    if-gez p1, :cond_2

    .line 2092
    const/4 p1, 0x0

    .line 2093
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-le p1, v0, :cond_3

    .line 2094
    array-length v0, p0

    add-int/lit8 p1, v0, -0x4

    .line 2095
    :cond_3
    aget-byte v0, p0, p1

    if-eq v0, v5, :cond_4

    aget-byte v0, p0, p1

    const/16 v1, 0x49

    if-ne v0, v1, :cond_8

    :cond_4
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    aget-byte v1, p0, p1

    if-ne v0, v1, :cond_8

    .line 2097
    aget-byte v0, p0, p1

    if-ne v0, v5, :cond_6

    .line 2099
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_8

    .line 2101
    if-eqz p2, :cond_5

    .line 2102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2103
    :cond_5
    return v3

    .line 2108
    :cond_6
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_8

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_8

    .line 2110
    if-eqz p2, :cond_7

    .line 2111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2112
    :cond_7
    return v3

    .line 2116
    :cond_8
    return v2
.end method

.method public static isTiffHeader([BLcom/oneplus/base/Ref;)Z
    .locals 1
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
    .line 2076
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method public static lockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 2127
    if-nez p0, :cond_0

    .line 2128
    return-object v1

    .line 2130
    :cond_0
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->nativeLockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2133
    :cond_1
    return-object v1
.end method

.method private static native nativeLockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeUnlockPixels(Landroid/graphics/Bitmap;)V
.end method

.method public static parseImage(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/EncodedImage;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 2154
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2155
    :cond_0
    return-object v4

    .line 2158
    :cond_1
    const/4 v1, 0x0

    .line 2159
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2161
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2166
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2164
    .end local v1    # "image":Lcom/oneplus/media/EncodedImage;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseImage() - Error to parse image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2167
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    return-object v1

    .line 2166
    .restart local v1    # "image":Lcom/oneplus/media/EncodedImage;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "stream":Ljava/io/InputStream;
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    :catch_2
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    :try_start_5
    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_2

    :cond_5
    if-eq v4, v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method public static parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 2204
    if-nez p0, :cond_0

    .line 2205
    return-object v1

    .line 2208
    :cond_0
    const/4 v0, 0x0

    .line 2209
    .local v0, "image":Lcom/oneplus/media/EncodedImage;
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2210
    invoke-static {p0}, Lcom/oneplus/media/JfifImage;->create(Ljava/io/InputStream;)Lcom/oneplus/media/JfifImage;

    move-result-object v0

    .line 2213
    .end local v0    # "image":Lcom/oneplus/media/EncodedImage;
    :cond_1
    return-object v0
.end method

.method public static parseImage(Ljava/lang/String;)Lcom/oneplus/media/EncodedImage;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2179
    if-nez p0, :cond_0

    .line 2180
    return-object v5

    .line 2183
    :cond_0
    const/4 v1, 0x0

    .line 2184
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2186
    .end local v2    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 2191
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2189
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2190
    .end local v1    # "image":Lcom/oneplus/media/EncodedImage;
    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    const-string/jumbo v4, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseImage() - Error to parse image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2192
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v1

    .line 2191
    .restart local v1    # "image":Lcom/oneplus/media/EncodedImage;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_2
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_2

    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    .local v2, "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v5, :cond_5

    :try_start_6
    throw v5

    .line 2189
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 2191
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_5

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    .locals 15
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v10, 0x0

    .line 2244
    if-nez p0, :cond_0

    .line 2246
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "readPhotoMetadata() - No stream to check"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    return-object v10

    .line 2251
    :cond_0
    const/4 v6, 0x0

    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v7, Lcom/oneplus/io/StreamState;

    invoke-direct {v7, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2254
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 2255
    .local v4, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 2256
    .local v5, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-static {p0, v5}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v1

    .line 2257
    .local v1, "fromTiff":Z
    if-eqz v1, :cond_2

    .line 2258
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2261
    .end local v1    # "fromTiff":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 2264
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v12

    sub-long v2, v8, v12

    .line 2265
    .local v2, "headerOffset":J
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 2268
    new-instance v9, Lcom/oneplus/media/ExifMetadata;

    invoke-direct {v9, p0}, Lcom/oneplus/media/ExifMetadata;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2275
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v8, v10

    :goto_1
    if-eqz v8, :cond_4

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2272
    .end local v2    # "headerOffset":J
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v6, v7

    .line 2273
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "readPhotoMetadata() - Unknown error"

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2274
    return-object v10

    .line 2260
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "fromTiff":Z
    .restart local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v4, v5}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, "fromTiff":Z
    goto :goto_0

    .line 2275
    .end local v1    # "fromTiff":Z
    .restart local v2    # "headerOffset":J
    :catch_1
    move-exception v8

    goto :goto_1

    .line 2268
    :cond_4
    return-object v9

    .line 2275
    .end local v2    # "headerOffset":J
    :cond_5
    if-eqz v7, :cond_6

    :try_start_5
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    move-object v8, v10

    :goto_3
    if-eqz v8, :cond_a

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v8

    goto :goto_3

    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_3
    move-exception v8

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_4
    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_5
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_6
    if-eqz v9, :cond_9

    :try_start_9
    throw v9

    .line 2272
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2275
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    if-nez v9, :cond_8

    move-object v9, v11

    goto :goto_6

    :cond_8
    if-eq v9, v11, :cond_7

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 2277
    .restart local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_a
    return-object v10

    .line 2275
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_5

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v8

    move-object v9, v10

    move-object v6, v7

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_5

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_6
    move-exception v8

    move-object v6, v7

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_4
.end method

.method public static readPhotoMetadata(Ljava/lang/String;)Lcom/oneplus/media/PhotoMetadata;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2224
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2226
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 2231
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2229
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 2230
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    const-string/jumbo v4, "readPhotoMetadata() - Fail to read file"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    return-object v5

    .line 2231
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 2226
    :cond_1
    return-object v4

    .line 2231
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 2229
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 2231
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-eq v4, v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static removeArgbPaddings(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;)V
    .locals 12
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I
    .param p5, "result"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2292
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 2293
    .local v3, "originalSrcPosition":I
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 2296
    .local v2, "originalResultPosition":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 2297
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    :catchall_0
    move-exception v9

    .line 2335
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2336
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2334
    throw v9

    .line 2298
    :cond_1
    const/4 v9, 0x4

    if-ge p3, v9, :cond_2

    .line 2299
    :try_start_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid pixel stride : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2300
    :cond_2
    mul-int v9, p3, p1

    move/from16 v0, p4

    if-ge v0, v9, :cond_3

    .line 2301
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid row stride : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2302
    :cond_3
    const/4 v9, 0x4

    if-ne p3, v9, :cond_6

    .line 2304
    mul-int/lit8 v1, p1, 0x4

    .line 2305
    .local v1, "minRowStride":I
    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    .line 2306
    move-object/from16 v0, p5

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    .end local v1    # "minRowStride":I
    :cond_4
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2336
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2290
    return-void

    .line 2309
    .restart local v1    # "minRowStride":I
    :cond_5
    :try_start_2
    new-array v6, v1, [B

    .line 2310
    .local v6, "row":[B
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    if-ge v8, p2, :cond_4

    .line 2312
    mul-int v9, v8, p4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2313
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2314
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2310
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2320
    .end local v1    # "minRowStride":I
    .end local v6    # "row":[B
    .end local v8    # "y":I
    :cond_6
    const/4 v9, 0x4

    new-array v4, v9, [B

    .line 2321
    .local v4, "pixel":[B
    const/4 v8, 0x0

    .restart local v8    # "y":I
    :goto_1
    if-ge v8, p2, :cond_4

    .line 2323
    mul-int v5, v8, p4

    .line 2324
    .local v5, "pixelPosition":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    if-ge v7, p1, :cond_7

    .line 2326
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2327
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2328
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2324
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, p3

    goto :goto_2

    .line 2321
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static native rgbaToYuvaAndNv21a([B[BII)V
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 2354
    rem-int/lit16 p1, p1, 0x168

    .line 2355
    if-gez p1, :cond_0

    .line 2356
    add-int/lit16 p1, p1, 0x168

    .line 2357
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 2358
    :cond_1
    return-object p0

    .line 2361
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 2364
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2365
    .local v8, "height":I
    mul-int v0, v12, v8

    mul-int/lit8 v7, v0, 0x4

    .line 2366
    .local v7, "dataSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 2367
    .local v11, "srcPixels":Ljava/nio/IntBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 2368
    .local v10, "rotatedPixels":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2369
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 2370
    invoke-static {v11, v12, v8, v10}, Lcom/oneplus/media/ImageUtils;->rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z

    .line 2371
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2372
    return-object v9

    .line 2376
    .end local v7    # "dataSize":I
    .end local v8    # "height":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "rotatedPixels":Ljava/nio/IntBuffer;
    .end local v11    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v12    # "width":I
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2377
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2378
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateNV21Image([BIII)[B
    .locals 4
    .param p0, "srcYuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "degrees"    # I

    .prologue
    .line 2392
    sparse-switch p3, :sswitch_data_0

    .line 2404
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid rotation degrees : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2395
    :sswitch_0
    return-object p0

    .line 2398
    :sswitch_1
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 2399
    .local v0, "rotatedUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2400
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image90([BII[B)Z

    .line 2401
    :cond_0
    return-object v0

    .line 2392
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method private static native rotateNV21Image90([BII[B)Z
.end method

.method private static native rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z
.end method

.method public static scaleNV21Image([BII[BII)Z
    .locals 4
    .param p0, "srcYuv"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "scaledYuv"    # [B
    .param p4, "scaledWidth"    # I
    .param p5, "scaledHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 2424
    rem-int/lit8 v0, p4, 0x2

    if-nez v0, :cond_0

    rem-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 2426
    :cond_0
    const-string/jumbo v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scaleNV21Image() - scaledWidthL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or scaledHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not divisible by 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    return v3

    .line 2430
    :cond_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 2432
    :cond_2
    const-string/jumbo v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scaleNV21Image() - srcWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or srcHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not divisible by 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    return v3

    .line 2436
    :cond_3
    if-ne p1, p4, :cond_4

    if-ne p2, p5, :cond_4

    .line 2438
    mul-int v0, p4, p5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v3, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2439
    const/4 v0, 0x1

    return v0

    .line 2442
    :cond_4
    array-length v0, p3

    mul-int v1, p4, p5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    .line 2444
    const-string/jumbo v0, "ImageUtils"

    const-string/jumbo v1, "scaleNV21Image() - Invalid YUV data size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    return v3

    .line 2448
    :cond_5
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2449
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    move-result v0

    return v0

    .line 2451
    :cond_6
    return v3
.end method

.method public static scaleNV21Image([BIIII)[B
    .locals 6
    .param p0, "srcYuv"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "scaledWidth"    # I
    .param p4, "scaledHeight"    # I

    .prologue
    .line 2410
    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 2411
    return-object p0

    .line 2412
    :cond_0
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    rem-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 2413
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scaledWidthL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or scaledHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not divisible by 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2415
    :cond_2
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 2416
    .local v3, "scaledYUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 2417
    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    .line 2418
    :cond_3
    return-object v3
.end method

.method private static native scaleNV21ImageNative([BII[BII)Z
.end method

.method public static unlockPixels(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2471
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->nativeUnlockPixels(Landroid/graphics/Bitmap;)V

    .line 2469
    :cond_0
    return-void
.end method
