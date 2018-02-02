.class public final Lcom/oneplus/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

.field public static final FLAG_IGNORE_ERROR_LOG:I = 0x40

.field public static final FLAG_IGNORE_ORIENTATION:I = 0x20

.field public static final FLAG_MUTABLE:I = 0x8

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x2

.field public static final FLAG_OPAQUE:I = 0x10

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x1

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x4

.field private static final LARGE_IMAGE_SIZE_THRESHOLD:I = 0x17d7840

.field private static final MATRIX_RGBA_TO_YUV:Landroid/renderscript/Matrix4f;

.field public static final PHOTO_EXIF_ATTRS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final TIMEOUT_TO_WAIT_LOCKING_FILE:J = 0x4e20L

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x7

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

    const/4 v2, 0x3

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
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 86
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "ApertureValue"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "Copyright"

    aput-object v1, v0, v3

    .line 89
    const-string/jumbo v1, "DateTime"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "DateTimeDigitized"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "DateTimeOriginal"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "ExposureBiasValue"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "ExposureProgram"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "ExposureTime"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "FNumber"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "Flash"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "FocalLength"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "FocalLengthIn35mmFilm"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "GPSAltitude"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "GPSAltitudeRef"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "GPSDateStamp"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "GPSLatitude"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "GPSLatitudeRef"

    aput-object v1, v0, v4

    .line 104
    const-string/jumbo v1, "GPSLongitude"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "GPSLongitudeRef"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "GPSTimeStamp"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "ISOSpeedRatings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "Make"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "MakerNote"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "Model"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "ShutterSpeedValue"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "WhiteBalance"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 86
    sput-object v0, Lcom/oneplus/media/ImageUtils;->PHOTO_EXIF_ATTRS:[Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 119
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 118
    invoke-direct {v0, v1}, Landroid/renderscript/Matrix4f;-><init>([F)V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->MATRIX_RGBA_TO_YUV:Landroid/renderscript/Matrix4f;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    .line 137
    sget-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 51
    return-void

    .line 119
    nop

    :array_0
    .array-data 4
        0x3e991687    # 0.299f
        -0x41d335d2    # -0.16874f
        0x3f000000    # 0.5f
        0x0
        0x3f1645a2    # 0.587f
        -0x41566517    # -0.33126f
        -0x4129a177    # -0.41869f
        0x0
        0x3de978d5    # 0.114f
        0x3f000000    # 0.5f
        -0x42597a25    # -0.08131f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToNV21(Landroid/graphics/Bitmap;[B)V
    .locals 14
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "nv21Buffer"    # [B

    .prologue
    const/4 v13, 0x3

    .line 177
    if-nez p0, :cond_0

    .line 178
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Input image is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 182
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 183
    .local v0, "height":I
    mul-int v3, v5, v0

    .line 184
    .local v3, "pixelCounts":I
    mul-int/lit8 v2, v3, 0x3

    .line 185
    .local v2, "nv21BufferLength":I
    if-nez p1, :cond_1

    .line 186
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "NV21 buffer is empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :cond_1
    array-length v8, p1

    if-ge v8, v2, :cond_2

    .line 188
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

    .line 191
    :cond_2
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->lockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 192
    .local v1, "imageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    new-array v4, v8, [B

    .line 193
    .local v4, "rgbaBuffer":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 194
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 196
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

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 200
    .local v6, "time":J
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 201
    invoke-static {v4, p1, v5, v0}, Lcom/oneplus/media/ImageUtils;->rgbaToYuvaAndNv21a([B[BII)V

    .line 202
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

    .line 174
    return-void
.end method

.method public static bitmapToNV21(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Input image is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 159
    .local v1, "pixelCounts":I
    mul-int/lit8 v2, v1, 0x3

    new-array v0, v2, [B

    .line 162
    .local v0, "nv21Buffer":[B
    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->bitmapToNV21(Landroid/graphics/Bitmap;[B)V

    .line 165
    return-object v0
.end method

.method public static calculateSampleSize(IIII)I
    .locals 1
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 216
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
    .line 231
    const/4 v2, 0x2

    .line 232
    .local v2, "sampleSize":I
    shr-int/lit8 v1, p0, 0x1

    .line 233
    .local v1, "decodeWidth":I
    shr-int/lit8 v0, p1, 0x1

    .line 234
    .local v0, "decodeHeight":I
    :goto_0
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 236
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 237
    shr-int/lit8 v1, v1, 0x1

    .line 238
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
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

    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 255
    .local v6, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 256
    .local v5, "originalHeight":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 257
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 260
    if-ne p1, v6, :cond_0

    if-ne p2, v5, :cond_0

    .line 261
    return-object p0

    .line 264
    :cond_0
    int-to-float v10, v6

    int-to-float v11, p1

    div-float v8, v10, v11

    .line 265
    .local v8, "ratioX":F
    int-to-float v10, v5

    int-to-float v11, p2

    div-float v9, v10, v11

    .line 266
    .local v9, "ratioY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 267
    .local v7, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v7

    float-to-int v3, v10

    .line 268
    .local v3, "cropWidth":I
    int-to-float v10, p2

    mul-float/2addr v10, v7

    float-to-int v1, v10

    .line 269
    .local v1, "cropHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    .local v2, "cropRect":Landroid/graphics/Rect;
    sub-int v10, v6, v3

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v1

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 274
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v11, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 276
    return-object v4
.end method

.method public static checkAnimatable(Ljava/io/InputStream;I)Z
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    return v5

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 296
    .local v0, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_0
    new-instance v1, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v1}, Lcom/oneplus/util/GifDecoder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "decoder":Lcom/oneplus/util/GifDecoder;
    .local v1, "decoder":Lcom/oneplus/util/GifDecoder;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 298
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->frameCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-le v3, v4, :cond_2

    .line 307
    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V

    .line 299
    :cond_1
    return v4

    .line 307
    :cond_2
    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V

    :cond_3
    move-object v0, v1

    .line 310
    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :cond_4
    :goto_0
    return v5

    .line 302
    .restart local v0    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catch_0
    move-exception v2

    .line 303
    .end local v0    # "decoder":Lcom/oneplus/util/GifDecoder;
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v3, "ImageUtils"

    const-string/jumbo v4, "checkAnimatable() - Fail to check GIF duration"

    invoke-static {v3, v4, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v0}, Lcom/oneplus/util/GifDecoder;->release()V

    goto :goto_0

    .line 306
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 307
    :goto_2
    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {v0}, Lcom/oneplus/util/GifDecoder;->release()V

    .line 306
    :cond_5
    throw v3

    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .local v0, "decoder":Lcom/oneplus/util/GifDecoder;
    goto :goto_2

    .line 302
    .end local v0    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/Throwable;
    move-object v0, v1

    .end local v1    # "decoder":Lcom/oneplus/util/GifDecoder;
    .restart local v0    # "decoder":Lcom/oneplus/util/GifDecoder;
    goto :goto_1
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

    .line 328
    invoke-static/range {v0 .. v10}, Lcom/oneplus/media/ImageUtils;->combineNV21Images([BII[B[BIIIIII)V

    .line 326
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
    .line 348
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static/range {p0 .. p10}, Lcom/oneplus/media/ImageUtils;->combineNV21ImagesNative([BII[B[BIIIIII)V

    .line 346
    :cond_0
    return-void
.end method

.method private static native combineNV21ImagesNative([BII[B[BIIIIII)V
.end method

.method public static copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "src"    # Landroid/media/ExifInterface;
    .param p1, "dest"    # Landroid/media/ExifInterface;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 410
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 411
    :cond_0
    return v5

    .line 412
    :cond_1
    if-ne p0, p1, :cond_2

    .line 413
    return v4

    .line 414
    :cond_2
    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    .line 415
    :cond_3
    return v4

    .line 418
    :cond_4
    :try_start_0
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 420
    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 422
    aget-object v3, p2, v1

    invoke-virtual {p1, v3, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 424
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    return v4

    .line 427
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImageUtils"

    const-string/jumbo v4, "copyExif() - Fail to copy EXIF"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    return v5
.end method

.method public static copyExif(Landroid/media/ExifInterface;Ljava/io/File;[Ljava/lang/String;)Z
    .locals 21
    .param p0, "src"    # Landroid/media/ExifInterface;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    .line 443
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 444
    :cond_0
    const/4 v15, 0x0

    return v15

    .line 445
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v15, v0

    if-nez v15, :cond_3

    .line 446
    :cond_2
    const/4 v15, 0x1

    return v15

    .line 450
    :cond_3
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, "destExif":Landroid/media/ExifInterface;
    const/4 v10, 0x0

    .line 452
    .local v10, "exposureTimeStr":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v15, v0

    add-int/lit8 v11, v15, -0x1

    .end local v10    # "exposureTimeStr":Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_6

    .line 454
    aget-object v15, p2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 455
    .local v14, "value":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 457
    const-string/jumbo v15, "ExposureTime"

    aget-object v16, p2, v11

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 458
    move-object v10, v14

    .line 459
    :cond_4
    aget-object v15, p2, v11

    invoke-virtual {v4, v15, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 462
    .end local v14    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 465
    if-eqz v10, :cond_c

    .line 467
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 468
    .local v8, "exposureTime":D
    const/16 v16, 0x0

    const/4 v5, 0x0

    .local v5, "destRaFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v15, "rw"

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    .end local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    .local v6, "destRaFile":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 471
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    new-instance v13, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v13}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 472
    .local v13, "tiffHeaderPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    invoke-static {v2, v13, v15}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/nio/channels/SeekableByteChannel;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 474
    const v3, 0xf4240

    .line 475
    .local v3, "d":I
    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 476
    .local v12, "n":I
    const-string/jumbo v15, "ImageUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "copyExif() - Copy exposure time : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-interface {v13}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 478
    new-instance v15, Landroid/util/Rational;

    invoke-direct {v15, v12, v3}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v15}, Lcom/oneplus/media/ImageUtils;->updateTiffExposureTime(Ljava/nio/channels/SeekableByteChannel;Landroid/util/Rational;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 480
    .end local v3    # "d":I
    .end local v12    # "n":I
    :cond_7
    if-eqz v6, :cond_8

    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_1
    if-eqz v16, :cond_c

    :try_start_4
    throw v16
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 485
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "destExif":Landroid/media/ExifInterface;
    .end local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    .end local v8    # "exposureTime":D
    .end local v11    # "i":I
    .end local v13    # "tiffHeaderPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    :catch_0
    move-exception v7

    .line 486
    .local v7, "ex":Ljava/lang/Throwable;
    const-string/jumbo v15, "ImageUtils"

    const-string/jumbo v16, "copyExif() - Fail to copy EXIF"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    const/4 v15, 0x0

    return v15

    .line 480
    .end local v7    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "destExif":Landroid/media/ExifInterface;
    .restart local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "exposureTime":D
    .restart local v11    # "i":I
    .restart local v13    # "tiffHeaderPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    :catch_1
    move-exception v16

    goto :goto_1

    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    .end local v13    # "tiffHeaderPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v15

    .end local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_5
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_3
    if-eqz v5, :cond_9

    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_4
    if-eqz v16, :cond_b

    :try_start_7
    throw v16

    :catch_3
    move-exception v17

    if-nez v16, :cond_a

    move-object/from16 v16, v17

    goto :goto_4

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    throw v15
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 482
    .end local v8    # "exposureTime":D
    :cond_c
    const/4 v15, 0x1

    return v15

    .line 480
    .restart local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "exposureTime":D
    :catchall_1
    move-exception v15

    goto :goto_3

    .end local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v15

    move-object v5, v6

    .end local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    .local v5, "destRaFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v15

    move-object v5, v6

    .end local v6    # "destRaFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "destRaFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 369
    if-eqz p2, :cond_0

    :try_start_0
    array-length v7, p2

    if-nez v7, :cond_1

    .line 370
    :cond_0
    return v9

    .line 373
    :cond_1
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, "exif":Landroid/media/ExifInterface;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v5, "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, p2

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 377
    aget-object v7, p2, v4

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 379
    aget-object v7, p2, v4

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 381
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 382
    return v9

    .line 385
    :cond_4
    new-instance v3, Landroid/media/ExifInterface;

    .end local v3    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 386
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

    .line 387
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

    .line 394
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .end local v4    # "i":I
    .end local v5    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 395
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

    .line 396
    return v10

    .line 388
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

    .line 391
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
    .line 505
    if-nez p0, :cond_0

    .line 506
    return-object p6

    .line 507
    :cond_0
    mul-int v1, p1, p2

    mul-int/lit8 v0, v1, 0x4

    .line 508
    .local v0, "capacity":I
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 509
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    .line 512
    :goto_0
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->removeArgbPaddings(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;)V

    .line 515
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p1, :cond_5

    .line 516
    :cond_2
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 517
    :cond_3
    invoke-virtual {p6, p5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 518
    return-object p6

    .line 511
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 515
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

    .line 531
    if-nez p0, :cond_0

    .line 532
    return-object p2

    .line 533
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 534
    .local v8, "planes":[Landroid/media/Image$Plane;
    array-length v1, v8

    if-lez v1, :cond_1

    aget-object v7, v8, v2

    .line 536
    .local v7, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 537
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

    .line 539
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

    .line 553
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 554
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 555
    .local v0, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v0, p2, :cond_1

    .line 556
    move-object v2, p0

    .line 562
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-ne v2, p0, :cond_0

    .line 563
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 564
    :cond_0
    return-object v2

    .line 559
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0, p1, p2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 560
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
    .line 575
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

    .line 588
    if-nez p0, :cond_0

    .line 589
    return-object v6

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 593
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 594
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 596
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 597
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 598
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    return-object v3

    .line 594
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
    .line 617
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

    .line 630
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 631
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 632
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1

    .line 633
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 634
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 635
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 636
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 637
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 638
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 639
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 642
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 643
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 644
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 645
    return-object v1
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v1

    .line 890
    invoke-static/range {v0 .. v6}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "III",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 912
    .local p5, "isCancel":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;

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
    .line 869
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;
    .locals 35
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Integer;",
            "III",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 935
    .local p6, "isCancel":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    and-int/lit8 v4, p4, 0x40

    if-nez v4, :cond_0

    const/16 v28, 0x1

    .line 941
    .local v28, "printErrorLog":Z
    :goto_0
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_1

    const/16 v22, 0x1

    .line 944
    .local v22, "isOpaque":Z
    :goto_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v20

    .line 945
    .local v20, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v21

    .line 948
    .local v21, "isJfifHeader":Z
    if-eqz p6, :cond_2

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 949
    const/4 v4, 0x0

    return-object v4

    .line 935
    .end local v20    # "isGifHeader":Z
    .end local v21    # "isJfifHeader":Z
    .end local v22    # "isOpaque":Z
    .end local v28    # "printErrorLog":Z
    :cond_0
    const/16 v28, 0x0

    .restart local v28    # "printErrorLog":Z
    goto :goto_0

    .line 941
    :cond_1
    const/16 v22, 0x0

    .restart local v22    # "isOpaque":Z
    goto :goto_1

    .line 952
    .restart local v20    # "isGifHeader":Z
    .restart local v21    # "isJfifHeader":Z
    :cond_2
    if-nez p1, :cond_3

    .line 953
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 954
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x10e

    if-ne v4, v8, :cond_5

    :cond_4
    const/16 v31, 0x1

    .line 957
    .local v31, "swapWidthHeight":Z
    :goto_2
    if-eqz p6, :cond_6

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_6

    .line 958
    const/4 v4, 0x0

    return-object v4

    .line 954
    .end local v31    # "swapWidthHeight":Z
    :cond_5
    const/16 v31, 0x0

    .restart local v31    # "swapWidthHeight":Z
    goto :goto_2

    .line 961
    :cond_6
    const/4 v7, 0x0

    .line 966
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    .line 967
    .local v24, "needFillOuter":Z
    if-eqz v20, :cond_19

    .line 971
    const/4 v8, 0x0

    const/16 v29, 0x0

    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v30, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 973
    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .local v30, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v23

    .line 974
    .local v23, "movie":Landroid/graphics/Movie;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 975
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Movie;->width()I

    move-result v27

    .line 976
    .local v27, "originalWidth":I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Movie;->height()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result v26

    .line 977
    .local v26, "originalHeight":I
    if-eqz v30, :cond_7

    :try_start_3
    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    :goto_3
    if-eqz v8, :cond_c

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1140
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "isGifHeader":Z
    .end local v21    # "isJfifHeader":Z
    .end local v23    # "movie":Landroid/graphics/Movie;
    .end local v24    # "needFillOuter":Z
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v31    # "swapWidthHeight":Z
    :catch_0
    move-exception v16

    .line 1141
    .local v16, "ex":Ljava/lang/Throwable;
    if-eqz v28, :cond_8

    .line 1142
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v8, "decodeBitmap() - Fail to decode bitmap"

    move-object/from16 v0, v16

    invoke-static {v4, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1143
    :cond_8
    const/4 v4, 0x0

    return-object v4

    .line 977
    .end local v16    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "isGifHeader":Z
    .restart local v21    # "isJfifHeader":Z
    .restart local v23    # "movie":Landroid/graphics/Movie;
    .restart local v24    # "needFillOuter":Z
    .restart local v26    # "originalHeight":I
    .restart local v27    # "originalWidth":I
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v31    # "swapWidthHeight":Z
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v23    # "movie":Landroid/graphics/Movie;
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_4
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v8

    move-object/from16 v34, v8

    move-object v8, v4

    move-object/from16 v4, v34

    :goto_5
    if-eqz v29, :cond_9

    :try_start_6
    invoke-virtual/range {v29 .. v29}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_6
    if-eqz v8, :cond_b

    :try_start_7
    throw v8

    :catch_3
    move-exception v9

    if-nez v8, :cond_a

    move-object v8, v9

    goto :goto_6

    :cond_a
    if-eq v8, v9, :cond_9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 978
    .restart local v23    # "movie":Landroid/graphics/Movie;
    .restart local v26    # "originalHeight":I
    .restart local v27    # "originalWidth":I
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_c
    const/16 v19, 0x1

    .line 979
    .local v19, "isFromMovie":Z
    const/4 v14, 0x0

    .line 980
    .local v14, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    if-lez v27, :cond_d

    if-gtz v26, :cond_13

    .line 982
    :cond_d
    const/4 v8, 0x0

    const/16 v29, 0x0

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_8
    new-instance v30, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 985
    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_9
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v9, "decodeBitmap() - Fail to get width and height by movie, try to use GifDecoder!"

    invoke-static {v4, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    new-instance v17, Lcom/oneplus/util/GifDecoder;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/util/GifDecoder;-><init>()V

    .line 987
    .local v17, "gifDecoder":Lcom/oneplus/util/GifDecoder;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 988
    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 990
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/oneplus/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 991
    .local v18, "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_e

    .line 993
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 994
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    .line 995
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 996
    .local v14, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 997
    const-string/jumbo v4, "ImageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "decodeBitmap() - decode by GifDecoder width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .end local v14    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v18    # "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1001
    if-eqz v30, :cond_f

    :try_start_a
    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_f
    :goto_7
    if-eqz v8, :cond_13

    :try_start_b
    throw v8
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :catch_4
    move-exception v8

    goto :goto_7

    .end local v17    # "gifDecoder":Lcom/oneplus/util/GifDecoder;
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v14, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_5
    move-exception v4

    .end local v14    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_8
    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v8

    move-object/from16 v34, v8

    move-object v8, v4

    move-object/from16 v4, v34

    :goto_9
    if-eqz v29, :cond_10

    :try_start_d
    invoke-virtual/range {v29 .. v29}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    :cond_10
    :goto_a
    if-eqz v8, :cond_12

    :try_start_e
    throw v8

    :catch_6
    move-exception v9

    if-nez v8, :cond_11

    move-object v8, v9

    goto :goto_a

    :cond_11
    if-eq v8, v9, :cond_10

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_12
    throw v4

    .line 1003
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_13
    move/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1004
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v22, :cond_14

    .line 1005
    const/high16 v4, -0x1000000

    invoke-virtual {v7, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1007
    :cond_14
    if-eqz v19, :cond_18

    .line 1008
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8, v9}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 1015
    :cond_15
    :goto_b
    if-eqz v31, :cond_16

    .line 1017
    move/from16 v33, v27

    .line 1018
    .local v33, "temp":I
    move/from16 v27, v26

    .line 1019
    move/from16 v26, v33

    .line 1023
    .end local v33    # "temp":I
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v32

    .line 1024
    .local v32, "targetSize":Landroid/util/Size;
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1025
    .local v5, "targetWidth":I
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1100
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "isFromMovie":Z
    .end local v23    # "movie":Landroid/graphics/Movie;
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v6, "targetHeight":I
    :cond_17
    if-eqz p6, :cond_29

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1101
    const/4 v4, 0x0

    return-object v4

    .line 1009
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v32    # "targetSize":Landroid/util/Size;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "isFromMovie":Z
    .restart local v23    # "movie":Landroid/graphics/Movie;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_18
    if-eqz v14, :cond_15

    .line 1011
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v14, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 1030
    .end local v19    # "isFromMovie":Z
    .end local v23    # "movie":Landroid/graphics/Movie;
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :cond_19
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1031
    .local v25, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 1032
    const/4 v8, 0x0

    const/16 v29, 0x0

    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_f
    new-instance v30, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1034
    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x0

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1040
    if-eqz v30, :cond_1a

    :try_start_11
    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_1a
    :goto_c
    if-eqz v8, :cond_1d

    :try_start_12
    throw v8
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 1037
    :catch_7
    move-exception v15

    .local v15, "e":Ljava/lang/Throwable;
    move-object/from16 v29, v30

    .line 1038
    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_d
    if-eqz v28, :cond_1b

    .line 1039
    :try_start_13
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v8, "Fail to decode stream"

    invoke-static {v4, v8, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1041
    .end local v15    # "e":Ljava/lang/Throwable;
    :cond_1b
    :goto_e
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    .line 1042
    .restart local v27    # "originalWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    .line 1045
    .restart local v26    # "originalHeight":I
    if-eqz v31, :cond_1c

    .line 1047
    move/from16 v33, v27

    .line 1048
    .restart local v33    # "temp":I
    move/from16 v27, v26

    .line 1049
    move/from16 v26, v33

    .line 1053
    .end local v33    # "temp":I
    :cond_1c
    const/4 v4, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v32

    .line 1054
    .restart local v32    # "targetSize":Landroid/util/Size;
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1055
    .restart local v5    # "targetWidth":I
    invoke-virtual/range {v32 .. v32}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1058
    .restart local v6    # "targetHeight":I
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v5, v6}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1061
    if-eqz p6, :cond_21

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    move-result v4

    if-eqz v4, :cond_21

    .line 1062
    const/4 v4, 0x0

    return-object v4

    .line 1040
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .end local v32    # "targetSize":Landroid/util/Size;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_8
    move-exception v8

    goto :goto_c

    :cond_1d
    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_e

    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    :catch_9
    move-exception v4

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_f
    :try_start_14
    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v8

    move-object/from16 v34, v8

    move-object v8, v4

    move-object/from16 v4, v34

    :goto_10
    if-eqz v29, :cond_1e

    :try_start_15
    invoke-virtual/range {v29 .. v29}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    :cond_1e
    :goto_11
    if-eqz v8, :cond_20

    :try_start_16
    throw v8

    .line 1037
    :catch_a
    move-exception v15

    .restart local v15    # "e":Ljava/lang/Throwable;
    goto :goto_d

    .line 1040
    .end local v15    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v9

    if-nez v8, :cond_1f

    move-object v8, v9

    goto :goto_11

    :cond_1f
    if-eq v8, v9, :cond_1e

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_20
    throw v4
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 1065
    .restart local v5    # "targetWidth":I
    .restart local v6    # "targetHeight":I
    .restart local v26    # "originalHeight":I
    .restart local v27    # "originalWidth":I
    .restart local v32    # "targetSize":Landroid/util/Size;
    :cond_21
    :try_start_17
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_22

    mul-int v4, v27, v26

    const v8, 0x17d7840

    if-lt v4, v8, :cond_22

    move-object/from16 v4, p0

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1068
    invoke-static/range {v4 .. v9}, Lcom/oneplus/media/ImageUtils;->decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    move-result-object v7

    .line 1072
    :cond_22
    if-eqz p6, :cond_23

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1073
    const/4 v4, 0x0

    return-object v4

    .line 1076
    :cond_23
    if-nez v7, :cond_26

    .line 1078
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1079
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1080
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1081
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1082
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_24

    .line 1083
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1084
    :cond_24
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x2

    if-le v4, v8, :cond_25

    if-eqz v21, :cond_25

    .line 1085
    const/16 v24, 0x1

    .line 1087
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1091
    :cond_26
    if-nez v7, :cond_17

    .line 1093
    if-eqz v28, :cond_27

    .line 1094
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v8, "decodeBitmap() - Fail to decode image"

    invoke-static {v4, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_27
    const/4 v4, 0x0

    return-object v4

    .line 1079
    :cond_28
    const/4 v4, 0x0

    goto :goto_12

    .line 1104
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_29
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_2a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v6, :cond_2f

    .line 1106
    :cond_2a
    :goto_13
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 1107
    .local v12, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_2b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v6, :cond_2c

    .line 1109
    :cond_2b
    if-eqz v31, :cond_30

    .line 1110
    int-to-float v4, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v12, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1114
    :cond_2c
    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 1115
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1116
    :cond_2d
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1121
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    :cond_2e
    if-eqz p6, :cond_31

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1122
    const/4 v4, 0x0

    return-object v4

    .line 1104
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_13

    .line 1112
    .restart local v12    # "matrix":Landroid/graphics/Matrix;
    :cond_30
    int-to-float v4, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    int-to-float v8, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v12, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_14

    .line 1125
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    :cond_31
    if-eqz v24, :cond_32

    if-eqz v21, :cond_32

    .line 1126
    invoke-static {v7}, Lcom/oneplus/media/ImageUtils;->fillOuterPixels(Landroid/graphics/Bitmap;)Z

    .line 1129
    :cond_32
    if-eqz p6, :cond_33

    invoke-interface/range {p6 .. p6}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1130
    const/4 v4, 0x0

    return-object v4

    .line 1133
    :cond_33
    if-eqz v22, :cond_34

    if-eqz v21, :cond_35

    .line 1137
    :cond_34
    :goto_15
    return-object v7

    .line 1133
    :cond_35
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v4, :cond_34

    .line 1134
    invoke-static {v7}, Lcom/oneplus/media/ImageUtils;->createWithBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    move-result-object v7

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_15

    .line 1040
    .end local v5    # "targetWidth":I
    .end local v6    # "targetHeight":I
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .end local v32    # "targetSize":Landroid/util/Size;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v4

    goto/16 :goto_10

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_10

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_c
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_f

    .line 1001
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v19    # "isFromMovie":Z
    .restart local v23    # "movie":Landroid/graphics/Movie;
    .restart local v26    # "originalHeight":I
    .restart local v27    # "originalWidth":I
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v4

    goto/16 :goto_9

    .end local v14    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_6
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_9

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_d
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_8

    .line 977
    .end local v19    # "isFromMovie":Z
    .end local v23    # "movie":Landroid/graphics/Movie;
    .end local v26    # "originalHeight":I
    .end local v27    # "originalWidth":I
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    :catchall_7
    move-exception v4

    goto/16 :goto_5

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_8
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .local v29, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_5

    .end local v29    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v30    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_e
    move-exception v4

    move-object/from16 v29, v30

    .end local v30    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v29    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_4
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 712
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 748
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 772
    .local p5, "isCancel":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_4

    const/16 v19, 0x1

    .line 773
    .local v19, "printErrorLog":Z
    :goto_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_5

    const/16 v23, 0x1

    .line 776
    .local v23, "useEmbeddedThumbOnly":Z
    :goto_1
    const/4 v9, 0x0

    .line 777
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    .line 779
    if-nez v23, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_3

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_3

    .line 781
    :cond_0
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, "stream":Ljava/io/InputStream;
    const-wide/16 v4, 0x4e20

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v20

    .line 783
    .end local v8    # "stream":Ljava/io/InputStream;
    .local v20, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v17, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 784
    .local v17, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v17 .. v17}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 787
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 790
    .local v9, "orientation":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v22

    .line 791
    .local v22, "thumbData":[B
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 792
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 793
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 794
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 807
    :goto_2
    if-nez v23, :cond_1

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_7

    .line 809
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 810
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 811
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 812
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 813
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 814
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_8

    .line 816
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_c

    .line 817
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v3

    .line 836
    if-eqz v20, :cond_2

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_4
    if-eqz v10, :cond_b

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :catch_0
    move-exception v16

    .local v16, "ex":Ljava/lang/Throwable;
    move-object/from16 v8, v20

    .line 839
    .end local v16    # "ex":Ljava/lang/Throwable;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "stream":Ljava/io/InputStream;
    :cond_3
    :goto_5
    if-eqz v23, :cond_11

    .line 840
    const/4 v3, 0x0

    return-object v3

    .line 772
    .end local v19    # "printErrorLog":Z
    .end local v23    # "useEmbeddedThumbOnly":Z
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "printErrorLog":Z
    goto/16 :goto_0

    .line 773
    :cond_5
    const/16 v23, 0x0

    .restart local v23    # "useEmbeddedThumbOnly":Z
    goto/16 :goto_1

    .line 799
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "stream":Ljava/io/InputStream;
    .restart local v22    # "thumbData":[B
    :sswitch_0
    :try_start_4
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    .line 800
    .local v21, "temp":I
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 801
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    .line 836
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "temp":I
    .end local v22    # "thumbData":[B
    :catch_1
    move-exception v3

    move-object/from16 v8, v20

    .end local v20    # "stream":Ljava/io/InputStream;
    :goto_6
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    :goto_7
    if-eqz v8, :cond_6

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_8
    if-eqz v4, :cond_10

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v16

    .restart local v16    # "ex":Ljava/lang/Throwable;
    goto :goto_5

    .line 807
    .end local v16    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v17    # "exif":Landroid/media/ExifInterface;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "stream":Ljava/io/InputStream;
    .restart local v22    # "thumbData":[B
    :cond_7
    :try_start_8
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move/from16 v0, p2

    if-ge v3, v0, :cond_1

    .line 836
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :cond_8
    if-eqz v20, :cond_9

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_9
    :goto_9
    if-eqz v10, :cond_3

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 811
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v22    # "thumbData":[B
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 836
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 817
    :cond_b
    return-object v3

    .line 818
    :cond_c
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 825
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 828
    :goto_a
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 829
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 830
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v3

    .line 836
    if-eqz v20, :cond_d

    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    :cond_d
    :goto_b
    if-eqz v10, :cond_e

    :try_start_d
    throw v10
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 822
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_1
    :try_start_e
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result-object v2

    goto :goto_a

    .line 836
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    :catch_4
    move-exception v10

    goto :goto_b

    .line 830
    :cond_e
    return-object v3

    .line 836
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :catch_5
    move-exception v10

    goto :goto_9

    .end local v17    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "stream":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    if-nez v4, :cond_f

    move-object v4, v5

    goto :goto_8

    :cond_f
    if-eq v4, v5, :cond_6

    :try_start_f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_10
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    .line 843
    :cond_11
    const/4 v4, 0x0

    const/4 v8, 0x0

    .restart local v8    # "stream":Ljava/io/InputStream;
    const-wide/16 v10, 0x4e20

    :try_start_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v8

    .local v8, "stream":Ljava/io/InputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 845
    invoke-static/range {v8 .. v14}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 846
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-nez v15, :cond_12

    if-eqz v19, :cond_12

    .line 847
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
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 855
    :cond_12
    if-eqz v8, :cond_13

    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_13
    :goto_c
    if-eqz v4, :cond_15

    :try_start_12
    throw v4
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 851
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v16

    .line 852
    .restart local v16    # "ex":Ljava/lang/Throwable;
    if-eqz v19, :cond_14

    .line 853
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

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 854
    :cond_14
    const/4 v3, 0x0

    return-object v3

    .line 855
    .end local v16    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/InputStream;
    .restart local v15    # "bitmap":Landroid/graphics/Bitmap;
    :catch_8
    move-exception v4

    goto :goto_c

    .line 848
    :cond_15
    return-object v15

    .line 855
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :catch_9
    move-exception v3

    :try_start_13
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_1
    move-exception v4

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    :goto_d
    if-eqz v8, :cond_16

    :try_start_14
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    :cond_16
    :goto_e
    if-eqz v4, :cond_18

    :try_start_15
    throw v4

    :catch_a
    move-exception v5

    if-nez v4, :cond_17

    move-object v4, v5

    goto :goto_e

    :cond_17
    if-eq v4, v5, :cond_16

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_18
    throw v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    :catchall_2
    move-exception v3

    goto :goto_d

    .line 836
    .local v8, "stream":Ljava/io/InputStream;
    .local v9, "orientation":Ljava/lang/Integer;
    :catchall_3
    move-exception v3

    move-object v4, v10

    goto/16 :goto_7

    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .restart local v20    # "stream":Ljava/io/InputStream;
    :catchall_4
    move-exception v3

    move-object v4, v10

    move-object/from16 v8, v20

    .end local v20    # "stream":Ljava/io/InputStream;
    .local v8, "stream":Ljava/io/InputStream;
    goto/16 :goto_7

    .local v8, "stream":Ljava/io/InputStream;
    .restart local v9    # "orientation":Ljava/lang/Integer;
    :catch_b
    move-exception v3

    goto/16 :goto_6

    .line 794
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 818
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
    .line 726
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
    .line 658
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

    .line 692
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 694
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .local v2, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 699
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

    .line 697
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 698
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v5

    .line 699
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 694
    :cond_1
    return-object v4

    .line 699
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

    .line 697
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 699
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
    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;Lcom/oneplus/base/Ref;)Landroid/graphics/Bitmap;
    .locals 41
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "III",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 1152
    .local p5, "isCanceled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v35

    if-nez v35, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isPngHeader(Ljava/io/InputStream;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 1155
    :cond_0
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - start"

    invoke-static/range {v35 .. v36}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/16 v5, 0x400

    .line 1158
    .local v5, "decodeGridSize":I
    const/16 v22, 0x0

    .line 1159
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1160
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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1163
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .local v21, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v12

    .line 1164
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

    .line 1167
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 1168
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v14

    .line 1169
    .local v14, "originalWidth":I
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v13

    .line 1170
    .local v13, "originalHeight":I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1171
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v35, 0x0

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1172
    and-int/lit8 v35, p3, 0x1

    if-eqz v35, :cond_7

    const/16 v35, 0x1

    :goto_0
    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1173
    move-object/from16 v0, p4

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1174
    const/16 v35, 0x1

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1175
    and-int/lit8 v35, p3, 0x8

    if-eqz v35, :cond_1

    .line 1176
    const/16 v35, 0x1

    move/from16 v0, v35

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1179
    :cond_1
    const/16 v35, 0x5a

    move/from16 v0, v35

    if-eq v12, v0, :cond_2

    const/16 v35, 0x10e

    move/from16 v0, v35

    if-ne v12, v0, :cond_8

    .line 1181
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 1182
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    move/from16 v26, p1

    .line 1183
    .local v26, "temp":I
    move/from16 p1, p2

    .line 1184
    move/from16 p2, v26

    .line 1188
    .end local v26    # "temp":I
    :goto_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v14

    move/from16 v37, v0

    div-float v15, v35, v37

    .line 1189
    .local v15, "ratioX":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v13

    move/from16 v37, v0

    div-float v16, v35, v37

    .line 1190
    .local v16, "ratioY":F
    const/high16 v35, 0x44800000    # 1024.0f

    mul-float v35, v35, v15

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 1191
    .local v25, "targetGridWidth":I
    const/high16 v35, 0x44800000    # 1024.0f

    mul-float v35, v35, v16

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1194
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

    .line 1195
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

    .line 1197
    const/16 v27, 0x0

    .line 1200
    .local v27, "x":I
    :goto_2
    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    .line 1201
    .local v29, "xStart":I
    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    add-int/lit8 v28, v35, -0x1

    .line 1202
    .local v28, "xEnd":I
    move/from16 v0, v28

    if-lt v0, v14, :cond_3

    .line 1203
    add-int/lit8 v28, v14, -0x1

    .line 1205
    :cond_3
    const/16 v31, 0x0

    .line 1208
    .local v31, "y":I
    :goto_3
    if-eqz p5, :cond_b

    invoke-interface/range {p5 .. p5}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Boolean;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v35

    if-eqz v35, :cond_b

    .line 1252
    if-eqz v21, :cond_4

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_4
    if-eqz v36, :cond_9

    :try_start_3
    throw v36
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    :catch_0
    move-exception v10

    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v20, v21

    .line 1245
    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "orientation":I
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "targetGridHeight":I
    .end local v25    # "targetGridWidth":I
    .end local v27    # "x":I
    .end local v28    # "xEnd":I
    .end local v29    # "xStart":I
    .end local v31    # "y":I
    :goto_5
    :try_start_4
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - Fail to decode bitmap"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1246
    const/16 v22, 0x0

    .line 1250
    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_5

    .line 1251
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1254
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_6
    const-string/jumbo v35, "ImageUtils"

    const-string/jumbo v36, "decodeBitmapProgressively() - end"

    invoke-static/range {v35 .. v36}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    return-object v22

    .line 1153
    .end local v5    # "decodeGridSize":I
    :cond_6
    const/16 v35, 0x0

    return-object v35

    .line 1172
    .restart local v5    # "decodeGridSize":I
    .restart local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "orientation":I
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_7
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1187
    :cond_8
    :try_start_5
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v22

    .local v22, "targetBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1252
    .restart local v15    # "ratioX":F
    .restart local v16    # "ratioY":F
    .restart local v24    # "targetGridHeight":I
    .restart local v25    # "targetGridWidth":I
    .restart local v27    # "x":I
    .restart local v28    # "xEnd":I
    .restart local v29    # "xStart":I
    .restart local v31    # "y":I
    :catch_1
    move-exception v36

    goto :goto_4

    .line 1209
    :cond_9
    const/16 v35, 0x0

    .line 1250
    if-eqz v6, :cond_a

    .line 1251
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1209
    :cond_a
    return-object v35

    .line 1212
    :cond_b
    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    .line 1213
    .local v33, "yStart":I
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x400

    move/from16 v35, v0

    add-int/lit8 v32, v35, -0x1

    .line 1214
    .local v32, "yEnd":I
    move/from16 v0, v32

    if-lt v0, v13, :cond_c

    .line 1215
    add-int/lit8 v32, v13, -0x1

    .line 1218
    :cond_c
    :try_start_6
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v28

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1219
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1222
    .local v18, "regionBitmap":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1223
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

    .line 1224
    .local v19, "src":Landroid/graphics/Rect;
    mul-int v30, v27, v25

    .line 1225
    .local v30, "xTargetStart":I
    mul-int v34, v31, v24

    .line 1226
    .local v34, "yTargetStart":I
    move/from16 v9, v25

    .line 1227
    .local v9, "dstWidth":I
    move/from16 v8, v24

    .line 1228
    .local v8, "dstHeight":I
    add-int/lit8 v35, v14, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 1229
    mul-int v35, v27, v25

    sub-int v9, p1, v35

    .line 1230
    :cond_d
    add-int/lit8 v35, v13, -0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 1231
    mul-int v35, v31, v24

    sub-int v8, p2, v35

    .line 1232
    :cond_e
    new-instance v7, Landroid/graphics/Rect;

    add-int v35, v30, v9

    add-int v37, v34, v8

    move/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v37

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1233
    .local v7, "dst":Landroid/graphics/Rect;
    const/16 v35, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1235
    add-int/lit8 v35, v13, -0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    .line 1239
    add-int/lit8 v35, v14, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_12

    .line 1252
    if-eqz v21, :cond_f

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_f
    :goto_7
    if-eqz v36, :cond_16

    :try_start_8
    throw v36
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1249
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v8    # "dstHeight":I
    .end local v9    # "dstWidth":I
    .end local v17    # "rect":Landroid/graphics/Rect;
    .end local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "src":Landroid/graphics/Rect;
    .end local v23    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v30    # "xTargetStart":I
    .end local v32    # "yEnd":I
    .end local v33    # "yStart":I
    .end local v34    # "yTargetStart":I
    :catchall_0
    move-exception v35

    move-object/from16 v20, v21

    .line 1250
    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "orientation":I
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "targetGridHeight":I
    .end local v25    # "targetGridWidth":I
    .end local v27    # "x":I
    .end local v28    # "xEnd":I
    .end local v29    # "xStart":I
    .end local v31    # "y":I
    :goto_8
    if-eqz v6, :cond_10

    .line 1251
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1249
    :cond_10
    throw v35

    .line 1205
    .restart local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
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
    .restart local v22    # "targetBitmap":Landroid/graphics/Bitmap;
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
    :cond_11
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3

    .line 1197
    :cond_12
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1252
    :catch_2
    move-exception v36

    goto :goto_7

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
    :catch_3
    move-exception v35

    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    :goto_9
    :try_start_9
    throw v35
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v36

    move-object/from16 v40, v36

    move-object/from16 v36, v35

    move-object/from16 v35, v40

    :goto_a
    if-eqz v20, :cond_13

    :try_start_a
    invoke-virtual/range {v20 .. v20}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_13
    :goto_b
    if-eqz v36, :cond_15

    :try_start_b
    throw v36

    .line 1244
    :catch_4
    move-exception v10

    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 1252
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v37

    if-nez v36, :cond_14

    move-object/from16 v36, v37

    goto :goto_b

    :cond_14
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_13

    invoke-virtual/range {v36 .. v37}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1249
    :catchall_2
    move-exception v35

    goto :goto_8

    .line 1252
    :cond_15
    throw v35
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1250
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
    :cond_16
    if-eqz v6, :cond_17

    .line 1251
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_17
    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_6

    .line 1252
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

    goto :goto_a

    .end local v6    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v22    # "targetBitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v35

    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .local v20, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_a

    .end local v20    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_6
    move-exception v35

    move-object/from16 v20, v21

    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v20    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_9
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1476
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
    .line 1455
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 39
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1498
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_4

    const/16 v23, 0x1

    .line 1499
    .local v23, "isOpaque":Z
    :goto_0
    and-int/lit8 v4, p4, 0x40

    if-nez v4, :cond_5

    const/16 v29, 0x1

    .line 1505
    .local v29, "printErrorLog":Z
    :goto_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v21

    .line 1506
    .local v21, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v22

    .line 1509
    .local v22, "isJfifHeader":Z
    if-nez p1, :cond_0

    .line 1510
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1511
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_6

    :cond_1
    const/16 v35, 0x1

    .line 1514
    .local v35, "swapWidthHeight":Z
    :goto_2
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1515
    .local v25, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 1516
    const/4 v5, 0x0

    const/16 v33, 0x0

    .local v33, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v34, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1518
    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .local v34, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1525
    if-eqz v34, :cond_2

    :try_start_3
    invoke-virtual/range {v34 .. v34}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v5, :cond_a

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1521
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .line 1522
    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_4
    if-eqz v29, :cond_3

    .line 1523
    :try_start_5
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 1524
    :cond_3
    const/4 v4, 0x0

    return-object v4

    .line 1498
    .end local v18    # "e":Ljava/lang/Throwable;
    .end local v21    # "isGifHeader":Z
    .end local v22    # "isJfifHeader":Z
    .end local v23    # "isOpaque":Z
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v29    # "printErrorLog":Z
    .end local v35    # "swapWidthHeight":Z
    :cond_4
    const/16 v23, 0x0

    .restart local v23    # "isOpaque":Z
    goto :goto_0

    .line 1499
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "printErrorLog":Z
    goto :goto_1

    .line 1511
    .restart local v21    # "isGifHeader":Z
    .restart local v22    # "isJfifHeader":Z
    :cond_6
    const/16 v35, 0x0

    .restart local v35    # "swapWidthHeight":Z
    goto :goto_2

    .line 1525
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v34    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_2
    move-exception v4

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_5
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v38, v5

    move-object v5, v4

    move-object/from16 v4, v38

    :goto_6
    if-eqz v33, :cond_7

    :try_start_7
    invoke-virtual/range {v33 .. v33}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_7
    if-eqz v5, :cond_9

    :try_start_8
    throw v5

    .line 1521
    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/Throwable;
    goto :goto_4

    .line 1525
    .end local v18    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    if-nez v5, :cond_8

    move-object v5, v6

    goto :goto_7

    :cond_8
    if-eq v5, v6, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 1528
    .restart local v34    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_a
    :try_start_9
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v28, v0

    .line 1529
    .local v28, "originalWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 1530
    .local v27, "originalHeight":I
    if-lez v28, :cond_b

    if-gtz v27, :cond_d

    .line 1532
    :cond_b
    if-eqz v29, :cond_c

    .line 1533
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to get bitmap size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :cond_c
    const/4 v4, 0x0

    return-object v4

    .line 1536
    :cond_d
    if-eqz v35, :cond_e

    .line 1538
    move/from16 v37, p2

    .line 1539
    .local v37, "temp":I
    move/from16 p2, p3

    .line 1540
    move/from16 p3, v37

    .line 1544
    .end local v37    # "temp":I
    :cond_e
    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1545
    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1546
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1547
    .local v31, "ratioX":F
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    div-float v32, v4, v5

    .line 1548
    .local v32, "ratioY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1549
    .local v30, "ratio":F
    move/from16 v0, v28

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v16, v0

    .line 1550
    .local v16, "decodeWidth":I
    move/from16 v0, v27

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v14, v4

    .line 1553
    .local v14, "decodeHeight":I
    mul-int v15, v16, v14

    .line 1554
    .local v15, "decodePixelCount":I
    mul-int v36, p2, p3

    .line 1557
    .local v36, "targetPixelCount":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1558
    .local v12, "cropRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1559
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1560
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1561
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_f

    .line 1562
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1563
    :cond_f
    const/16 v20, 0x0

    .line 1564
    .local v20, "isCropped":Z
    if-eqz v21, :cond_14

    .line 1567
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v24

    .line 1568
    .local v24, "movie":Landroid/graphics/Movie;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 1569
    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1570
    .local v26, "originalBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 1612
    .end local v24    # "movie":Landroid/graphics/Movie;
    :goto_9
    if-nez v20, :cond_10

    .line 1614
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1615
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v32, v4, v5

    .line 1616
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1617
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v13, v4

    .line 1618
    .local v13, "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v11, v4

    .line 1619
    .local v11, "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1620
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1624
    .end local v11    # "cropHeight":I
    .end local v13    # "cropWidth":I
    :cond_10
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1625
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_11

    if-eqz v22, :cond_18

    .line 1629
    :cond_11
    :goto_a
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1630
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

    .line 1633
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_12

    .line 1635
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1636
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1637
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1639
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_12
    return-object v3

    .line 1559
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "isCropped":Z
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1572
    .restart local v20    # "isCropped":Z
    :cond_14
    div-int/lit8 v4, v15, 0x2

    move/from16 v0, v36

    if-gt v0, v4, :cond_17

    .line 1575
    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1576
    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v32, v4, v5

    .line 1577
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1578
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v13, v4

    .line 1579
    .restart local v13    # "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v30

    float-to-int v11, v4

    .line 1580
    .restart local v11    # "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1581
    sub-int v4, v28, v13

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v27, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1584
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v17

    .line 1587
    .local v17, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_a
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v26

    .line 1597
    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1601
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 1602
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 1590
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v18

    .line 1591
    .restart local v18    # "e":Ljava/lang/Throwable;
    if-eqz v29, :cond_15

    .line 1592
    :try_start_c
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode bitmap region"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1593
    :cond_15
    const/4 v4, 0x0

    .line 1597
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1593
    return-object v4

    .line 1596
    .end local v18    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    .line 1597
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1596
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 1642
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
    .end local v30    # "ratio":F
    .end local v31    # "ratioX":F
    .end local v32    # "ratioY":F
    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v35    # "swapWidthHeight":Z
    .end local v36    # "targetPixelCount":I
    :catch_6
    move-exception v19

    .line 1643
    .local v19, "ex":Ljava/lang/Throwable;
    if-eqz v29, :cond_16

    .line 1644
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "decodeCenterCropBitmap() - Fail to decode"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1645
    :cond_16
    const/4 v4, 0x0

    return-object v4

    .line 1607
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
    .restart local v30    # "ratio":F
    .restart local v31    # "ratioX":F
    .restart local v32    # "ratioY":F
    .restart local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v35    # "swapWidthHeight":Z
    .restart local v36    # "targetPixelCount":I
    :cond_17
    :try_start_e
    move/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v14}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1608
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_9

    .line 1625
    .restart local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_18
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v4, :cond_11

    .line 1626
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_a

    .line 1525
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "cropRect":Landroid/graphics/Rect;
    .end local v14    # "decodeHeight":I
    .end local v15    # "decodePixelCount":I
    .end local v16    # "decodeWidth":I
    .end local v20    # "isCropped":Z
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v27    # "originalHeight":I
    .end local v28    # "originalWidth":I
    .end local v30    # "ratio":F
    .end local v31    # "ratioX":F
    .end local v32    # "ratioY":F
    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v36    # "targetPixelCount":I
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v4

    goto/16 :goto_6

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v34    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v4

    move-object/from16 v33, v34

    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .local v33, "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_6

    .end local v33    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v34    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_7
    move-exception v4

    move-object/from16 v33, v34

    .end local v34    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v33    # "streamState":Lcom/oneplus/io/StreamState;
    goto/16 :goto_5
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1322
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 25
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1360
    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_6

    const/16 v19, 0x1

    .line 1361
    .local v19, "printErrorLog":Z
    :goto_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_7

    const/16 v23, 0x1

    .line 1362
    .local v23, "useEmbeddedThumbOnly":Z
    :goto_1
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_8

    const/16 v18, 0x1

    .line 1365
    .local v18, "preferQualityOverSpeed":Z
    :goto_2
    const/4 v9, 0x0

    .line 1366
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_5

    .line 1368
    if-nez v23, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_5

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_5

    .line 1370
    :cond_0
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, "stream":Ljava/io/InputStream;
    const-wide/16 v4, 0x4e20

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v20

    .line 1372
    .end local v8    # "stream":Ljava/io/InputStream;
    .local v20, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1376
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1379
    .local v9, "orientation":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v22

    .line 1380
    .local v22, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1381
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1382
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1383
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 1385
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    .line 1386
    .local v21, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1387
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1391
    .end local v21    # "temp":I
    :cond_2
    if-nez v23, :cond_3

    .line 1392
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-lt v3, v0, :cond_9

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_9

    .line 1395
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1396
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1397
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1398
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1399
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1400
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 1402
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 1403
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v3

    .line 1422
    if-eqz v20, :cond_4

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_4
    if-eqz v10, :cond_d

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :catch_0
    move-exception v15

    .local v15, "ex":Ljava/lang/Throwable;
    move-object/from16 v8, v20

    .line 1425
    .end local v15    # "ex":Ljava/lang/Throwable;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "stream":Ljava/io/InputStream;
    :cond_5
    :goto_5
    if-eqz v23, :cond_14

    .line 1426
    const/4 v3, 0x0

    return-object v3

    .line 1360
    .end local v18    # "preferQualityOverSpeed":Z
    .end local v19    # "printErrorLog":Z
    .end local v23    # "useEmbeddedThumbOnly":Z
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "printErrorLog":Z
    goto/16 :goto_0

    .line 1361
    :cond_7
    const/16 v23, 0x0

    .restart local v23    # "useEmbeddedThumbOnly":Z
    goto/16 :goto_1

    .line 1362
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "preferQualityOverSpeed":Z
    goto/16 :goto_2

    .line 1393
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "stream":Ljava/io/InputStream;
    .restart local v22    # "thumbData":[B
    :cond_9
    if-nez v18, :cond_a

    :try_start_4
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    move/from16 v0, p1

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    move/from16 v0, p2

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gez v3, :cond_3

    .line 1422
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :cond_a
    if-eqz v20, :cond_b

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_b
    :goto_6
    if-eqz v10, :cond_5

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1397
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v22    # "thumbData":[B
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 1422
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v10

    goto :goto_4

    .line 1403
    :cond_d
    return-object v3

    .line 1404
    :cond_e
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1411
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1414
    :goto_7
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1415
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1416
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v3

    .line 1422
    if-eqz v20, :cond_f

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_f
    :goto_8
    if-eqz v10, :cond_10

    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 1408
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_0
    :try_start_a
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-object v2

    goto :goto_7

    .line 1422
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    :catch_2
    move-exception v10

    goto :goto_8

    .line 1416
    :cond_10
    return-object v3

    .line 1422
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "thumbData":[B
    :catch_3
    move-exception v10

    goto :goto_6

    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "stream":Ljava/io/InputStream;
    .restart local v8    # "stream":Ljava/io/InputStream;
    .local v9, "orientation":Ljava/lang/Integer;
    :catch_4
    move-exception v3

    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "orientation":Ljava/lang/Integer;
    :goto_9
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    :goto_a
    if-eqz v8, :cond_11

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_11
    :goto_b
    if-eqz v4, :cond_13

    :try_start_d
    throw v4

    :catch_5
    move-exception v15

    .restart local v15    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_5

    .end local v15    # "ex":Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    if-nez v4, :cond_12

    move-object v4, v5

    goto :goto_b

    :cond_12
    if-eq v4, v5, :cond_11

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_13
    throw v3
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 1429
    :cond_14
    const/4 v4, 0x0

    const/4 v8, 0x0

    .restart local v8    # "stream":Ljava/io/InputStream;
    const-wide/16 v10, 0x4e20

    :try_start_e
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v8

    .local v8, "stream":Ljava/io/InputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 1431
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1432
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_15

    if-eqz v19, :cond_15

    .line 1433
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
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1441
    :cond_15
    if-eqz v8, :cond_16

    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    :cond_16
    :goto_c
    if-eqz v4, :cond_18

    :try_start_10
    throw v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 1437
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v15

    .line 1438
    .restart local v15    # "ex":Ljava/lang/Throwable;
    if-eqz v19, :cond_17

    .line 1439
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

    .line 1440
    :cond_17
    const/4 v3, 0x0

    return-object v3

    .line 1441
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/InputStream;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_8
    move-exception v4

    goto :goto_c

    .line 1434
    :cond_18
    return-object v14

    .line 1441
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_9
    move-exception v3

    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v4

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    :goto_d
    if-eqz v8, :cond_19

    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    :cond_19
    :goto_e
    if-eqz v4, :cond_1b

    :try_start_13
    throw v4

    :catch_a
    move-exception v5

    if-nez v4, :cond_1a

    move-object v4, v5

    goto :goto_e

    :cond_1a
    if-eq v4, v5, :cond_19

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1b
    throw v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    :catchall_2
    move-exception v3

    goto :goto_d

    .line 1422
    .local v8, "stream":Ljava/io/InputStream;
    .restart local v9    # "orientation":Ljava/lang/Integer;
    :catchall_3
    move-exception v3

    move-object v4, v10

    goto/16 :goto_a

    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "orientation":Ljava/lang/Integer;
    .restart local v20    # "stream":Ljava/io/InputStream;
    :catchall_4
    move-exception v3

    move-object v4, v10

    move-object/from16 v8, v20

    .end local v20    # "stream":Ljava/io/InputStream;
    .local v8, "stream":Ljava/io/InputStream;
    goto/16 :goto_a

    .end local v8    # "stream":Ljava/io/InputStream;
    .restart local v20    # "stream":Ljava/io/InputStream;
    :catch_b
    move-exception v3

    move-object/from16 v8, v20

    .end local v20    # "stream":Ljava/io/InputStream;
    .restart local v8    # "stream":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 1404
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
    .line 1336
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
    .line 1267
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

    .line 1302
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1304
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .local v2, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v2, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1309
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

    .line 1307
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1308
    .end local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v5

    .line 1309
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1304
    :cond_1
    return-object v4

    .line 1309
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

    .line 1307
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1309
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
    .line 1281
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOrientation(Ljava/io/InputStream;)I
    .locals 21
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1677
    if-nez p0, :cond_0

    .line 1679
    const-string/jumbo v13, "ImageUtils"

    const-string/jumbo v14, "decodeOrientation() - No stream to check"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const/4 v13, 0x0

    return v13

    .line 1684
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

    .line 1687
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .local v12, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v7, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1688
    .local v7, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v10, Lcom/oneplus/base/SimpleRef;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1689
    .local v10, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v6

    .line 1690
    .local v6, "fromTiff":Z
    if-eqz v6, :cond_4

    .line 1691
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1694
    .end local v6    # "fromTiff":Z
    :goto_0
    if-eqz v6, :cond_e

    .line 1697
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

    .line 1700
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

    .line 1702
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v4, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1704
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v13

    sget-object v16, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_9

    .line 1706
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v13

    const/16 v16, 0x112

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 1708
    invoke-virtual {v4}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 1709
    .local v2, "data":[I
    if-eqz v2, :cond_9

    array-length v13, v2

    if-lez v13, :cond_9

    .line 1710
    const/4 v13, 0x0

    aget v13, v2, v13

    invoke-static {v13}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v13

    .line 1717
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

    .line 1724
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

    .line 1721
    :catch_1
    move-exception v5

    .line 1722
    .local v5, "ex":Ljava/lang/Throwable;
    :goto_5
    const-string/jumbo v13, "ImageUtils"

    const-string/jumbo v14, "decodeOrientation() - Unknown error"

    invoke-static {v13, v14, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1723
    const/4 v13, 0x0

    return v13

    .line 1693
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

    .line 1717
    .end local v6    # "fromTiff":Z
    .restart local v2    # "data":[I
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "headerOffset":J
    :catch_2
    move-exception v14

    goto :goto_1

    .line 1724
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

    .line 1721
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

    .line 1724
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v11    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v2    # "data":[I
    .restart local v4    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "headerOffset":J
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_4
    move-exception v15

    goto :goto_6

    .line 1710
    :cond_8
    return v13

    .line 1717
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

    .line 1724
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

    .line 1717
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

    .line 1724
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

    .line 1727
    .restart local v7    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v10    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_12
    const/4 v13, 0x0

    return v13

    .line 1724
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

    .line 1717
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

    .line 1657
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1659
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    .line 1665
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

    .line 1662
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1663
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

    .line 1664
    const/4 v3, 0x0

    return v3

    .line 1665
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1659
    :cond_1
    return v3

    .line 1665
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

    .line 1662
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1665
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
    .line 1935
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
    .line 1951
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
    .line 1963
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    .locals 13
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
    const/4 v10, 0x0

    .line 1980
    and-int/lit8 v8, p2, 0x40

    if-nez v8, :cond_1

    const/4 v4, 0x1

    .line 1981
    .local v4, "printErrorLog":Z
    :goto_0
    if-nez p0, :cond_2

    .line 1983
    if-eqz v4, :cond_0

    .line 1984
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "decodeSize() - No stream"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_0
    return-object v10

    .line 1980
    .end local v4    # "printErrorLog":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "printErrorLog":Z
    goto :goto_0

    .line 1987
    :cond_2
    const/4 v5, 0x0

    .local v5, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v6, Lcom/oneplus/io/StreamState;

    invoke-direct {v6, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1990
    .end local v5    # "streamState":Lcom/oneplus/io/StreamState;
    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v7, 0x0

    .line 1991
    .local v7, "swapWidthHeight":Z
    and-int/lit8 v8, p2, 0x20

    if-nez v8, :cond_9

    const/4 v0, 0x1

    .line 1992
    .local v0, "checkOrientation":Z
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_6

    .line 1994
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v1

    .line 1995
    .local v1, "decodedOrientation":I
    if-eqz p1, :cond_4

    .line 1996
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1997
    :cond_4
    if-eqz v0, :cond_6

    .line 1998
    const/16 v8, 0x5a

    if-eq v1, v8, :cond_5

    const/16 v8, 0x10e

    if-ne v1, v8, :cond_a

    :cond_5
    const/4 v7, 0x1

    .line 2002
    .end local v1    # "decodedOrientation":I
    :cond_6
    :goto_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2003
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2004
    const/4 v8, 0x0

    invoke-static {p0, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2007
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v8, :cond_f

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_f

    .line 2009
    if-eqz v7, :cond_c

    .line 2010
    new-instance v9, Landroid/util/Size;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v9, v8, v11}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2020
    if-eqz v6, :cond_7

    :try_start_2
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    move-object v8, v10

    :goto_3
    if-eqz v8, :cond_b

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2016
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Throwable;
    move-object v5, v6

    .line 2017
    .end local v0    # "checkOrientation":Z
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v7    # "swapWidthHeight":Z
    :goto_4
    if-eqz v4, :cond_8

    .line 2018
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "decodeSize() - Fail to decode"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2019
    :cond_8
    return-object v10

    .line 1991
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "swapWidthHeight":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "checkOrientation":Z
    goto :goto_1

    .line 1998
    .restart local v1    # "decodedOrientation":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    .line 2020
    .end local v1    # "decodedOrientation":I
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v8

    goto :goto_3

    .line 2010
    :cond_b
    return-object v9

    .line 2011
    :cond_c
    :try_start_4
    new-instance v9, Landroid/util/Size;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v9, v8, v11}, Landroid/util/Size;-><init>(II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2020
    if-eqz v6, :cond_d

    :try_start_5
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_d
    move-object v8, v10

    :goto_5
    if-eqz v8, :cond_e

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v8

    goto :goto_5

    .line 2011
    :cond_e
    return-object v9

    .line 2020
    :cond_f
    if-eqz v6, :cond_10

    :try_start_7
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_10
    move-object v8, v10

    :goto_6
    if-eqz v8, :cond_11

    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_3
    move-exception v8

    goto :goto_6

    .line 2013
    :cond_11
    return-object v10

    .line 2020
    .end local v0    # "checkOrientation":Z
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v7    # "swapWidthHeight":Z
    .restart local v5    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_4
    move-exception v8

    .end local v5    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_7
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_8
    if-eqz v5, :cond_12

    :try_start_a
    invoke-virtual {v5}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    :cond_12
    :goto_9
    if-eqz v9, :cond_14

    :try_start_b
    throw v9

    .line 2016
    :catch_5
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_4

    .line 2020
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_6
    move-exception v11

    if-nez v9, :cond_13

    move-object v9, v11

    goto :goto_9

    :cond_13
    if-eq v9, v11, :cond_12

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_14
    throw v8
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .restart local v5    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_8

    .end local v5    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v0    # "checkOrientation":Z
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "swapWidthHeight":Z
    :catchall_2
    move-exception v8

    move-object v9, v10

    move-object v5, v6

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .local v5, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_8

    .end local v5    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_7
    move-exception v8

    move-object v5, v6

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v5    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_7
.end method

.method public static decodeSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1870
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
    .line 1886
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
    .line 1898
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    .locals 7
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
    const/4 v4, 0x0

    .line 1915
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/InputStream;
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/oneplus/io/FileUtils;->openLockedInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v1

    .line 1917
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1, p1, p2}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;I)Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 1924
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1920
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1921
    .local v0, "ex":Ljava/lang/Throwable;
    and-int/lit8 v2, p2, 0x40

    if-nez v2, :cond_1

    .line 1922
    const-string/jumbo v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeSize() - Fail to open \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1923
    :cond_1
    return-object v4

    .line 1924
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1917
    :cond_2
    return-object v3

    .line 1924
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    :try_start_5
    throw v3

    :catch_3
    move-exception v5

    if-nez v3, :cond_4

    move-object v3, v5

    goto :goto_2

    :cond_4
    if-eq v3, v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static decodeTakenTime(Ljava/io/InputStream;)J
    .locals 31
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1756
    if-nez p0, :cond_0

    .line 1758
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v25, "decodeTakenTime() - No stream to check"

    invoke-static/range {v24 .. v25}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-wide/16 v24, 0x0

    return-wide v24

    .line 1763
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

    .line 1766
    .end local v22    # "streamState":Lcom/oneplus/io/StreamState;
    .local v23, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v11, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1767
    .local v11, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v17, Lcom/oneplus/base/SimpleRef;

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1768
    .local v17, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v10

    .line 1769
    .local v10, "fromTiff":Z
    const-wide/16 v12, 0x0

    .line 1770
    .local v12, "gpstime":J
    const-wide/16 v20, 0x0

    .line 1771
    .local v20, "origintime":J
    if-eqz v10, :cond_2

    .line 1772
    invoke-virtual/range {v23 .. v23}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v11, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1775
    .end local v10    # "fromTiff":Z
    :goto_0
    if-eqz v10, :cond_f

    .line 1778
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

    .line 1781
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

    .line 1783
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v8, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1785
    invoke-static {}, Lcom/oneplus/media/ImageUtils;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v24

    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v27

    aget v24, v24, v27

    packed-switch v24, :pswitch_data_0

    goto :goto_1

    .line 1788
    :pswitch_0
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v24

    const v27, 0x9003

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1790
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1791
    .local v3, "dateTime":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1793
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v24, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1796
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

    .line 1774
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

    .line 1799
    .end local v10    # "fromTiff":Z
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "dateTime":Ljava/lang/String;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v14    # "headerOffset":J
    :catch_0
    move-exception v6

    .line 1800
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

    .line 1850
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

    .line 1859
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

    .line 1856
    :catch_3
    move-exception v9

    .line 1857
    .local v9, "ex":Ljava/lang/Throwable;
    :goto_8
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v25, "decodeTakenTime() - Unknown error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1858
    const-wide/16 v24, 0x0

    return-wide v24

    .line 1808
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

    .line 1810
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1811
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

    .line 1812
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1814
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v24, "yyyy:MM:dd"

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1817
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-wide v4

    .line 1818
    .local v4, "dateInMillies":J
    add-long/2addr v12, v4

    goto/16 :goto_1

    .line 1821
    .end local v4    # "dateInMillies":J
    :catch_4
    move-exception v6

    .line 1822
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_f
    const-string/jumbo v24, "ImageUtils"

    const-string/jumbo v27, "decodeTakenTime() - Error when parse GPS date stamp"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1850
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v24

    move-object v7, v8

    .end local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .local v7, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    goto/16 :goto_3

    .line 1827
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v8    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_6
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v24

    const/16 v27, 0x7

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1829
    invoke-virtual {v8}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v19

    .line 1830
    .local v19, "rationals":[Landroid/util/Rational;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_1

    .line 1832
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1834
    aget-object v24, v19, v16

    invoke-virtual/range {v24 .. v24}, Landroid/util/Rational;->getNumerator()I

    move-result v18

    .line 1835
    .local v18, "numberator":I
    if-nez v16, :cond_8

    .line 1836
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

    .line 1832
    :cond_7
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1837
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 1838
    mul-int/lit8 v24, v18, 0x3c

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    goto :goto_a

    .line 1839
    :cond_9
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1840
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    goto :goto_a

    .line 1842
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

    .line 1850
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

    .line 1859
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

    .line 1850
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

    .line 1853
    .end local v14    # "headerOffset":J
    :cond_f
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-lez v24, :cond_11

    .line 1859
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

    .line 1856
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

    .line 1853
    goto :goto_c

    .line 1859
    .end local v12    # "gpstime":J
    :catch_8
    move-exception v26

    goto :goto_d

    .line 1853
    :cond_12
    return-wide v12

    .line 1859
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

    .line 1850
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

    .line 1785
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

    .line 1738
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1740
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v6

    .line 1746
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

    .line 1743
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 1744
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

    .line 1745
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1746
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1740
    :cond_1
    return-wide v6

    .line 1746
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

    .line 1743
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1746
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
    .line 2027
    packed-switch p0, :pswitch_data_0

    .line 2039
    const/4 v0, 0x0

    return v0

    .line 2031
    :pswitch_0
    const/16 v0, 0xb4

    return v0

    .line 2034
    :pswitch_1
    const/16 v0, 0x5a

    return v0

    .line 2037
    :pswitch_2
    const/16 v0, 0x10e

    return v0

    .line 2027
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

    .line 2047
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2048
    :cond_0
    return v11

    .line 2049
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2050
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2051
    .local v1, "height":I
    if-lt v6, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 2052
    :cond_2
    return v11

    .line 2053
    :cond_3
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->lockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2058
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

    .line 2104
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 2069
    return v11

    .line 2061
    :pswitch_0
    const/4 v0, 0x2

    .line 2072
    .local v0, "bytesPerPixel":I
    :goto_0
    mul-int v5, v6, v0

    .line 2073
    .local v5, "stride":I
    :try_start_1
    new-array v4, v5, [B

    .line 2074
    .local v4, "row":[B
    new-array v2, v0, [B

    .line 2077
    .local v2, "pixel":[B
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2078
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2079
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2080
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2083
    add-int/lit8 v9, v1, -0x2

    mul-int/2addr v9, v5

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2084
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2085
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2088
    const/4 v7, 0x0

    .local v7, "y":I
    const/4 v8, 0x0

    .local v8, "yPixelOffset":I
    :goto_1
    if-ge v7, v1, :cond_4

    .line 2091
    add-int v9, v8, v0

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2092
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2093
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2094
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2097
    add-int/lit8 v9, v6, -0x2

    mul-int/2addr v9, v0

    add-int/2addr v9, v8

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2098
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2099
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v5

    goto :goto_1

    .line 2065
    .end local v0    # "bytesPerPixel":I
    .end local v2    # "pixel":[B
    .end local v4    # "row":[B
    .end local v5    # "stride":I
    .end local v7    # "y":I
    .end local v8    # "yPixelOffset":I
    :pswitch_1
    const/4 v0, 0x4

    .line 2066
    .restart local v0    # "bytesPerPixel":I
    goto :goto_0

    .line 2104
    .restart local v2    # "pixel":[B
    .restart local v4    # "row":[B
    .restart local v5    # "stride":I
    .restart local v7    # "y":I
    .restart local v8    # "yPixelOffset":I
    :cond_4
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 2106
    const/4 v9, 0x1

    return v9

    .line 2103
    .end local v0    # "bytesPerPixel":I
    .end local v2    # "pixel":[B
    .end local v4    # "row":[B
    .end local v5    # "stride":I
    .end local v7    # "y":I
    .end local v8    # "yPixelOffset":I
    :catchall_0
    move-exception v9

    .line 2104
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->unlockPixels(Landroid/graphics/Bitmap;)V

    .line 2103
    throw v9

    .line 2058
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
    .line 2120
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 2122
    const-string/jumbo v11, "ImageUtils"

    const-string/jumbo v14, "findTiffHeader() - No stream"

    invoke-static {v11, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    const/4 v11, 0x0

    return v11

    .line 2125
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2127
    const-string/jumbo v11, "ImageUtils"

    const-string/jumbo v14, "findTiffHeader() - No reference to receive result"

    invoke-static {v11, v14}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const/4 v11, 0x0

    return v11

    .line 2132
    :cond_1
    const-wide/16 v12, 0x0

    .line 2133
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

    .line 2134
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .local v4, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :try_start_1
    new-instance v9, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2137
    .local v9, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v11, 0x1003

    :try_start_2
    new-array v2, v11, [B

    .line 2141
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .local v2, "buffer":[B
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-nez v11, :cond_7

    .line 2143
    const/4 v11, 0x0

    const/16 v15, 0x1000

    invoke-virtual {v4, v2, v11, v15}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 2144
    .local v7, "realCount":I
    move v10, v7

    .line 2151
    .local v10, "tail":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    add-int/lit8 v11, v10, -0x3

    if-ge v6, v11, :cond_a

    .line 2153
    move-object/from16 v0, p2

    invoke-static {v2, v6, v0}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2155
    if-eqz p1, :cond_3

    .line 2156
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

    .line 2157
    :cond_3
    const/4 v15, 0x1

    .line 2171
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

    .line 2168
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/lang/Throwable;
    move-object v8, v9

    .end local v9    # "streamState":Lcom/oneplus/io/StreamState;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    move-object v3, v4

    .line 2169
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

    .line 2170
    const/4 v11, 0x0

    return v11

    .line 2148
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

    .line 2149
    .restart local v7    # "realCount":I
    add-int/lit8 v10, v7, 0x3

    .restart local v10    # "tail":I
    goto :goto_0

    .line 2171
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

    .line 2157
    :cond_8
    return v15

    .line 2159
    :cond_9
    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    .line 2151
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2161
    :cond_a
    const/16 v11, 0x1000

    if-ge v7, v11, :cond_f

    .line 2162
    const/4 v15, 0x0

    .line 2171
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

    .line 2162
    :cond_e
    return v15

    .line 2163
    :cond_f
    const/4 v6, 0x0

    :goto_7
    const/4 v11, 0x3

    if-ge v6, v11, :cond_2

    .line 2164
    rsub-int/lit8 v11, v6, 0x3

    sub-int v11, v10, v11

    :try_start_b
    aget-byte v11, v2, v11

    aput-byte v11, v2, v6
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2163
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2171
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

    .line 2168
    :catch_6
    move-exception v5

    .restart local v5    # "ex":Ljava/lang/Throwable;
    goto :goto_4

    .line 2171
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

.method public static findTiffHeader(Ljava/nio/channels/SeekableByteChannel;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    .locals 12
    .param p0, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SeekableByteChannel;",
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
    .line 2185
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 2187
    const-string/jumbo v7, "ImageUtils"

    const-string/jumbo v10, "findTiffHeader() - No channel"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const/4 v7, 0x0

    return v7

    .line 2190
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2192
    const-string/jumbo v7, "ImageUtils"

    const-string/jumbo v10, "findTiffHeader() - No reference to receive result"

    invoke-static {v7, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const/4 v7, 0x0

    return v7

    .line 2197
    :cond_1
    const-wide/16 v8, 0x0

    .line 2198
    .local v8, "tiffPosition":J
    const-wide/16 v4, -0x1

    .line 2201
    .local v4, "savedPosition":J
    :try_start_0
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    .line 2202
    const/16 v7, 0x1000

    new-array v1, v7, [B

    .line 2203
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2206
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 2208
    invoke-interface {p0, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-gtz v7, :cond_6

    .line 2209
    const/4 v7, 0x0

    .line 2239
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_3

    .line 2243
    :try_start_1
    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2209
    :cond_3
    :goto_0
    return v7

    .line 2246
    :catch_0
    move-exception v2

    .line 2247
    .local v2, "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "ImageUtils"

    const-string/jumbo v11, "findTiffHeader() - Fail to restore channel position"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2213
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2214
    invoke-interface {p0, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-gtz v7, :cond_6

    .line 2215
    const/4 v7, 0x0

    .line 2239
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_5

    .line 2243
    :try_start_3
    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2215
    :cond_5
    :goto_1
    return v7

    .line 2246
    :catch_1
    move-exception v2

    .line 2247
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "ImageUtils"

    const-string/jumbo v11, "findTiffHeader() - Fail to restore channel position"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2217
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 2218
    .local v6, "tail":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    add-int/lit8 v7, v6, -0x3

    if-ge v3, v7, :cond_a

    .line 2220
    invoke-static {v1, v3, p2}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2222
    if-eqz p1, :cond_7

    .line 2223
    add-long v10, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2224
    :cond_7
    const/4 v7, 0x1

    .line 2239
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_8

    .line 2243
    :try_start_5
    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 2224
    :cond_8
    :goto_3
    return v7

    .line 2246
    :catch_2
    move-exception v2

    .line 2247
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "ImageUtils"

    const-string/jumbo v11, "findTiffHeader() - Fail to restore channel position"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2226
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_9
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 2218
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2228
    :cond_a
    const/4 v3, 0x0

    :goto_4
    const/4 v7, 0x3

    if-ge v3, v7, :cond_2

    .line 2229
    rsub-int/lit8 v7, v3, 0x3

    sub-int v7, v6, v7

    :try_start_6
    aget-byte v7, v1, v7

    aput-byte v7, v1, v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2228
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2233
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    .end local v6    # "tail":I
    :catch_3
    move-exception v2

    .line 2234
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v7, "ImageUtils"

    const-string/jumbo v10, "findTiffHeader() - Unknown error"

    invoke-static {v7, v10, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2235
    const/4 v7, 0x0

    .line 2239
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_b

    .line 2243
    :try_start_8
    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 2235
    :cond_b
    :goto_5
    return v7

    .line 2246
    :catch_4
    move-exception v2

    .line 2247
    const-string/jumbo v10, "ImageUtils"

    const-string/jumbo v11, "findTiffHeader() - Fail to restore channel position"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2238
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 2239
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_c

    .line 2243
    :try_start_9
    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 2238
    :cond_c
    :goto_6
    throw v7

    .line 2246
    :catch_5
    move-exception v2

    .line 2247
    .restart local v2    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "ImageUtils"

    const-string/jumbo v11, "findTiffHeader() - Fail to restore channel position"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 2280
    if-nez p0, :cond_0

    .line 2282
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "getMimeType() - No stream"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    return-object v6

    .line 2285
    :cond_0
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    invoke-direct {v3, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2288
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v4, 0x8

    :try_start_1
    new-array v1, v4, [B

    .line 2289
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    if-ge v4, v5, :cond_3

    .line 2305
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

    .line 2302
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2303
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_1
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "getMimeType() - Cannot save stream position"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    return-object v6

    .line 2305
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 2290
    :cond_2
    return-object v6

    .line 2293
    :cond_3
    :try_start_4
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2294
    const-string/jumbo v5, "image/jpeg"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2305
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

    .line 2294
    :cond_5
    return-object v5

    .line 2295
    :cond_6
    :try_start_7
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2296
    const-string/jumbo v5, "image/png"
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2305
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

    .line 2296
    :cond_8
    return-object v5

    .line 2297
    :cond_9
    :try_start_a
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2298
    const-string/jumbo v5, "image/gif"
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2305
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

    .line 2298
    :cond_b
    return-object v5

    .line 2305
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

    .line 2299
    :cond_e
    return-object v6

    .line 2305
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

    .line 2302
    :catch_7
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 2305
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

    .line 2261
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2263
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 2269
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

    .line 2266
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v2

    .line 2267
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

    .line 2268
    return-object v5

    .line 2269
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 2263
    :cond_1
    return-object v4

    .line 2269
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

    .line 2266
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 2269
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

    .line 2317
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2319
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x3

    :try_start_1
    new-array v1, v4, [B

    .line 2320
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2326
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

    .line 2323
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2324
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isGifHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2325
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2320
    goto :goto_0

    .line 2326
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2320
    :cond_2
    return v4

    .line 2326
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

    .line 2323
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2326
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

    .line 2337
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 2338
    :cond_0
    return v1

    .line 2339
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

    .line 2351
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2353
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x2

    :try_start_1
    new-array v1, v4, [B

    .line 2354
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2360
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

    .line 2357
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2358
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isJfifHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2359
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2354
    goto :goto_0

    .line 2360
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2354
    :cond_2
    return v4

    .line 2360
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

    .line 2357
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2360
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

    .line 2371
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 2372
    :cond_0
    return v1

    .line 2373
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

    .line 2385
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2387
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v4, 0x8

    :try_start_1
    new-array v1, v4, [B

    .line 2388
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2394
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

    .line 2391
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2392
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isPngHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2393
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2388
    goto :goto_0

    .line 2394
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2388
    :cond_2
    return v4

    .line 2394
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

    .line 2391
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2394
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

    .line 2405
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 2406
    :cond_0
    return v1

    .line 2407
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x89

    if-ne v2, v3, :cond_3

    .line 2408
    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    .line 2409
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3

    .line 2410
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    .line 2411
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 2412
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3

    .line 2413
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    .line 2414
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_2

    .line 2407
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2414
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2407
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

    .line 2428
    const/4 v2, 0x0

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2430
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x4

    :try_start_1
    new-array v1, v4, [B

    .line 2431
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 2437
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

    .line 2434
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2435
    .end local v1    # "header":[B
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v4, "ImageUtils"

    const-string/jumbo v5, "isTiffHeader() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2436
    return v7

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v7

    .line 2431
    goto :goto_0

    .line 2437
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2431
    :cond_2
    return v4

    .line 2437
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

    .line 2434
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2437
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

    .line 2462
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2463
    :cond_0
    return v2

    .line 2464
    :cond_1
    if-gez p1, :cond_2

    .line 2465
    const/4 p1, 0x0

    .line 2466
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-le p1, v0, :cond_3

    .line 2467
    array-length v0, p0

    add-int/lit8 p1, v0, -0x4

    .line 2468
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

    .line 2470
    aget-byte v0, p0, p1

    if-ne v0, v5, :cond_6

    .line 2472
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_8

    .line 2474
    if-eqz p2, :cond_5

    .line 2475
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2476
    :cond_5
    return v3

    .line 2481
    :cond_6
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_8

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_8

    .line 2483
    if-eqz p2, :cond_7

    .line 2484
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2485
    :cond_7
    return v3

    .line 2489
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
    .line 2449
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

    .line 2500
    if-nez p0, :cond_0

    .line 2501
    return-object v1

    .line 2503
    :cond_0
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2504
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->nativeLockPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2506
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

    .line 2527
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2528
    :cond_0
    return-object v4

    .line 2531
    :cond_1
    const/4 v1, 0x0

    .line 2532
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 2534
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2539
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

    .line 2537
    .end local v1    # "image":Lcom/oneplus/media/EncodedImage;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2538
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

    .line 2540
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    return-object v1

    .line 2539
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

    .line 2577
    if-nez p0, :cond_0

    .line 2578
    return-object v1

    .line 2581
    :cond_0
    const/4 v0, 0x0

    .line 2582
    .local v0, "image":Lcom/oneplus/media/EncodedImage;
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2583
    invoke-static {p0}, Lcom/oneplus/media/JfifImage;->create(Ljava/io/InputStream;)Lcom/oneplus/media/JfifImage;

    move-result-object v0

    .line 2586
    .end local v0    # "image":Lcom/oneplus/media/EncodedImage;
    :cond_1
    return-object v0
.end method

.method public static parseImage(Ljava/lang/String;)Lcom/oneplus/media/EncodedImage;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2552
    if-nez p0, :cond_0

    .line 2553
    return-object v5

    .line 2556
    :cond_0
    const/4 v1, 0x0

    .line 2557
    .local v1, "image":Lcom/oneplus/media/EncodedImage;
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2559
    .end local v2    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->parseImage(Ljava/io/InputStream;)Lcom/oneplus/media/EncodedImage;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 2564
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

    .line 2562
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v3

    .line 2563
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

    .line 2565
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v1

    .line 2564
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

    .line 2562
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 2564
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

    .line 2617
    if-nez p0, :cond_0

    .line 2619
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "readPhotoMetadata() - No stream to check"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    return-object v10

    .line 2624
    :cond_0
    const/4 v6, 0x0

    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v7, Lcom/oneplus/io/StreamState;

    invoke-direct {v7, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2627
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 2628
    .local v4, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 2629
    .local v5, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-static {p0, v5}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v1

    .line 2630
    .local v1, "fromTiff":Z
    if-eqz v1, :cond_2

    .line 2631
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2634
    .end local v1    # "fromTiff":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 2637
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v12

    sub-long v2, v8, v12

    .line 2638
    .local v2, "headerOffset":J
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 2641
    new-instance v9, Lcom/oneplus/media/ExifMetadata;

    invoke-direct {v9, p0}, Lcom/oneplus/media/ExifMetadata;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2648
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

    .line 2645
    .end local v2    # "headerOffset":J
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v6, v7

    .line 2646
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    const-string/jumbo v8, "ImageUtils"

    const-string/jumbo v9, "readPhotoMetadata() - Unknown error"

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2647
    return-object v10

    .line 2633
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

    .line 2648
    .end local v1    # "fromTiff":Z
    .restart local v2    # "headerOffset":J
    :catch_1
    move-exception v8

    goto :goto_1

    .line 2641
    :cond_4
    return-object v9

    .line 2648
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

    .line 2645
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 2648
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

    .line 2650
    .restart local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_a
    return-object v10

    .line 2648
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

    .line 2597
    const/4 v1, 0x0

    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2599
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 2604
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

    .line 2602
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 2603
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v3, "ImageUtils"

    const-string/jumbo v4, "readPhotoMetadata() - Fail to read file"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    return-object v5

    .line 2604
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 2599
    :cond_1
    return-object v4

    .line 2604
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

    .line 2602
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 2604
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
    .line 2665
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 2666
    .local v3, "originalSrcPosition":I
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 2669
    .local v2, "originalResultPosition":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 2670
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

    .line 2707
    :catchall_0
    move-exception v9

    .line 2708
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2709
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2707
    throw v9

    .line 2671
    :cond_1
    const/4 v9, 0x4

    if-ge p3, v9, :cond_2

    .line 2672
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

    .line 2673
    :cond_2
    mul-int v9, p3, p1

    move/from16 v0, p4

    if-ge v0, v9, :cond_3

    .line 2674
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

    .line 2675
    :cond_3
    const/4 v9, 0x4

    if-ne p3, v9, :cond_6

    .line 2677
    mul-int/lit8 v1, p1, 0x4

    .line 2678
    .local v1, "minRowStride":I
    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    .line 2679
    move-object/from16 v0, p5

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2708
    .end local v1    # "minRowStride":I
    :cond_4
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2709
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2663
    return-void

    .line 2682
    .restart local v1    # "minRowStride":I
    :cond_5
    :try_start_2
    new-array v6, v1, [B

    .line 2683
    .local v6, "row":[B
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    if-ge v8, p2, :cond_4

    .line 2685
    mul-int v9, v8, p4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2686
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2687
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2683
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2693
    .end local v1    # "minRowStride":I
    .end local v6    # "row":[B
    .end local v8    # "y":I
    :cond_6
    const/4 v9, 0x4

    new-array v4, v9, [B

    .line 2694
    .local v4, "pixel":[B
    const/4 v8, 0x0

    .restart local v8    # "y":I
    :goto_1
    if-ge v8, p2, :cond_4

    .line 2696
    mul-int v5, v8, p4

    .line 2697
    .local v5, "pixelPosition":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    if-ge v7, p1, :cond_7

    .line 2699
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2700
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2701
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2697
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, p3

    goto :goto_2

    .line 2694
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

    .line 2727
    rem-int/lit16 p1, p1, 0x168

    .line 2728
    if-gez p1, :cond_0

    .line 2729
    add-int/lit16 p1, p1, 0x168

    .line 2730
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 2731
    :cond_1
    return-object p0

    .line 2734
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

    .line 2736
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 2737
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2738
    .local v8, "height":I
    mul-int v0, v12, v8

    mul-int/lit8 v7, v0, 0x4

    .line 2739
    .local v7, "dataSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 2740
    .local v11, "srcPixels":Ljava/nio/IntBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 2741
    .local v10, "rotatedPixels":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2742
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 2743
    invoke-static {v11, v12, v8, v10}, Lcom/oneplus/media/ImageUtils;->rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z

    .line 2744
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2745
    return-object v9

    .line 2749
    .end local v7    # "dataSize":I
    .end local v8    # "height":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "rotatedPixels":Ljava/nio/IntBuffer;
    .end local v11    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v12    # "width":I
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2750
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2751
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
    .line 2765
    sparse-switch p3, :sswitch_data_0

    .line 2777
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

    .line 2768
    :sswitch_0
    return-object p0

    .line 2771
    :sswitch_1
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 2772
    .local v0, "rotatedUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2773
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image90([BII[B)Z

    .line 2774
    :cond_0
    return-object v0

    .line 2765
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

    .line 2797
    rem-int/lit8 v0, p4, 0x2

    if-nez v0, :cond_0

    rem-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 2799
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

    .line 2800
    return v3

    .line 2803
    :cond_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 2805
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

    .line 2806
    return v3

    .line 2809
    :cond_3
    if-ne p1, p4, :cond_4

    if-ne p2, p5, :cond_4

    .line 2811
    mul-int v0, p4, p5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v3, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2812
    const/4 v0, 0x1

    return v0

    .line 2815
    :cond_4
    array-length v0, p3

    mul-int v1, p4, p5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    .line 2817
    const-string/jumbo v0, "ImageUtils"

    const-string/jumbo v1, "scaleNV21Image() - Invalid YUV data size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    return v3

    .line 2821
    :cond_5
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2822
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    move-result v0

    return v0

    .line 2824
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
    .line 2783
    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 2784
    return-object p0

    .line 2785
    :cond_0
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    rem-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 2786
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

    .line 2788
    :cond_2
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 2789
    .local v3, "scaledYUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 2790
    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    .line 2791
    :cond_3
    return-object v3
.end method

.method private static native scaleNV21ImageNative([BII[BII)Z
.end method

.method public static unlockPixels(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2844
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2845
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->nativeUnlockPixels(Landroid/graphics/Bitmap;)V

    .line 2842
    :cond_0
    return-void
.end method

.method private static updateTiffExposureTime(Ljava/nio/channels/SeekableByteChannel;Landroid/util/Rational;)Z
    .locals 26
    .param p0, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p1, "exposureTime"    # Landroid/util/Rational;

    .prologue
    .line 2852
    if-nez p0, :cond_0

    .line 2854
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - No channel"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const/16 v21, 0x0

    return v21

    .line 2857
    :cond_0
    if-nez p1, :cond_1

    .line 2859
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - No exposure time"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    const/16 v21, 0x0

    return v21

    .line 2864
    :cond_1
    const-wide/16 v18, -0x1

    .line 2868
    .local v18, "startPosition":J
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v18

    .line 2871
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 2872
    .local v5, "bytes":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2873
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2874
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 2875
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_2

    .line 2990
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2875
    :cond_2
    :goto_0
    return v21

    .line 2993
    :catch_0
    move-exception v8

    .line 2994
    .local v8, "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2876
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/16 v21, 0x4

    :try_start_2
    aget-byte v21, v5, v21

    const/16 v22, 0x49

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v21, 0x5

    aget-byte v21, v5, v21

    const/16 v22, 0x49

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2877
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2884
    :goto_1
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2885
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 2886
    .local v13, "intBuffer":Ljava/nio/IntBuffer;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2887
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 2888
    .local v14, "ifdOffset":J
    add-long v22, v18, v14

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2891
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2892
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v17

    .line 2893
    .local v17, "shortBuffer":Ljava/nio/ShortBuffer;
    sget-object v12, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    .line 2894
    .local v12, "ifd":Lcom/oneplus/media/Ifd;
    const-wide/16 v10, 0x0

    .line 2898
    .local v10, "exifIfdOffset":J
    :goto_2
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2899
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 2900
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_4

    .line 2990
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2900
    :cond_4
    :goto_3
    return v21

    .line 2878
    .end local v10    # "exifIfdOffset":J
    .end local v12    # "ifd":Lcom/oneplus/media/Ifd;
    .end local v13    # "intBuffer":Ljava/nio/IntBuffer;
    .end local v14    # "ifdOffset":J
    .end local v17    # "shortBuffer":Ljava/nio/ShortBuffer;
    :cond_5
    const/16 v21, 0x4

    :try_start_4
    aget-byte v21, v5, v21

    const/16 v22, 0x4d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v21, 0x5

    aget-byte v21, v5, v21

    const/16 v22, 0x4d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2879
    sget-object v21, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2981
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "bytes":[B
    :catch_1
    move-exception v8

    .line 2982
    .restart local v8    # "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - Fail to update"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-ltz v21, :cond_6

    .line 2990
    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 3001
    :cond_6
    :goto_4
    const/16 v21, 0x0

    return v21

    .line 2881
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "bytes":[B
    :cond_7
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_8

    .line 2990
    :try_start_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 2881
    :cond_8
    :goto_5
    return v21

    .line 2993
    :catch_2
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2993
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v10    # "exifIfdOffset":J
    .restart local v12    # "ifd":Lcom/oneplus/media/Ifd;
    .restart local v13    # "intBuffer":Ljava/nio/IntBuffer;
    .restart local v14    # "ifdOffset":J
    .restart local v17    # "shortBuffer":Ljava/nio/ShortBuffer;
    :catch_3
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2901
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_9
    const/16 v21, 0x5

    :try_start_8
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 2902
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ShortBuffer;->get()S

    move-result v21

    const v22, 0xffff

    and-int v16, v21, v22

    .line 2905
    .local v16, "remainingEntryCount":I
    :cond_a
    :goto_6
    if-lez v16, :cond_12

    .line 2908
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2909
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 2910
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_b

    .line 2990
    :try_start_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 2910
    :cond_b
    :goto_7
    return v21

    .line 2993
    :catch_4
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2911
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_c
    const/16 v21, 0x0

    :try_start_a
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 2912
    add-int/lit8 v16, v16, -0x1

    .line 2915
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ShortBuffer;->get()S

    move-result v21

    const v22, 0xffff

    and-int v9, v21, v22

    .line 2916
    .local v9, "id":I
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ShortBuffer;->get()S

    move-result v21

    const v22, 0xffff

    and-int v20, v21, v22

    .line 2917
    .local v20, "type":I
    const v21, 0x829a

    move/from16 v0, v21

    if-ne v9, v0, :cond_11

    .line 2919
    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2922
    :cond_d
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2923
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 2924
    .local v6, "dataOffset":J
    const-string/jumbo v21, "ImageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTiffExposureTime() - Data offset : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2928
    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 2929
    const/16 v21, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 2930
    invoke-interface/range {p0 .. p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v22

    const-wide/16 v24, 0xa

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2931
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2934
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2935
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2936
    invoke-virtual/range {p1 .. p1}, Landroid/util/Rational;->getNumerator()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 2937
    invoke-virtual/range {p1 .. p1}, Landroid/util/Rational;->getDenominator()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 2938
    add-long v22, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2939
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2942
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - Updated"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2943
    const/16 v21, 0x1

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_e

    .line 2990
    :try_start_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 2943
    :cond_e
    :goto_8
    return v21

    .line 2993
    :catch_5
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 2947
    .end local v6    # "dataOffset":J
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_f
    :try_start_c
    const-string/jumbo v21, "ImageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTiffExposureTime() - Unknwon data type of exporure time : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2948
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_10

    .line 2990
    :try_start_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 2948
    :cond_10
    :goto_9
    return v21

    .line 2993
    :catch_6
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 2951
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_11
    const v21, 0x8769

    move/from16 v0, v21

    if-ne v9, v0, :cond_a

    :try_start_e
    sget-object v21, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_a

    .line 2953
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 2954
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    goto/16 :goto_6

    .line 2959
    .end local v9    # "id":I
    .end local v20    # "type":I
    :cond_12
    invoke-static {}, Lcom/oneplus/media/ImageUtils;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v21

    invoke-virtual {v12}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 2975
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - Exposure time entry not found"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2976
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_13

    .line 2990
    :try_start_f
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 2976
    :cond_13
    :goto_a
    return v21

    .line 2962
    :pswitch_0
    const-wide/16 v22, 0x0

    cmp-long v21, v10, v22

    if-lez v21, :cond_14

    .line 2964
    :try_start_10
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - Move to EXIF IFD"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    add-long v22, v18, v10

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2966
    sget-object v12, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    goto/16 :goto_2

    .line 2970
    :cond_14
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - No EXIF IFD"

    invoke-static/range {v21 .. v22}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2971
    const/16 v21, 0x0

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_15

    .line 2990
    :try_start_11
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 2971
    :cond_15
    :goto_b
    return v21

    .line 2993
    :catch_7
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 2993
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_8
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 2993
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "bytes":[B
    .end local v10    # "exifIfdOffset":J
    .end local v12    # "ifd":Lcom/oneplus/media/Ifd;
    .end local v13    # "intBuffer":Ljava/nio/IntBuffer;
    .end local v14    # "ifdOffset":J
    .end local v16    # "remainingEntryCount":I
    .end local v17    # "shortBuffer":Ljava/nio/ShortBuffer;
    :catch_9
    move-exception v8

    .line 2994
    const-string/jumbo v21, "ImageUtils"

    const-string/jumbo v22, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 2985
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v21

    .line 2986
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-ltz v22, :cond_16

    .line 2990
    :try_start_12
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    .line 2985
    :cond_16
    :goto_c
    throw v21

    .line 2993
    :catch_a
    move-exception v8

    .line 2994
    .restart local v8    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v22, "ImageUtils"

    const-string/jumbo v23, "updateTiffExposureTime() - Fail to restore channel position"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 2959
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
