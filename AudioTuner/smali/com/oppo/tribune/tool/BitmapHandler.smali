.class public Lcom/oppo/tribune/tool/BitmapHandler;
.super Ljava/lang/Object;
.source "BitmapHandler.java"


# static fields
.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final IMAGE_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field private static mBitmapHandler:Lcom/oppo/tribune/tool/BitmapHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/oppo/tribune/tool/BitmapHandler;

    invoke-direct {v0}, Lcom/oppo/tribune/tool/BitmapHandler;-><init>()V

    sput-object v0, Lcom/oppo/tribune/tool/BitmapHandler;->mBitmapHandler:Lcom/oppo/tribune/tool/BitmapHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/oppo/tribune/tool/BitmapHandler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/tribune/tool/BitmapHandler;->mBitmapHandler:Lcom/oppo/tribune/tool/BitmapHandler;

    return-object v0
.end method

.method private getRightSample(I)I
    .locals 10
    .param p1, "sample"    # I

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 127
    if-gt p1, v1, :cond_0

    .line 132
    :goto_0
    return v1

    .line 130
    :cond_0
    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v2, v4, v6

    .line 131
    .local v2, "log":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 132
    .local v0, "ceil":I
    int-to-double v4, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0
.end method


# virtual methods
.method public clipPicture(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 222
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 224
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 227
    .local v11, "srcWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 229
    .local v9, "srcHeight":I
    move/from16 v0, p2

    int-to-float v13, v0

    int-to-float v14, v11

    div-float v12, v13, v14

    .line 230
    .local v12, "widthScale":F
    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v9

    div-float v7, v13, v14

    .line 231
    .local v7, "heightScale":F
    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 233
    .local v8, "scale":F
    int-to-float v13, v11

    move/from16 v0, p2

    int-to-float v14, v0

    div-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v5, v13

    .line 234
    .local v5, "dx":I
    int-to-float v13, v9

    move/from16 v0, p3

    int-to-float v14, v0

    div-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v6, v13

    .line 236
    .local v6, "dy":I
    new-instance v10, Landroid/graphics/Rect;

    sub-int v13, v11, v5

    sub-int v14, v9, v6

    invoke-direct {v10, v5, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 237
    .local v10, "srcRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v13, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v4, "dstRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 240
    return-object v2
.end method

.method public clipPicture(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/tribune/tool/BitmapHandler;->readBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, v1, p2, p3}, Lcom/oppo/tribune/tool/BitmapHandler;->clipPicture(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 215
    const/4 v1, 0x0

    .line 218
    :cond_0
    return-object v0
.end method

.method public getBitmapInfo(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 139
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 143
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Integer;

    .line 144
    .local v0, "args":[Ljava/lang/Integer;
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 145
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 147
    return-object v0
.end method

.method public getImageFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 97
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public readBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxSize"    # I

    .prologue
    .line 105
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, v4, v5

    .line 110
    .local v3, "size":I
    if-le v3, p2, :cond_0

    .line 111
    int-to-double v4, v3

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/oppo/tribune/tool/BitmapHandler;->getRightSample(I)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/tool/BitmapHandler;->rotateBitmapAngle(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "angle":I
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/oppo/tribune/tool/BitmapHandler;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public readBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    .line 244
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 245
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 248
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v3, p2

    .line 249
    .local v2, "widthScale":I
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v0, v3, p3

    .line 250
    .local v0, "heightScale":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 252
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 253
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 255
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public readBitmapOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 262
    return-object v0
.end method

.method public readCompressBitmapIfOversized(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxSize"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 272
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 273
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 275
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v3, v4

    .line 276
    .local v2, "size":I
    if-le v2, p2, :cond_0

    .line 277
    int-to-double v4, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 280
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    :cond_0
    return-object v0
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 159
    move-object v7, p1

    .line 160
    .local v7, "oldBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 162
    if-eq v7, p1, :cond_0

    .line 163
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    const/4 v7, 0x0

    .line 167
    :cond_0
    return-object p1
.end method

.method public rotateBitmapAngle(Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "angle":I
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 176
    :cond_0
    const/4 v2, 0x0

    .line 178
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .local v3, "exifInterface":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 183
    .end local v3    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_1

    .line 184
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 186
    .local v4, "orientation":I
    if-eq v4, v6, :cond_1

    .line 187
    packed-switch v4, :pswitch_data_0

    .line 198
    :pswitch_0
    const/4 v0, 0x0

    .line 204
    .end local v4    # "orientation":I
    :cond_1
    :goto_1
    return v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 190
    goto :goto_1

    .line 192
    :pswitch_2
    const/16 v0, 0xb4

    .line 193
    goto :goto_1

    .line 195
    :pswitch_3
    const/16 v0, 0x10e

    .line 196
    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, "successed":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 304
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    const/4 v4, 0x1

    .line 322
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v4

    .line 309
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 310
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 314
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 316
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    if-ltz p3, :cond_2

    const/16 v4, 0x64

    if-le p3, v4, :cond_3

    :cond_2
    const/16 p3, 0x50

    .line 317
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v4, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 319
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 320
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parent":Ljava/io/File;
    :cond_4
    move v4, v3

    .line 322
    goto :goto_0
.end method

.method public toAddBorder(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "borderWidth"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 329
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move-object v3, v6

    .line 355
    :goto_0
    return-object v3

    .line 332
    :cond_1
    const/4 v3, 0x0

    .line 334
    .local v3, "outputBmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v8, p2, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v9, p2, 0x2

    add-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 340
    if-nez v3, :cond_2

    move-object v3, v6

    .line 341
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v3, v6

    .line 337
    goto :goto_0

    .line 343
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-direct {v1, p2, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v1, "dstRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 347
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 348
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 350
    invoke-virtual {v0, p1, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 351
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    :cond_3
    const/4 p1, 0x0

    .line 355
    goto :goto_0
.end method

.method public toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 63
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 65
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 68
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p2

    .line 69
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 71
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 75
    return-object v2
.end method
