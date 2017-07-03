.class public final Lcom/oneplus/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$media$Ifd:[I = null

.field public static final FLAG_MUTABLE:I = 0x8

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x2

.field public static final FLAG_OPAQUE:I = 0x10

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x1

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x4

.field private static final LARGE_IMAGE_SIZE_THRESHOLD:I = 0x17d7840

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final m_BitmapFilterPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$media$Ifd()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/media/ImageUtils;->$SWITCH_TABLE$com$oneplus$media$Ifd:[I

    if-eqz v0, :cond_0

    :goto_0
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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/media/ImageUtils;->$SWITCH_TABLE$com$oneplus$media$Ifd:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    .line 77
    sget-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method private static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 89
    const/4 v2, 0x2

    .line 90
    .local v2, "sampleSize":I
    shr-int/lit8 v1, p0, 0x1

    .line 91
    .local v1, "decodeWidth":I
    shr-int/lit8 v0, p1, 0x1

    .line 92
    .local v0, "decodeHeight":I
    :goto_0
    if-gt v1, p2, :cond_0

    if-gt v0, p3, :cond_0

    .line 98
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 94
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 95
    shr-int/lit8 v1, v1, 0x1

    .line 96
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v12, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 113
    .local v6, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 114
    .local v5, "originalHeight":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 115
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 118
    if-ne p1, v6, :cond_0

    if-ne p2, v5, :cond_0

    .line 134
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 122
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v10, v6

    int-to-float v11, p1

    div-float v8, v10, v11

    .line 123
    .local v8, "ratioX":F
    int-to-float v10, v5

    int-to-float v11, p2

    div-float v9, v10, v11

    .line 124
    .local v9, "ratioY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 125
    .local v7, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v7

    float-to-int v3, v10

    .line 126
    .local v3, "cropWidth":I
    int-to-float v10, p2

    mul-float/2addr v10, v7

    float-to-int v1, v10

    .line 127
    .local v1, "cropHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v2, "cropRect":Landroid/graphics/Rect;
    sub-int v10, v6, v3

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v1

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 132
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v11, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v4

    .line 134
    goto :goto_0
.end method

.method public static copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 150
    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 177
    :goto_0
    return v6

    .line 154
    :cond_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "exif":Landroid/media/ExifInterface;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v4, "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, p2

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_2

    .line 162
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    .line 163
    goto :goto_0

    .line 158
    :cond_2
    aget-object v6, p2, v3

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 160
    aget-object v6, p2, v3

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 166
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/media/ExifInterface;

    .end local v2    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 169
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    move v6, v8

    .line 172
    goto :goto_0

    .line 167
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 174
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i":I
    .end local v4    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 176
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "copyExif() - Fail to copy from \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static createBitmapFromRgbaBuffer(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "rgbaBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I
    .param p5, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p6, "dstBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    if-nez p0, :cond_0

    move-object v1, p6

    .line 208
    .end local p6    # "dstBitmap":Landroid/graphics/Bitmap;
    .local v1, "dstBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 197
    .end local v1    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local p6    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_0
    mul-int v2, p1, p2

    mul-int/lit8 v0, v2, 0x4

    .line 198
    .local v0, "capacity":I
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 199
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    .line 202
    :goto_1
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->removeArgbPaddings(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;)V

    .line 205
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 206
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 207
    :cond_3
    invoke-virtual {p6, p5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move-object v1, p6

    .line 208
    .end local p6    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "dstBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 201
    .end local v1    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local p6    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static createBitmapFromRgbaImagePlane(Landroid/media/Image;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 221
    if-nez p0, :cond_1

    .line 229
    .end local p2    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 223
    .restart local p2    # "dstBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 224
    .local v8, "planes":[Landroid/media/Image$Plane;
    array-length v1, v8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v7, v8, v1

    .line 226
    .local v7, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
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

    move-result-object p2

    goto :goto_0
.end method

.method public static createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 243
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 244
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 245
    .local v0, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v0, p2, :cond_1

    .line 246
    move-object v2, p0

    .line 252
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-ne v2, p0, :cond_0

    .line 253
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 254
    :cond_0
    return-object v2

    .line 249
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0, p1, p2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 250
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
    .line 265
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
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 278
    if-nez p0, :cond_0

    move-object v3, v5

    .line 292
    :goto_0
    return-object v3

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 283
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 284
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 286
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v4, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 287
    .local v3, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 288
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 284
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 307
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

    .line 320
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 321
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 322
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1

    .line 323
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 324
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 325
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 326
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 328
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 329
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 332
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 335
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
    .line 551
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
    .line 531
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 32
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 574
    and-int/lit8 v6, p4, 0x10

    if-eqz v6, :cond_c

    const/16 v20, 0x1

    .line 577
    .local v20, "isOpaque":Z
    :goto_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v18

    .line 578
    .local v18, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v19

    .line 581
    .local v19, "isJfifHeader":Z
    if-nez p1, :cond_0

    .line 582
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 583
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0x10e

    if-eq v6, v7, :cond_d

    const/16 v26, 0x0

    .line 586
    .local v26, "swapWidthHeight":Z
    :goto_1
    const/4 v5, 0x0

    .line 591
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_15

    .line 595
    const/4 v7, 0x0

    :try_start_1
    new-instance v25, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 597
    .local v25, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v21

    .line 598
    .local v21, "movie":Landroid/graphics/Movie;
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/graphics/Movie;->setTime(I)Z

    .line 599
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Movie;->width()I

    move-result v24

    .line 600
    .local v24, "originalWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Movie;->height()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v23

    .line 601
    .local v23, "originalHeight":I
    if-eqz v25, :cond_1

    :try_start_3
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 602
    :cond_1
    const/16 v17, 0x1

    .line 603
    .local v17, "isFromMovie":Z
    const/4 v12, 0x0

    .line 604
    .local v12, "bitmapFromDecoder":Landroid/graphics/Bitmap;
    if-lez v24, :cond_2

    if-gtz v23, :cond_4

    .line 606
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    new-instance v25, Lcom/oneplus/io/StreamState;

    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 609
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :try_start_5
    const-string v6, "ImageUtils"

    const-string v8, "decodeBitmap() - Fail to get width and height by movie, try to use GifDecoder!"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v15, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v15}, Lcom/oneplus/util/GifDecoder;-><init>()V

    .line 611
    .local v15, "gifDecoder":Lcom/oneplus/util/GifDecoder;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 612
    invoke-virtual {v15}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 614
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lcom/oneplus/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 615
    .local v16, "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_3

    .line 617
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 618
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 619
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 620
    const/16 v17, 0x0

    .line 621
    const-string v6, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "decodeBitmap() - decode by GifDecoder width:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v16    # "gifDecoderNativeBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v15}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 625
    if-eqz v25, :cond_4

    :try_start_6
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 627
    .end local v15    # "gifDecoder":Lcom/oneplus/util/GifDecoder;
    :cond_4
    :try_start_7
    move/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 628
    if-eqz v20, :cond_5

    .line 629
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 631
    :cond_5
    if-eqz v17, :cond_14

    .line 632
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 639
    :cond_6
    :goto_2
    if-eqz v26, :cond_7

    .line 641
    move/from16 v30, v24

    .line 642
    .local v30, "temp":I
    move/from16 v24, v23

    .line 643
    move/from16 v23, v30

    .line 647
    .end local v30    # "temp":I
    :cond_7
    const/4 v6, 0x1

    move/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v28

    .line 648
    .local v28, "targetSize":Landroid/util/Size;
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getWidth()I

    move-result v29

    .line 649
    .local v29, "targetWidth":I
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getHeight()I

    move-result v27

    .line 711
    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    .local v27, "targetHeight":I
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move/from16 v0, v29

    if-ne v6, v0, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, v27

    if-eq v6, v0, :cond_a

    .line 713
    :cond_9
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 714
    .local v10, "matrix":Landroid/graphics/Matrix;
    if-eqz v26, :cond_1f

    .line 715
    move/from16 v0, v29

    int-to-float v6, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 718
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 719
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 724
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_a
    if-eqz v20, :cond_b

    if-nez v19, :cond_b

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v6, :cond_b

    .line 725
    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->createWithBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v5

    .line 733
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "isGifHeader":Z
    .end local v19    # "isJfifHeader":Z
    .end local v23    # "originalHeight":I
    .end local v24    # "originalWidth":I
    .end local v26    # "swapWidthHeight":Z
    .end local v27    # "targetHeight":I
    .end local v28    # "targetSize":Landroid/util/Size;
    .end local v29    # "targetWidth":I
    :cond_b
    :goto_4
    return-object v5

    .line 574
    .end local v20    # "isOpaque":Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 583
    .restart local v18    # "isGifHeader":Z
    .restart local v19    # "isJfifHeader":Z
    .restart local v20    # "isOpaque":Z
    :cond_d
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 601
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v26    # "swapWidthHeight":Z
    :catchall_0
    move-exception v6

    if-eqz v25, :cond_e

    :try_start_8
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V

    :cond_e
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v7

    move-object/from16 v31, v7

    move-object v7, v6

    move-object/from16 v6, v31

    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_5
    if-nez v7, :cond_f

    :goto_6
    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 730
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "isGifHeader":Z
    .end local v19    # "isJfifHeader":Z
    .end local v26    # "swapWidthHeight":Z
    :catch_0
    move-exception v14

    .line 732
    .local v14, "ex":Ljava/lang/Throwable;
    const-string v6, "ImageUtils"

    const-string v7, "decodeBitmap() - Fail to decode bitmap"

    invoke-static {v6, v7, v14}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    const/4 v5, 0x0

    goto :goto_4

    .line 601
    .end local v14    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "isGifHeader":Z
    .restart local v19    # "isJfifHeader":Z
    .restart local v26    # "swapWidthHeight":Z
    :cond_f
    if-eq v7, v6, :cond_10

    :try_start_a
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_10
    move-object v6, v7

    goto :goto_6

    .line 625
    .restart local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v17    # "isFromMovie":Z
    .restart local v21    # "movie":Landroid/graphics/Movie;
    .restart local v23    # "originalHeight":I
    .restart local v24    # "originalWidth":I
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v6

    if-eqz v25, :cond_11

    :try_start_b
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V

    :cond_11
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v7

    move-object/from16 v31, v7

    move-object v7, v6

    move-object/from16 v6, v31

    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_7
    if-nez v7, :cond_12

    :goto_8
    :try_start_c
    throw v6

    :cond_12
    if-eq v7, v6, :cond_13

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    move-object v6, v7

    goto :goto_8

    .line 633
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_14
    if-eqz v12, :cond_6

    .line 635
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v12, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 654
    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v23    # "originalHeight":I
    .end local v24    # "originalWidth":I
    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_15
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 655
    .local v22, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    move-object/from16 v0, v22

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 656
    const/4 v7, 0x0

    :try_start_d
    new-instance v25, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 658
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    const/4 v6, 0x0

    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 659
    if-eqz v25, :cond_16

    :try_start_f
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 664
    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_16
    :goto_9
    :try_start_10
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    .line 665
    .restart local v24    # "originalWidth":I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    .line 668
    .restart local v23    # "originalHeight":I
    if-eqz v26, :cond_17

    .line 670
    move/from16 v30, v24

    .line 671
    .restart local v30    # "temp":I
    move/from16 v24, v23

    .line 672
    move/from16 v23, v30

    .line 676
    .end local v30    # "temp":I
    :cond_17
    const/4 v6, 0x1

    move/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v28

    .line 677
    .restart local v28    # "targetSize":Landroid/util/Size;
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getWidth()I

    move-result v29

    .line 678
    .restart local v29    # "targetWidth":I
    invoke-virtual/range {v28 .. v28}, Landroid/util/Size;->getHeight()I

    move-result v27

    .line 681
    .restart local v27    # "targetHeight":I
    move/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v29

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v6

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 684
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    mul-int v6, v24, v23

    const v7, 0x17d7840

    if-lt v6, v7, :cond_18

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/media/ImageUtils;->decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 691
    :cond_18
    if-nez v5, :cond_1a

    .line 693
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 694
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1e

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, v22

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 695
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 696
    const/4 v6, 0x1

    move-object/from16 v0, v22

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 697
    and-int/lit8 v6, p4, 0x8

    if-eqz v6, :cond_19

    .line 698
    const/4 v6, 0x1

    move-object/from16 v0, v22

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 699
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 702
    :cond_1a
    if-nez v5, :cond_8

    .line 704
    const-string v6, "ImageUtils"

    const-string v7, "decodeBitmap() - Fail to decode image"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    .line 705
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 659
    .end local v23    # "originalHeight":I
    .end local v24    # "originalWidth":I
    .end local v27    # "targetHeight":I
    .end local v28    # "targetSize":Landroid/util/Size;
    .end local v29    # "targetWidth":I
    .restart local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_4
    move-exception v7

    if-eqz v25, :cond_1b

    :try_start_11
    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/io/StreamState;->close()V

    :cond_1b
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .end local v25    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v6

    if-nez v7, :cond_1c

    :goto_b
    :try_start_12
    throw v6
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    .line 660
    :catch_1
    move-exception v13

    .line 662
    .local v13, "e":Ljava/lang/Throwable;
    :try_start_13
    const-string v6, "ImageUtils"

    const-string v7, "Fail to decode stream"

    invoke-static {v6, v7, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_9

    .line 659
    .end local v13    # "e":Ljava/lang/Throwable;
    :cond_1c
    if-eq v7, v6, :cond_1d

    :try_start_14
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1

    :cond_1d
    move-object v6, v7

    goto :goto_b

    .line 694
    .restart local v23    # "originalHeight":I
    .restart local v24    # "originalWidth":I
    .restart local v27    # "targetHeight":I
    .restart local v28    # "targetSize":Landroid/util/Size;
    .restart local v29    # "targetWidth":I
    :cond_1e
    const/4 v6, 0x0

    goto :goto_a

    .line 717
    .end local v22    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_1f
    move/from16 v0, v29

    int-to-float v6, v0

    :try_start_15
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_3

    .line 625
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v27    # "targetHeight":I
    .end local v28    # "targetSize":Landroid/util/Size;
    .end local v29    # "targetWidth":I
    .restart local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .restart local v17    # "isFromMovie":Z
    .restart local v21    # "movie":Landroid/graphics/Movie;
    :catchall_6
    move-exception v6

    goto/16 :goto_7

    .line 601
    .end local v12    # "bitmapFromDecoder":Landroid/graphics/Bitmap;
    .end local v17    # "isFromMovie":Z
    .end local v21    # "movie":Landroid/graphics/Movie;
    .end local v23    # "originalHeight":I
    .end local v24    # "originalWidth":I
    :catchall_7
    move-exception v6

    goto/16 :goto_5
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 401
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 438
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_3

    const/16 v20, 0x1

    .line 439
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 440
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_4

    .line 442
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_4

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_4

    .line 446
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 447
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 453
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 454
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 456
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 457
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 470
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

    .line 472
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 473
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 474
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 475
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 476
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 477
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 479
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    .line 480
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 516
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_2
    :goto_3
    return-object v14

    .line 438
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 462
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :sswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 463
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 464
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 498
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "temp":I
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 502
    :cond_4
    if-eqz v20, :cond_7

    .line 503
    const/4 v14, 0x0

    goto :goto_3

    .line 474
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 481
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 488
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 491
    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 492
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 493
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

    .line 485
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_1
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 486
    goto :goto_4

    .line 506
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_7
    const/4 v4, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v8, "stream":Ljava/io/FileInputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 508
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 509
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_8

    .line 510
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "decodeBitmap() - Fail to decode \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 512
    :cond_8
    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :goto_5
    if-nez v4, :cond_a

    :goto_6
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 513
    :catch_1
    move-exception v15

    .line 515
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decodeBitmap() - Fail to decode \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 511
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    .line 512
    if-eqz v8, :cond_9

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto :goto_5

    .end local v8    # "stream":Ljava/io/FileInputStream;
    :cond_a
    if-eq v4, v3, :cond_b

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_b
    move-object v3, v4

    goto :goto_6

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 481
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
    .line 415
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
    .line 348
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 381
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 383
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 384
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 387
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 383
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    .line 384
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-nez v3, :cond_2

    :goto_2
    :try_start_4
    throw v2

    .line 385
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v4

    .line 387
    goto :goto_0

    .line 384
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmapProgressively(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 37
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 739
    const-string v33, "ImageUtils"

    const-string v34, "decodeBitmapProgressively() - start"

    invoke-static/range {v33 .. v34}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/16 v5, 0x400

    .line 742
    .local v5, "decodeGridSize":I
    const/16 v20, 0x0

    .line 743
    .local v20, "targetBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 747
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v12

    .line 748
    .local v12, "orientation":I
    const-string v33, "ImageUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "decodeBitmapProgressively() - orientation : "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 752
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v14

    .line 753
    .local v14, "originalWidth":I
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v13

    .line 754
    .local v13, "originalHeight":I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 755
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v33, 0x0

    move/from16 v0, v33

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 756
    and-int/lit8 v33, p3, 0x1

    if-eqz v33, :cond_6

    const/16 v33, 0x1

    :goto_0
    move/from16 v0, v33

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 757
    move-object/from16 v0, p4

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 758
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 759
    and-int/lit8 v33, p3, 0x8

    if-eqz v33, :cond_0

    .line 760
    const/16 v33, 0x1

    move/from16 v0, v33

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 763
    :cond_0
    const/16 v33, 0x5a

    move/from16 v0, v33

    if-eq v12, v0, :cond_1

    const/16 v33, 0x10e

    move/from16 v0, v33

    if-ne v12, v0, :cond_7

    .line 765
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 766
    move/from16 v24, p1

    .line 767
    .local v24, "temp":I
    move/from16 p1, p2

    .line 768
    move/from16 p2, v24

    .line 772
    .end local v24    # "temp":I
    :goto_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    int-to-float v0, v14

    move/from16 v34, v0

    div-float v15, v33, v34

    .line 773
    .local v15, "ratioX":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    int-to-float v0, v13

    move/from16 v34, v0

    div-float v16, v33, v34

    .line 774
    .local v16, "ratioY":F
    const/high16 v33, 0x44800000    # 1024.0f

    mul-float v33, v33, v15

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 775
    .local v23, "targetGridWidth":I
    const/high16 v33, 0x44800000    # 1024.0f

    mul-float v33, v33, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 778
    .local v22, "targetGridHeight":I
    const-string v33, "ImageUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "decodeBitmapProgressively() - originalWidth : "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " , originalHeight : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v33, "ImageUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "decodeBitmapProgressively() - targetWidth : "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " , targetHeight : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v25, 0x0

    .line 784
    .local v25, "x":I
    :goto_2
    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    .line 785
    .local v27, "xStart":I
    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    add-int/lit8 v26, v33, -0x1

    .line 786
    .local v26, "xEnd":I
    move/from16 v0, v26

    if-lt v0, v14, :cond_2

    .line 787
    add-int/lit8 v26, v14, -0x1

    .line 789
    :cond_2
    const/16 v29, 0x0

    .line 792
    .local v29, "y":I
    :goto_3
    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x400

    move/from16 v31, v0

    .line 793
    .local v31, "yStart":I
    move/from16 v0, v31

    add-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    add-int/lit8 v30, v33, -0x1

    .line 794
    .local v30, "yEnd":I
    move/from16 v0, v30

    if-lt v0, v13, :cond_3

    .line 795
    add-int/lit8 v30, v13, -0x1

    .line 798
    :cond_3
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v26

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 799
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 802
    .local v18, "regionBitmap":Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 803
    .local v21, "targetCanvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 804
    .local v19, "src":Landroid/graphics/Rect;
    mul-int v28, v25, v23

    .line 805
    .local v28, "xTargetStart":I
    mul-int v32, v29, v22

    .line 806
    .local v32, "yTargetStart":I
    move/from16 v9, v23

    .line 807
    .local v9, "dstWidth":I
    move/from16 v8, v22

    .line 808
    .local v8, "dstHeight":I
    add-int/lit8 v33, v14, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 809
    mul-int v33, v25, v23

    sub-int v9, p1, v33

    .line 810
    :cond_4
    add-int/lit8 v33, v13, -0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 811
    mul-int v33, v29, v22

    sub-int v8, p2, v33

    .line 812
    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    add-int v33, v28, v9

    add-int v34, v32, v8

    move/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .local v7, "dst":Landroid/graphics/Rect;
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    add-int/lit8 v33, v13, -0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 819
    add-int/lit8 v33, v14, -0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 829
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
    .end local v21    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v22    # "targetGridHeight":I
    .end local v23    # "targetGridWidth":I
    .end local v25    # "x":I
    .end local v26    # "xEnd":I
    .end local v27    # "xStart":I
    .end local v28    # "xTargetStart":I
    .end local v29    # "y":I
    .end local v30    # "yEnd":I
    .end local v31    # "yStart":I
    .end local v32    # "yTargetStart":I
    :goto_4
    const-string v33, "ImageUtils"

    const-string v34, "decodeBitmapProgressively() - end"

    invoke-static/range {v33 .. v34}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-object v20

    .line 756
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "orientation":I
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 771
    :cond_7
    :try_start_1
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto/16 :goto_1

    .line 789
    .restart local v7    # "dst":Landroid/graphics/Rect;
    .restart local v8    # "dstHeight":I
    .restart local v9    # "dstWidth":I
    .restart local v15    # "ratioX":F
    .restart local v16    # "ratioY":F
    .restart local v17    # "rect":Landroid/graphics/Rect;
    .restart local v18    # "regionBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "src":Landroid/graphics/Rect;
    .restart local v21    # "targetCanvas":Landroid/graphics/Canvas;
    .restart local v22    # "targetGridHeight":I
    .restart local v23    # "targetGridWidth":I
    .restart local v25    # "x":I
    .restart local v26    # "xEnd":I
    .restart local v27    # "xStart":I
    .restart local v28    # "xTargetStart":I
    .restart local v29    # "y":I
    .restart local v30    # "yEnd":I
    .restart local v31    # "yStart":I
    .restart local v32    # "yTargetStart":I
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 781
    :cond_9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 823
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
    .end local v21    # "targetCanvas":Landroid/graphics/Canvas;
    .end local v22    # "targetGridHeight":I
    .end local v23    # "targetGridWidth":I
    .end local v25    # "x":I
    .end local v26    # "xEnd":I
    .end local v27    # "xStart":I
    .end local v28    # "xTargetStart":I
    .end local v29    # "y":I
    .end local v30    # "yEnd":I
    .end local v31    # "yStart":I
    .end local v32    # "yTargetStart":I
    :catch_0
    move-exception v10

    .line 825
    .local v10, "ex":Ljava/lang/Throwable;
    const-string v33, "ImageUtils"

    const-string v34, "decodeBitmapProgressively() - Fail to decode bitmap"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    const/16 v20, 0x0

    goto :goto_4
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1041
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
    .line 1021
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 36
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1064
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_4

    const/16 v23, 0x1

    .line 1067
    .local v23, "isOpaque":Z
    :goto_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v21

    .line 1068
    .local v21, "isGifHeader":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v22

    .line 1071
    .local v22, "isJfifHeader":Z
    if-nez p1, :cond_0

    .line 1072
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1073
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10e

    if-eq v4, v5, :cond_5

    const/16 v33, 0x0

    .line 1076
    .local v33, "swapWidthHeight":Z
    :goto_1
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1077
    .local v25, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1078
    const/4 v5, 0x0

    :try_start_1
    new-instance v32, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1080
    .local v32, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1081
    if-eqz v32, :cond_1

    :try_start_3
    invoke-virtual/range {v32 .. v32}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1089
    :cond_1
    :try_start_4
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v28, v0

    .line 1090
    .local v28, "originalWidth":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 1091
    .local v27, "originalHeight":I
    if-lez v28, :cond_2

    if-gtz v27, :cond_9

    .line 1093
    :cond_2
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to get bitmap size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1094
    const/4 v3, 0x0

    .line 1187
    .end local v21    # "isGifHeader":Z
    .end local v22    # "isJfifHeader":Z
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v27    # "originalHeight":I
    .end local v28    # "originalWidth":I
    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v33    # "swapWidthHeight":Z
    :cond_3
    :goto_2
    return-object v3

    .line 1064
    .end local v23    # "isOpaque":Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_0

    .line 1073
    .restart local v21    # "isGifHeader":Z
    .restart local v22    # "isJfifHeader":Z
    .restart local v23    # "isOpaque":Z
    :cond_5
    const/16 v33, 0x1

    goto :goto_1

    .line 1081
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v33    # "swapWidthHeight":Z
    :catchall_0
    move-exception v5

    if-eqz v32, :cond_6

    :try_start_5
    invoke-virtual/range {v32 .. v32}, Lcom/oneplus/io/StreamState;->close()V

    :cond_6
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v4

    if-nez v5, :cond_7

    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1082
    :catch_0
    move-exception v18

    .line 1084
    .local v18, "e":Ljava/lang/Throwable;
    :try_start_7
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to decode stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 1085
    const/4 v3, 0x0

    goto :goto_2

    .line 1081
    .end local v18    # "e":Ljava/lang/Throwable;
    :cond_7
    if-eq v5, v4, :cond_8

    :try_start_8
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    move-object v4, v5

    goto :goto_3

    .line 1096
    .restart local v27    # "originalHeight":I
    .restart local v28    # "originalWidth":I
    .restart local v32    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_9
    if-eqz v33, :cond_a

    .line 1098
    move/from16 v35, p2

    .line 1099
    .local v35, "temp":I
    move/from16 p2, p3

    .line 1100
    move/from16 p3, v35

    .line 1104
    .end local v35    # "temp":I
    :cond_a
    :try_start_9
    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1105
    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1106
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1107
    .local v30, "ratioX":F
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1108
    .local v31, "ratioY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1109
    .local v29, "ratio":F
    move/from16 v0, v28

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v0, v4

    move/from16 v16, v0

    .line 1110
    .local v16, "decodeWidth":I
    move/from16 v0, v27

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v14, v4

    .line 1113
    .local v14, "decodeHeight":I
    mul-int v15, v16, v14

    .line 1114
    .local v15, "decodePixelCount":I
    mul-int v34, p2, p3

    .line 1117
    .local v34, "targetPixelCount":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1118
    .local v12, "cropRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1119
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1120
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1121
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_b

    .line 1122
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1123
    :cond_b
    const/16 v20, 0x0

    .line 1124
    .local v20, "isCropped":Z
    if-eqz v21, :cond_f

    .line 1127
    invoke-static/range {p0 .. p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v24

    .line 1128
    .local v24, "movie":Landroid/graphics/Movie;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 1129
    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1130
    .local v26, "originalBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 1155
    .end local v24    # "movie":Landroid/graphics/Movie;
    :goto_5
    if-nez v20, :cond_c

    .line 1157
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1158
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1159
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1160
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v13, v4

    .line 1161
    .local v13, "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v11, v4

    .line 1162
    .local v11, "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1163
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1167
    .end local v11    # "cropHeight":I
    .end local v13    # "cropWidth":I
    :cond_c
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1168
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_d

    if-nez v22, :cond_d

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    if-eq v0, v4, :cond_d

    .line 1169
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1172
    :cond_d
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1173
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

    .line 1176
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1178
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1179
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1180
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_2

    .line 1119
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "isCropped":Z
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1132
    .restart local v20    # "isCropped":Z
    :cond_f
    div-int/lit8 v4, v15, 0x2

    move/from16 v0, v34

    if-gt v0, v4, :cond_10

    .line 1135
    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v30, v4, v5

    .line 1136
    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v31, v4, v5

    .line 1137
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(FF)F

    move-result v29

    .line 1138
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v13, v4

    .line 1139
    .restart local v13    # "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v29

    float-to-int v11, v4

    .line 1140
    .restart local v11    # "cropHeight":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v17

    .line 1141
    .local v17, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    sub-int v4, v28, v13

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v27, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1143
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1144
    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1145
    const/16 v20, 0x1

    .line 1146
    goto/16 :goto_5

    .line 1150
    .end local v11    # "cropHeight":I
    .end local v13    # "cropWidth":I
    .end local v17    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_10
    move/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v14}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1151
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v26

    .restart local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 1184
    .end local v12    # "cropRect":Landroid/graphics/Rect;
    .end local v14    # "decodeHeight":I
    .end local v15    # "decodePixelCount":I
    .end local v16    # "decodeWidth":I
    .end local v20    # "isCropped":Z
    .end local v21    # "isGifHeader":Z
    .end local v22    # "isJfifHeader":Z
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v26    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v27    # "originalHeight":I
    .end local v28    # "originalWidth":I
    .end local v29    # "ratio":F
    .end local v30    # "ratioX":F
    .end local v31    # "ratioY":F
    .end local v32    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v33    # "swapWidthHeight":Z
    .end local v34    # "targetPixelCount":I
    :catch_1
    move-exception v19

    .line 1186
    .local v19, "ex":Ljava/lang/Throwable;
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to decode"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1187
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 896
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 933
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_5

    const/16 v20, 0x1

    .line 934
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 935
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_8

    .line 937
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_8

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_8

    .line 941
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 942
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 945
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 948
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 949
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 950
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 951
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 952
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 954
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 955
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 956
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 960
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

    .line 962
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 963
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 964
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 965
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 966
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 967
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_8

    .line 969
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    .line 970
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1006
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_4
    :goto_2
    return-object v14

    .line 933
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 964
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 971
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 978
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 981
    :goto_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 982
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 983
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

    .line 975
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_0
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 976
    goto :goto_3

    .line 988
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 992
    :cond_8
    if-eqz v20, :cond_9

    .line 993
    const/4 v14, 0x0

    goto :goto_2

    .line 996
    :cond_9
    const/4 v4, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v8, "stream":Ljava/io/FileInputStream;
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 998
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 999
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_a

    .line 1000
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1002
    :cond_a
    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :goto_4
    if-nez v4, :cond_c

    :goto_5
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1003
    :catch_1
    move-exception v15

    .line 1005
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1006
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1001
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    .line 1002
    if-eqz v8, :cond_b

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_b
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto :goto_4

    .end local v8    # "stream":Ljava/io/FileInputStream;
    :cond_c
    if-eq v4, v3, :cond_d

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_d
    move-object v3, v4

    goto :goto_5

    .line 971
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
    .line 910
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
    .line 842
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 876
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 878
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 879
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 882
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 878
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    .line 879
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-nez v3, :cond_2

    :goto_2
    :try_start_4
    throw v2

    .line 880
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v4

    .line 882
    goto :goto_0

    .line 879
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOrientation(Ljava/io/InputStream;)I
    .locals 19
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1219
    if-nez p0, :cond_1

    .line 1221
    const-string v11, "ImageUtils"

    const-string v12, "decodeOrientation() - No stream to check"

    invoke-static {v11, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const/4 v11, 0x0

    .line 1269
    :cond_0
    :goto_0
    return v11

    .line 1226
    :cond_1
    const/4 v13, 0x0

    :try_start_0
    new-instance v10, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1229
    .local v10, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1230
    .local v8, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1231
    .local v9, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v5

    .line 1232
    .local v5, "fromTiff":Z
    if-eqz v5, :cond_6

    .line 1233
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1236
    :goto_1
    if-eqz v5, :cond_4

    .line 1239
    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v16

    sub-long v6, v14, v16

    .line 1242
    .local v6, "headerOffset":J
    const/4 v12, 0x0

    :try_start_2
    new-instance v3, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1244
    .local v3, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-nez v11, :cond_8

    .line 1259
    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1261
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v6    # "headerOffset":J
    :cond_4
    if-eqz v10, :cond_5

    :try_start_5
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1269
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 1235
    :cond_6
    :try_start_6
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v11

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    :goto_2
    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 1246
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v6    # "headerOffset":J
    :cond_8
    :try_start_7
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v11

    sget-object v14, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    if-ne v11, v14, :cond_3

    .line 1248
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v11

    const/16 v14, 0x112

    if-ne v11, v14, :cond_2

    .line 1250
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 1251
    .local v2, "data":[I
    if-eqz v2, :cond_3

    array-length v11, v2

    if-lez v11, :cond_3

    .line 1252
    const/4 v11, 0x0

    aget v11, v2, v11

    invoke-static {v11}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v11

    .line 1259
    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1261
    :cond_9
    if-eqz v10, :cond_0

    :try_start_9
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1259
    .end local v2    # "data":[I
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V

    :cond_a
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v12

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v18

    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_3
    if-nez v12, :cond_c

    :goto_4
    :try_start_b
    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1261
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_2
    move-exception v11

    if-eqz v10, :cond_b

    :try_start_c
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V

    :cond_b
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v12

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v18

    .end local v10    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_5
    if-nez v12, :cond_e

    :goto_6
    :try_start_d
    throw v11
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 1262
    :catch_0
    move-exception v4

    .line 1264
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v11, "ImageUtils"

    const-string v12, "decodeOrientation() - Unknown error"

    invoke-static {v11, v12, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1265
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1259
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v10    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_c
    if-eq v12, v11, :cond_d

    :try_start_e
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_d
    move-object v11, v12

    goto :goto_4

    .line 1261
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v10    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_e
    if-eq v12, v11, :cond_f

    :try_start_f
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    :cond_f
    move-object v11, v12

    goto :goto_6

    :catchall_4
    move-exception v11

    move-object v12, v13

    goto :goto_5

    .line 1259
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v10    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v11

    goto :goto_3
.end method

.method public static decodeOrientation(Ljava/lang/String;)I
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1199
    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1201
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1202
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1206
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 1201
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1202
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    if-nez v3, :cond_2

    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeOrientation() - Fail to access file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1206
    const/4 v2, 0x0

    goto :goto_0

    .line 1202
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public static decodeSize(Ljava/io/InputStream;)Landroid/util/Size;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1443
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 10
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
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1455
    if-nez p0, :cond_1

    .line 1457
    const-string v5, "ImageUtils"

    const-string v6, "decodeSize() - No stream"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 1485
    :cond_0
    :goto_0
    return-object v5

    .line 1460
    :cond_1
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    invoke-direct {v3, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v0

    .line 1464
    .local v0, "decodedOrientation":I
    const/16 v5, 0x5a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x10e

    if-eq v0, v5, :cond_2

    const/4 v4, 0x0

    .line 1465
    .local v4, "swapWidthHeight":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 1466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1469
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1470
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1471
    const/4 v5, 0x0

    invoke-static {p0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1474
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_5

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_5

    .line 1476
    if-eqz v4, :cond_4

    .line 1477
    new-instance v5, Landroid/util/Size;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v5, v6, v8}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1481
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "decodedOrientation":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v4    # "swapWidthHeight":Z
    :catchall_0
    move-exception v5

    move-object v6, v7

    :goto_1
    if-nez v6, :cond_8

    :goto_2
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1482
    :catch_0
    move-exception v1

    .line 1484
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v5, "ImageUtils"

    const-string v6, "decodeSize() - Fail to decode"

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 1485
    goto :goto_0

    .line 1478
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "decodedOrientation":I
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "swapWidthHeight":Z
    :cond_4
    :try_start_4
    new-instance v5, Landroid/util/Size;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v5, v6, v8}, Landroid/util/Size;-><init>(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1481
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move-object v5, v7

    .line 1480
    goto :goto_0

    .end local v0    # "decodedOrientation":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "swapWidthHeight":Z
    :catchall_1
    move-exception v5

    .line 1481
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V

    :cond_7
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_1

    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_8
    if-eq v6, v5, :cond_9

    :try_start_7
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    move-object v5, v6

    goto :goto_2
.end method

.method public static decodeSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1412
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 6
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
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1424
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1426
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1427
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1431
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 1426
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1427
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-nez v3, :cond_2

    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "decodeSize() - Fail to open \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 1431
    goto :goto_0

    .line 1427
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static decodeTakenTime(Ljava/io/InputStream;)J
    .locals 29
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1298
    if-nez p0, :cond_1

    .line 1300
    const-string v22, "ImageUtils"

    const-string v23, "decodeTakenTime() - No stream to check"

    invoke-static/range {v22 .. v23}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-wide/16 v22, 0x0

    .line 1400
    :cond_0
    :goto_0
    return-wide v22

    .line 1305
    :cond_1
    const/16 v24, 0x0

    :try_start_0
    new-instance v21, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    .local v21, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v14, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1309
    .local v14, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v16, Lcom/oneplus/base/SimpleRef;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1310
    .local v16, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v9

    .line 1311
    .local v9, "fromTiff":Z
    const-wide/16 v10, 0x0

    .line 1312
    .local v10, "gpstime":J
    const-wide/16 v18, 0x0

    .line 1313
    .local v18, "origintime":J
    if-eqz v9, :cond_4

    .line 1314
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1317
    :goto_1
    if-eqz v9, :cond_3

    .line 1320
    invoke-interface {v14}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v26

    sub-long v12, v22, v26

    .line 1323
    .local v12, "headerOffset":J
    const/16 v23, 0x0

    :try_start_2
    new-instance v7, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v12, v13}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1325
    .local v7, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v22

    if-nez v22, :cond_6

    .line 1392
    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1395
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v12    # "headerOffset":J
    :cond_3
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_10

    move-wide/from16 v22, v10

    .line 1396
    :goto_3
    if-eqz v21, :cond_0

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v9    # "fromTiff":Z
    .end local v10    # "gpstime":J
    .end local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v18    # "origintime":J
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_0
    move-exception v22

    move-object/from16 v23, v24

    :goto_4
    if-nez v23, :cond_11

    :goto_5
    :try_start_6
    throw v22
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1397
    :catch_0
    move-exception v8

    .line 1399
    .local v8, "ex":Ljava/lang/Throwable;
    const-string v22, "ImageUtils"

    const-string v23, "decodeTakenTime() - Unknown error"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1400
    const-wide/16 v22, 0x0

    goto/16 :goto_0

    .line 1316
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "fromTiff":Z
    .restart local v10    # "gpstime":J
    .restart local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v18    # "origintime":J
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_4
    :try_start_7
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v22

    if-eqz v22, :cond_5

    const/4 v9, 0x1

    :goto_6
    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    .line 1327
    .restart local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v12    # "headerOffset":J
    :cond_6
    :try_start_8
    invoke-static {}, Lcom/oneplus/media/ImageUtils;->$SWITCH_TABLE$com$oneplus$media$Ifd()[I

    move-result-object v22

    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v25

    aget v22, v22, v25

    packed-switch v22, :pswitch_data_0

    goto :goto_2

    .line 1330
    :pswitch_0
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v22

    const v25, 0x9003

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1332
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1333
    .local v3, "dateTime":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1335
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1338
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_9
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v18

    goto :goto_2

    .line 1340
    :catch_1
    move-exception v6

    .line 1342
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_a
    const-string v22, "ImageUtils"

    const-string v25, "decodeTakenTime() - Error when parse date time original"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 1392
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v22

    if-eqz v7, :cond_7

    :try_start_b
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V

    :cond_7
    throw v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v23

    move-object/from16 v28, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v28

    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :goto_7
    if-nez v23, :cond_e

    :goto_8
    :try_start_c
    throw v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1395
    .end local v9    # "fromTiff":Z
    .end local v10    # "gpstime":J
    .end local v12    # "headerOffset":J
    .end local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v18    # "origintime":J
    :catchall_3
    move-exception v22

    .line 1396
    if-eqz v21, :cond_8

    :try_start_d
    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/io/StreamState;->close()V

    :cond_8
    throw v22
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v23

    move-object/from16 v28, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v28

    goto/16 :goto_4

    .line 1350
    .restart local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v9    # "fromTiff":Z
    .restart local v10    # "gpstime":J
    .restart local v12    # "headerOffset":J
    .restart local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v18    # "origintime":J
    :pswitch_1
    :try_start_e
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v22

    const/16 v25, 0x1d

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 1352
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    .restart local v3    # "dateTime":Ljava/lang/String;
    const-string v22, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "decodeTakenTime() - ENTRY_ID_GPS_DATE_STAMP: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1356
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy:MM:dd"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1359
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_f
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v4

    .line 1360
    .local v4, "dateInMillies":J
    add-long/2addr v10, v4

    goto/16 :goto_2

    .line 1362
    .end local v4    # "dateInMillies":J
    :catch_2
    move-exception v6

    .line 1364
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_10
    const-string v22, "ImageUtils"

    const-string v25, "decodeTakenTime() - Error when parse GPS date stamp"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1369
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v22

    const/16 v25, 0x7

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1371
    invoke-virtual {v7}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v20

    .line 1372
    .local v20, "rationals":[Landroid/util/Rational;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 1374
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_a

    .line 1384
    const-string v22, "ImageUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "decodeTakenTime() - ENTRY_ID_GPS_TIME_STAMP: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1376
    :cond_a
    aget-object v22, v20, v15

    invoke-virtual/range {v22 .. v22}, Landroid/util/Rational;->getNumerator()I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v17

    .line 1377
    .local v17, "numberator":I
    if-nez v15, :cond_c

    .line 1378
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v10, v10, v26

    .line 1374
    :cond_b
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1379
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_d

    .line 1380
    mul-int/lit8 v22, v17, 0x3c

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v10, v10, v26

    goto :goto_a

    .line 1381
    :cond_d
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v15, v0, :cond_b

    .line 1382
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v10, v10, v26

    goto :goto_a

    .line 1392
    .end local v7    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v15    # "i":I
    .end local v17    # "numberator":I
    .end local v20    # "rationals":[Landroid/util/Rational;
    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    :try_start_11
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_f
    move-object/from16 v22, v23

    goto/16 :goto_8

    .end local v12    # "headerOffset":J
    :cond_10
    move-wide/from16 v22, v18

    .line 1395
    goto/16 :goto_3

    .line 1396
    .end local v9    # "fromTiff":Z
    .end local v10    # "gpstime":J
    .end local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v18    # "origintime":J
    .end local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_11
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    :try_start_12
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    :cond_12
    move-object/from16 v22, v23

    goto/16 :goto_5

    .line 1392
    .restart local v9    # "fromTiff":Z
    .restart local v10    # "gpstime":J
    .restart local v12    # "headerOffset":J
    .restart local v14    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v16    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v18    # "origintime":J
    .restart local v21    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_5
    move-exception v22

    goto/16 :goto_7

    .line 1327
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decodeTakenTime(Ljava/lang/String;)J
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1280
    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1282
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1283
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1287
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-wide v2

    .line 1282
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1283
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-nez v3, :cond_2

    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1284
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeTakenTime() - Fail to access file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1287
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1283
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1493
    packed-switch p0, :pswitch_data_0

    .line 1505
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1497
    :pswitch_0
    const/16 v0, 0xb4

    goto :goto_0

    .line 1500
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1503
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 1493
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
    .line 1520
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 1522
    const-string v9, "ImageUtils"

    const-string v12, "findTiffHeader() - No stream"

    invoke-static {v9, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const/4 v9, 0x0

    .line 1570
    :goto_0
    return v9

    .line 1525
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1527
    const-string v9, "ImageUtils"

    const-string v12, "findTiffHeader() - No reference to receive result"

    invoke-static {v9, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const/4 v9, 0x0

    goto :goto_0

    .line 1532
    :cond_1
    const-wide/16 v10, 0x0

    .line 1533
    .local v10, "tiffPosition":J
    const/4 v12, 0x0

    :try_start_0
    new-instance v3, Lcom/oneplus/io/BufferedInputStream;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1534
    .local v3, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1537
    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v9, 0x1003

    :try_start_2
    new-array v2, v9, [B

    .line 1541
    .local v2, "buffer":[B
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_5

    .line 1543
    const/4 v9, 0x0

    const/16 v13, 0x1000

    invoke-virtual {v3, v2, v9, v13}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 1544
    .local v6, "realCount":I
    move v8, v6

    .line 1551
    .local v8, "tail":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    add-int/lit8 v9, v8, -0x3

    if-lt v5, v9, :cond_6

    .line 1561
    const/16 v9, 0x1000

    if-ge v6, v9, :cond_b

    .line 1566
    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1562
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 1548
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v8    # "tail":I
    :cond_5
    const/4 v9, 0x3

    const/16 v13, 0x1000

    :try_start_5
    invoke-virtual {v3, v2, v9, v13}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 1549
    .restart local v6    # "realCount":I
    add-int/lit8 v8, v6, 0x3

    .restart local v8    # "tail":I
    goto :goto_1

    .line 1553
    .restart local v5    # "i":I
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v2, v5, v0}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1555
    if-eqz p1, :cond_7

    .line 1556
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1566
    :cond_7
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_8
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1557
    :cond_9
    const/4 v9, 0x1

    goto :goto_0

    .line 1559
    :cond_a
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    .line 1551
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1563
    :cond_b
    const/4 v5, 0x0

    :goto_3
    const/4 v9, 0x3

    if-ge v5, v9, :cond_2

    .line 1564
    rsub-int/lit8 v9, v5, 0x3

    sub-int v9, v8, v9

    :try_start_8
    aget-byte v9, v2, v9

    aput-byte v9, v2, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1563
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1538
    .end local v2    # "buffer":[B
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v8    # "tail":I
    :catchall_0
    move-exception v9

    .line 1566
    if-eqz v7, :cond_c

    :try_start_9
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V

    :cond_c
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v12

    move-object/from16 v16, v12

    move-object v12, v9

    move-object/from16 v9, v16

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_4
    if-nez v12, :cond_f

    move-object v12, v9

    :cond_d
    :goto_5
    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V

    :cond_e
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    if-nez v12, :cond_10

    :goto_6
    :try_start_b
    throw v9
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 1567
    :catch_0
    move-exception v4

    .line 1569
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v9, "ImageUtils"

    const-string v12, "findTiffHeader() - Unknown error"

    invoke-static {v9, v12, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1570
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1566
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :cond_f
    if-eq v12, v9, :cond_d

    :try_start_c
    invoke-virtual {v12, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :cond_10
    if-eq v12, v9, :cond_11

    :try_start_d
    invoke-virtual {v12, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :cond_11
    move-object v9, v12

    goto :goto_6

    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    :catchall_3
    move-exception v9

    goto :goto_4
.end method

.method public static getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1601
    if-nez p0, :cond_0

    .line 1603
    const-string v3, "ImageUtils"

    const-string v4, "getMimeType() - No stream"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 1625
    :goto_0
    return-object v3

    .line 1606
    :cond_0
    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    invoke-direct {v2, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1609
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/16 v3, 0x8

    :try_start_1
    new-array v1, v3, [B

    .line 1610
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ge v3, v4, :cond_2

    .line 1621
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    move-object v3, v5

    .line 1611
    goto :goto_0

    .line 1614
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1621
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1615
    :cond_3
    :try_start_5
    const-string v3, "image/jpeg"

    goto :goto_0

    .line 1616
    :cond_4
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 1621
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1617
    :cond_5
    :try_start_7
    const-string v3, "image/png"

    goto :goto_0

    .line 1618
    :cond_6
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 1621
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1619
    :cond_7
    :try_start_9
    const-string v3, "image/gif"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 1621
    :cond_8
    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    move-object v3, v5

    .line 1620
    goto :goto_0

    .end local v1    # "header":[B
    :catchall_0
    move-exception v3

    .line 1621
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V

    :cond_a
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_1
    if-nez v4, :cond_b

    :goto_2
    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 1622
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "getMimeType() - Cannot save stream position"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 1625
    goto :goto_0

    .line 1621
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_b
    if-eq v4, v3, :cond_c

    :try_start_d
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :cond_c
    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v4, v5

    goto :goto_1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1582
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1584
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1585
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1589
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 1584
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 1585
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-nez v3, :cond_2

    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getMimeType() - Fail to open \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 1589
    goto :goto_0

    .line 1585
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    if-eq v3, v2, :cond_3

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static isGifHeader(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 1638
    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1640
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v3, 0x3

    :try_start_1
    new-array v1, v3, [B

    .line 1641
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isGifHeader([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1642
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1646
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v3

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v3, v5

    .line 1641
    goto :goto_0

    .end local v1    # "header":[B
    :catchall_0
    move-exception v3

    .line 1642
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    if-nez v4, :cond_3

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1645
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "isGifHeader() - Unknown error"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 1646
    goto :goto_1

    .line 1642
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eq v4, v3, :cond_4

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2
.end method

.method public static isGifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1658
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1660
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isJfifHeader(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1672
    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1674
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v3, 0x2

    :try_start_1
    new-array v1, v3, [B

    .line 1675
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1676
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1680
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v3

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v3, v5

    .line 1675
    goto :goto_0

    .end local v1    # "header":[B
    :catchall_0
    move-exception v3

    .line 1676
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    if-nez v4, :cond_3

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "isJfifHeader() - Unknown error"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 1680
    goto :goto_1

    .line 1676
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eq v4, v3, :cond_4

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2
.end method

.method public static isJfifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1692
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1694
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

.method public static isPngHeader([B)Z
    .locals 5
    .param p0, "header"    # [B

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1705
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1707
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x89

    if-ne v2, v3, :cond_3

    .line 1708
    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    .line 1709
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3

    .line 1710
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    .line 1711
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 1712
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3

    .line 1713
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    .line 1714
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-eq v2, v4, :cond_1

    :cond_3
    move v0, v1

    .line 1707
    goto :goto_0
.end method

.method public static isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 1728
    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1730
    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v3, 0x4

    :try_start_1
    new-array v1, v3, [B

    .line 1731
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1732
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1736
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v3

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v3, v5

    .line 1731
    goto :goto_0

    .end local v1    # "header":[B
    :catchall_0
    move-exception v3

    .line 1732
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_2
    if-nez v4, :cond_3

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1733
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "isTiffHeader() - Unknown error"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 1736
    goto :goto_1

    .line 1732
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-eq v4, v3, :cond_4

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_2
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1762
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1789
    :cond_1
    :goto_0
    return v0

    .line 1764
    :cond_2
    if-gez p1, :cond_3

    .line 1765
    const/4 p1, 0x0

    .line 1766
    :cond_3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-le p1, v2, :cond_4

    .line 1767
    array-length v2, p0

    add-int/lit8 p1, v2, -0x4

    .line 1768
    :cond_4
    aget-byte v2, p0, p1

    if-eq v2, v5, :cond_5

    aget-byte v2, p0, p1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_7

    :cond_5
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, p1

    if-ne v2, v3, :cond_7

    .line 1770
    aget-byte v2, p0, p1

    if-ne v2, v5, :cond_6

    .line 1772
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_7

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_7

    .line 1774
    if-eqz p2, :cond_1

    .line 1775
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1781
    :cond_6
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_7

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-nez v2, :cond_7

    .line 1783
    if-eqz p2, :cond_1

    .line 1784
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 1789
    goto :goto_0
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
    .line 1749
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method public static readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    .locals 15
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1820
    if-nez p0, :cond_1

    .line 1822
    const-string v7, "ImageUtils"

    const-string v8, "readPhotoMetadata() - No stream to check"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    .line 1853
    :cond_0
    :goto_0
    return-object v7

    .line 1827
    :cond_1
    :try_start_0
    new-instance v6, Lcom/oneplus/io/StreamState;

    invoke-direct {v6, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1831
    .local v4, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1832
    .local v5, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-static {p0, v5}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v1

    .line 1833
    .local v1, "fromTiff":Z
    if-eqz v1, :cond_2

    .line 1834
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1837
    :goto_1
    if-eqz v1, :cond_4

    .line 1840
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1841
    .local v2, "headerOffset":J
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 1844
    new-instance v7, Lcom/oneplus/media/ExifMetadata;

    invoke-direct {v7, p0}, Lcom/oneplus/media/ExifMetadata;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1846
    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "fromTiff":Z
    .end local v2    # "headerOffset":J
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_0
    move-exception v7

    move-object v8, v9

    :goto_2
    if-nez v8, :cond_7

    :goto_3
    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1847
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v7, "ImageUtils"

    const-string v8, "readPhotoMetadata() - Unknown error"

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v9

    .line 1850
    goto :goto_0

    .line 1836
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "fromTiff":Z
    .restart local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v4, v5}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    :goto_4
    goto :goto_1

    :cond_3
    move v1, v7

    goto :goto_4

    .line 1846
    :cond_4
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    move-object v7, v9

    .line 1853
    goto :goto_0

    .line 1846
    .end local v1    # "fromTiff":Z
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_1
    move-exception v7

    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V

    :cond_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v8

    move-object v14, v8

    move-object v8, v7

    move-object v7, v14

    goto :goto_2

    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_7
    if-eq v8, v7, :cond_8

    :try_start_7
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_8
    move-object v7, v8

    goto :goto_3
.end method

.method public static readPhotoMetadata(Ljava/lang/String;)Lcom/oneplus/media/PhotoMetadata;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1802
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1808
    :goto_0
    return-object v1

    .line 1804
    :catch_0
    move-exception v0

    .line 1806
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ImageUtils"

    const-string v2, "readPhotoMetadata() - Fail to read file"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const/4 v1, 0x0

    goto :goto_0
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
    .line 1868
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1869
    .local v3, "originalSrcPosition":I
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1872
    .local v2, "originalResultPosition":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1873
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid size : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

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

    .line 1910
    :catchall_0
    move-exception v9

    .line 1911
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1912
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1913
    throw v9

    .line 1874
    :cond_1
    const/4 v9, 0x4

    if-ge p3, v9, :cond_2

    .line 1875
    :try_start_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid pixel stride : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1876
    :cond_2
    mul-int v9, p3, p1

    move/from16 v0, p4

    if-ge v0, v9, :cond_3

    .line 1877
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid row stride : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1878
    :cond_3
    const/4 v9, 0x4

    if-ne p3, v9, :cond_6

    .line 1880
    mul-int/lit8 v1, p1, 0x4

    .line 1881
    .local v1, "minRowStride":I
    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    .line 1882
    move-object/from16 v0, p5

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    .end local v1    # "minRowStride":I
    :cond_4
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1912
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1914
    return-void

    .line 1885
    .restart local v1    # "minRowStride":I
    :cond_5
    :try_start_2
    new-array v6, v1, [B

    .line 1886
    .local v6, "row":[B
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    if-ge v8, p2, :cond_4

    .line 1888
    mul-int v9, v8, p4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1889
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1890
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1886
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1896
    .end local v1    # "minRowStride":I
    .end local v6    # "row":[B
    .end local v8    # "y":I
    :cond_6
    const/4 v9, 0x4

    new-array v4, v9, [B

    .line 1897
    .local v4, "pixel":[B
    const/4 v8, 0x0

    .restart local v8    # "y":I
    :goto_1
    if-ge v8, p2, :cond_4

    .line 1899
    mul-int v5, v8, p4

    .line 1900
    .local v5, "pixelPosition":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    if-lt v7, p1, :cond_7

    .line 1897
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1902
    :cond_7
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1903
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1904
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1900
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, p3

    goto :goto_2
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 1926
    rem-int/lit16 p1, p1, 0x168

    .line 1927
    if-gez p1, :cond_0

    .line 1928
    add-int/lit16 p1, p1, 0x168

    .line 1929
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v9, p0

    .line 1950
    :goto_0
    return-object v9

    .line 1933
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

    .line 1935
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1936
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1937
    .local v8, "height":I
    mul-int v0, v12, v8

    mul-int/lit8 v7, v0, 0x4

    .line 1938
    .local v7, "dataSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1939
    .local v11, "srcPixels":Ljava/nio/IntBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 1940
    .local v10, "rotatedPixels":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1941
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1942
    invoke-static {v11, v12, v8, v10}, Lcom/oneplus/media/ImageUtils;->rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z

    .line 1943
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 1948
    .end local v7    # "dataSize":I
    .end local v8    # "height":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "rotatedPixels":Ljava/nio/IntBuffer;
    .end local v11    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v12    # "width":I
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1949
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1950
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
    .line 1964
    sparse-switch p3, :sswitch_data_0

    .line 1976
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid rotation degrees : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1970
    :sswitch_0
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 1971
    .local v0, "rotatedUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1972
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image90([BII[B)Z

    :cond_0
    move-object p0, v0

    .line 1973
    .end local v0    # "rotatedUV":[B
    .end local p0    # "srcYuv":[B
    :sswitch_1
    return-object p0

    .line 1964
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

.method public static scaleNV21Image([BII[BII)Z
    .locals 4
    .param p0, "srcYuv"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "scaledYuv"    # [B
    .param p4, "scaledWidth"    # I
    .param p5, "scaledHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1996
    rem-int/lit8 v1, p4, 0x2

    if-nez v1, :cond_0

    rem-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_2

    .line 1998
    :cond_0
    const-string v1, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scaleNV21Image() - scaledWidthL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or scaledHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not divisible by 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_1
    :goto_0
    return v0

    .line 2002
    :cond_2
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    .line 2004
    :cond_3
    const-string v1, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scaleNV21Image() - srcWidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or srcHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not divisible by 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_4
    if-ne p1, p4, :cond_5

    if-ne p2, p5, :cond_5

    .line 2010
    mul-int v1, p4, p5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2011
    const/4 v0, 0x1

    goto :goto_0

    .line 2014
    :cond_5
    array-length v1, p3

    mul-int v2, p4, p5

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_6

    .line 2016
    const-string v1, "ImageUtils"

    const-string v2, "scaleNV21Image() - Invalid YUV data size"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2020
    :cond_6
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2021
    invoke-static/range {p0 .. p5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    move-result v0

    goto :goto_0
.end method

.method public static scaleNV21Image([BIIII)[B
    .locals 6
    .param p0, "srcYuv"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "scaledWidth"    # I
    .param p4, "scaledHeight"    # I

    .prologue
    .line 1982
    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 1990
    .end local p0    # "srcYuv":[B
    :goto_0
    return-object p0

    .line 1984
    .restart local p0    # "srcYuv":[B
    :cond_0
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    rem-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 1985
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scaledWidthL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or scaledHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not divisible by 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1987
    :cond_2
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 1988
    .local v3, "scaledYUV":[B
    invoke-static {}, Lcom/oneplus/base/NativeLibrary;->load()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1989
    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->scaleNV21ImageNative([BII[BII)Z

    :cond_3
    move-object p0, v3

    .line 1990
    goto :goto_0
.end method

.method private static native scaleNV21ImageNative([BII[BII)Z
.end method
