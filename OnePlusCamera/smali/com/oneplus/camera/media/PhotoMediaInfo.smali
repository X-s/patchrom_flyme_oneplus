.class public Lcom/oneplus/camera/media/PhotoMediaInfo;
.super Lcom/oneplus/camera/media/MediaInfo;
.source "PhotoMediaInfo.java"


# static fields
.field public static final DETAILS_APERTURE:Ljava/lang/String; = "Aperture"

.field public static final DETAILS_CAMERA_MAKER:Ljava/lang/String; = "CameraMaker"

.field public static final DETAILS_CAMERA_MODEL:Ljava/lang/String; = "CameraModel"

.field public static final DETAILS_FLASH:Ljava/lang/String; = "Flash"

.field public static final DETAILS_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final DETAILS_ISO:Ljava/lang/String; = "ISO"

.field public static final DETAILS_SHUTTER_SPEED:Ljava/lang/String; = "ShutterSpeed"

.field public static final DETAILS_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field private static final TAG:Ljava/lang/String;

.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_MANUAL:I = 0x1


# instance fields
.field private final m_ActualHeight:I

.field private final m_ActualWidth:I

.field private final m_Orientation:I

.field private final m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/oneplus/camera/media/PhotoMediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/media/PhotoMediaInfo;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 95
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/oneplus/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 98
    if-eqz p2, :cond_2

    .line 100
    const-string/jumbo v4, "orientation"

    invoke-static {p2, v4, v5}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 101
    const-string/jumbo v4, "datetaken"

    invoke-static {p2, v4, v6, v7}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    .line 110
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .line 111
    .local v3, "width":I
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v1

    .line 112
    .local v1, "height":I
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 116
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 119
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 120
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    iput v3, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    .line 128
    iput v1, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    .line 92
    return-void

    .line 105
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_2
    iput v5, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 106
    iput-wide v6, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    goto :goto_0

    .line 123
    .restart local v1    # "height":I
    .restart local v3    # "width":I
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "PhotoMediaInfo"

    const-string/jumbo v5, "PhotoMediaInfo() - Fail to get photo size"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 137
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private toDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 243
    if-nez p1, :cond_0

    .line 244
    return-object v2

    .line 247
    :cond_0
    const/16 v3, 0x2f

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 248
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 249
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v1

    .line 250
    .local v1, "r":Landroid/util/Rational;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    return-object v2

    .line 253
    .end local v1    # "r":Landroid/util/Rational;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/lang/Throwable;
    return-object v2
.end method

.method private toGeoCoordinate([Landroid/util/Rational;)Ljava/lang/Double;
    .locals 11
    .param p1, "value"    # [Landroid/util/Rational;

    .prologue
    const/4 v10, 0x0

    .line 262
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 263
    :cond_0
    return-object v10

    .line 267
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    .line 268
    .local v2, "coord":D
    const/16 v0, 0x3c

    .line 269
    .local v0, "coeff":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 271
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 272
    mul-int/lit8 v0, v0, 0x3c

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "coeff":I
    .end local v2    # "coord":D
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/lang/Throwable;
    return-object v10

    .line 279
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "coeff":I
    .restart local v2    # "coord":D
    .restart local v4    # "i":I
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5
.end method

.method private toRational(Ljava/lang/String;Z)Landroid/util/Rational;
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v12, 0x0

    .line 286
    if-nez p1, :cond_0

    .line 287
    return-object v12

    .line 288
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 291
    .local v5, "index":I
    if-ltz v5, :cond_3

    .line 293
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 294
    .local v2, "doubleValue":D
    const/4 v0, 0x1

    .line 295
    .local v0, "d":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-le v4, v5, :cond_1

    .line 296
    mul-int/lit8 v0, v0, 0xa

    .line 295
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 297
    :cond_1
    int-to-double v8, v0

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    .line 298
    .local v6, "n":I
    if-eqz p2, :cond_2

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    if-ge v6, v0, :cond_2

    .line 300
    div-int/2addr v0, v6

    .line 301
    const/4 v6, 0x1

    .line 303
    :cond_2
    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v6, v0}, Landroid/util/Rational;-><init>(II)V

    return-object v7

    .line 306
    .end local v0    # "d":I
    .end local v2    # "doubleValue":D
    .end local v4    # "i":I
    .end local v6    # "n":I
    :cond_3
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "ex":Ljava/lang/Throwable;
    return-object v12
.end method

.method private toRationals(Ljava/lang/String;Z)[Landroid/util/Rational;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v5, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 319
    return-object v5

    .line 320
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "elements":[Ljava/lang/String;
    array-length v4, v0

    new-array v3, v4, [Landroid/util/Rational;

    .line 322
    .local v3, "result":[Landroid/util/Rational;
    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 324
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v2

    .line 325
    .local v2, "r":Landroid/util/Rational;
    if-nez v2, :cond_1

    .line 326
    return-object v5

    .line 327
    :cond_1
    aput-object v2, v3, v1

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 329
    .end local v2    # "r":Landroid/util/Rational;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public getDetails(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/oneplus/camera/media/MediaInfo;->getDetails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 150
    .local v0, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 154
    .restart local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->hasFilePath()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    const/4 v3, 0x0

    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 159
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v4

    .line 160
    .local v4, "metaData":Lcom/oneplus/media/PhotoMetadata;
    sget-object v7, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v7}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/FlashData;

    .line 161
    .local v2, "flashData":Lcom/oneplus/media/FlashData;
    const-string/jumbo v8, "Flash"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/oneplus/media/FlashData;->isFlashFired()Z

    move-result v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v0, v8, v7}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 162
    const-string/jumbo v7, "Location"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 163
    const-string/jumbo v7, "Aperture"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 164
    const-string/jumbo v7, "CameraMaker"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v7, "CameraModel"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v7, "FocalLength"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 167
    const-string/jumbo v7, "ISO"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 168
    const-string/jumbo v7, "ShutterSpeed"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v7, "WhiteBalance"

    sget-object v8, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v8}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    if-ne v8, v9, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v0, v7, v5}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .end local v2    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/oneplus/camera/media/PhotoMediaInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getDetails() - Error when get details"

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    return-object v0

    .restart local v2    # "flashData":Lcom/oneplus/media/FlashData;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    :cond_4
    move v7, v5

    .line 161
    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v2    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    :catch_2
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_2
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    if-eqz v6, :cond_7

    :try_start_5
    throw v6

    :catch_3
    move-exception v7

    if-nez v6, :cond_6

    move-object v6, v7

    goto :goto_3

    :cond_6
    if-eq v6, v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 192
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    return v0

    .line 190
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    return v0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 225
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    return v0

    .line 223
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    return v0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isAnimationFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
