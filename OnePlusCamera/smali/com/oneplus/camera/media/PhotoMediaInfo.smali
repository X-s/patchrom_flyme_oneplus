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

.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_MANUAL:I = 0x1


# instance fields
.field private final m_ActualHeight:I

.field private final m_ActualWidth:I

.field private final m_Orientation:I

.field private final m_TakenTime:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 86
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/oneplus/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 89
    if-eqz p2, :cond_2

    .line 91
    const-string v4, "orientation"

    invoke-static {p2, v4, v5}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 92
    const-string v4, "datetaken"

    invoke-static {p2, v4, v6, v7}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    .line 101
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .line 102
    .local v3, "width":I
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v1

    .line 103
    .local v1, "height":I
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 107
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 111
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    iput v3, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    .line 119
    iput v1, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    .line 120
    return-void

    .line 96
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_2
    iput v5, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 97
    iput-wide v6, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    goto :goto_0

    .line 113
    .restart local v1    # "height":I
    .restart local v3    # "width":I
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "PhotoMediaInfo"

    const-string v5, "PhotoMediaInfo() - Fail to get photo size"

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
    .line 126
    .local p1, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 128
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v2

    .line 248
    :cond_1
    const/16 v3, 0x2f

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 249
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 250
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v1

    .line 251
    .local v1, "r":Landroid/util/Rational;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 253
    .end local v1    # "r":Landroid/util/Rational;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private toGeoCoordinate([Landroid/util/Rational;)Ljava/lang/Double;
    .locals 10
    .param p1, "value"    # [Landroid/util/Rational;

    .prologue
    const/4 v5, 0x0

    .line 263
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v5

    .line 268
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    .line 269
    .local v2, "coord":D
    const/16 v0, 0x3c

    .line 270
    .local v0, "coeff":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 272
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 273
    mul-int/lit8 v0, v0, 0x3c

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "coeff":I
    .end local v2    # "coord":D
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 278
    .local v1, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 280
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "coeff":I
    .restart local v2    # "coord":D
    .restart local v4    # "i":I
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_0
.end method

.method private toRational(Ljava/lang/String;Z)Landroid/util/Rational;
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v7, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return-object v7

    .line 289
    :cond_0
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 292
    .local v5, "index":I
    if-ltz v5, :cond_3

    .line 294
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 295
    .local v2, "doubleValue":D
    const/4 v0, 0x1

    .line 296
    .local v0, "d":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-le v4, v5, :cond_1

    .line 297
    mul-int/lit8 v0, v0, 0xa

    .line 296
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 298
    :cond_1
    int-to-double v8, v0

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    .line 299
    .local v6, "n":I
    if-eqz p2, :cond_2

    const/4 v8, 0x1

    if-le v6, v8, :cond_2

    if-ge v6, v0, :cond_2

    .line 301
    div-int/2addr v0, v6

    .line 302
    const/4 v6, 0x1

    .line 304
    :cond_2
    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v6, v0}, Landroid/util/Rational;-><init>(II)V

    move-object v7, v8

    goto :goto_0

    .line 307
    .end local v0    # "d":I
    .end local v2    # "doubleValue":D
    .end local v4    # "i":I
    .end local v6    # "n":I
    :cond_3
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    .local v1, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private toRationals(Ljava/lang/String;Z)[Landroid/util/Rational;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v4, 0x0

    .line 319
    if-nez p1, :cond_1

    move-object v3, v4

    .line 330
    :cond_0
    :goto_0
    return-object v3

    .line 321
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "elements":[Ljava/lang/String;
    array-length v5, v0

    new-array v3, v5, [Landroid/util/Rational;

    .line 323
    .local v3, "result":[Landroid/util/Rational;
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 325
    aget-object v5, v0, v1

    invoke-direct {p0, v5, p2}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v2

    .line 326
    .local v2, "r":Landroid/util/Rational;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 327
    goto :goto_0

    .line 328
    :cond_2
    aput-object v2, v3, v1

    .line 323
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getDetails(Landroid/content/Context;)Ljava/util/Map;
    .locals 15
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
    .line 140
    invoke-super/range {p0 .. p1}, Lcom/oneplus/camera/media/MediaInfo;->getDetails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 141
    .local v4, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_0

    .line 142
    new-instance v4, Ljava/util/Hashtable;

    .end local v4    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 145
    .restart local v4    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->hasFilePath()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 150
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 153
    .local v5, "exif":Landroid/media/ExifInterface;
    const-string v12, "Flash"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 154
    .local v6, "flash":I
    const-string v13, "Flash"

    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {p0, v4, v13, v12}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 157
    const-string v12, "GPSLatitude"

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRationals(Ljava/lang/String;Z)[Landroid/util/Rational;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toGeoCoordinate([Landroid/util/Rational;)Ljava/lang/Double;

    move-result-object v7

    .line 158
    .local v7, "lat":Ljava/lang/Double;
    const-string v12, "GPSLongitude"

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRationals(Ljava/lang/String;Z)[Landroid/util/Rational;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toGeoCoordinate([Landroid/util/Rational;)Ljava/lang/Double;

    move-result-object v9

    .line 159
    .local v9, "lng":Ljava/lang/Double;
    const-string v12, "GPSLatitudeRef"

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "latRef":Ljava/lang/String;
    const-string v12, "GPSLongitudeRef"

    invoke-virtual {v5, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "lngRef":Ljava/lang/String;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    if-eqz v10, :cond_3

    .line 163
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 164
    .local v0, "actualLat":D
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 165
    .local v2, "actualLng":D
    const-string v12, "S"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 166
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v12

    .line 167
    :cond_1
    const-string v12, "W"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 168
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v12

    .line 169
    :cond_2
    new-instance v11, Landroid/location/Location;

    const-string v12, ""

    invoke-direct {v11, v12}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 170
    .local v11, "location":Landroid/location/Location;
    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 171
    invoke-virtual {v11, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 172
    const-string v12, "Location"

    invoke-direct {p0, v4, v12, v11}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 176
    .end local v0    # "actualLat":D
    .end local v2    # "actualLng":D
    .end local v11    # "location":Landroid/location/Location;
    :cond_3
    const-string v12, "Aperture"

    const-string v13, "FNumber"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 177
    const-string v12, "CameraMaker"

    const-string v13, "Make"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 178
    const-string v12, "CameraModel"

    const-string v13, "Model"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 179
    const-string v12, "FocalLength"

    const-string v13, "FocalLength"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 180
    const-string v12, "ISO"

    const-string v13, "ISOSpeedRatings"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 181
    const-string v12, "ShutterSpeed"

    const-string v13, "ExposureTime"

    invoke-virtual {v5, v13}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {p0, v13, v14}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 182
    const-string v12, "WhiteBalance"

    const-string v13, "WhiteBalance"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {p0, v4, v12, v13}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v5    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "flash":I
    .end local v7    # "lat":Ljava/lang/Double;
    .end local v8    # "latRef":Ljava/lang/String;
    .end local v9    # "lng":Ljava/lang/Double;
    .end local v10    # "lngRef":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v4

    .line 154
    .restart local v5    # "exif":Landroid/media/ExifInterface;
    .restart local v6    # "flash":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 184
    .end local v5    # "exif":Landroid/media/ExifInterface;
    .end local v6    # "flash":I
    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 203
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    :goto_0
    return v0

    .line 201
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    goto :goto_0

    .line 197
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
    .line 214
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 236
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    :goto_0
    return v0

    .line 234
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
