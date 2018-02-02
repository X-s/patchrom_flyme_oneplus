.class public Lcom/amap/api/mapcore2d/cj;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x11

    .line 35
    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide v2, 0x40bd1da45a1cac08L    # 7453.642

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x40ad3dfb22d0e560L    # 3742.9905

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x409d4554fdf3b646L    # 1873.333

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x408d471f40a2877fL    # 936.89026

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x407d478d4fdf3b64L    # 468.472

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, 0x406d47a5e353f7cfL    # 234.239

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, 0x405d47ae147ae148L    # 117.12

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x404d47ae147ae148L    # 58.56

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x403d47ae147ae148L    # 29.28

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, 0x402d47ae147ae148L    # 14.64

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide v2, 0x401d47ae147ae148L    # 7.32

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide v2, 0x400d47ae147ae148L    # 3.66

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    const-wide v2, 0x3ffd4395810624ddL    # 1.829

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const-wide v2, 0x3fed47ae147ae148L    # 0.915

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const-wide v2, 0x3fdd47ae147ae148L    # 0.4575

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, 0x3fcd2f1a9fbe76c9L    # 0.228

    aput-wide v2, v0, v1

    const/16 v1, 0x10

    const-wide v2, 0x3fbd495182a9930cL    # 0.1144

    aput-wide v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore2d/cj;->a:[D

    return-void
.end method

.method public static a(DDDDDD)D
    .locals 6

    .prologue
    .line 291
    sub-double v0, p4, p0

    sub-double v2, p10, p2

    mul-double/2addr v0, v2

    sub-double v2, p8, p0

    sub-double v4, p6, p2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D
    .locals 21

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 169
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 170
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 171
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 172
    mul-double/2addr v2, v10

    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 173
    mul-double/2addr v4, v10

    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 174
    mul-double/2addr v6, v10

    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 175
    mul-double/2addr v8, v10

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 177
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 179
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 181
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 182
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 183
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/16 v18, 0x3

    .line 184
    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    .line 185
    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 186
    mul-double/2addr v2, v4

    aput-wide v2, v18, v20

    const/4 v2, 0x1

    .line 187
    mul-double/2addr v4, v10

    aput-wide v4, v18, v2

    const/4 v2, 0x2

    .line 188
    aput-wide v12, v18, v2

    const/4 v2, 0x0

    .line 189
    mul-double v4, v8, v6

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    .line 190
    mul-double v4, v8, v14

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    .line 191
    aput-wide v16, v19, v2

    const/4 v2, 0x0

    .line 192
    aget-wide v2, v18, v2

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    const/4 v6, 0x0

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v4, v18, v4

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    const/4 v8, 0x1

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v18, v4

    const/4 v6, 0x2

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v18, v6

    const/4 v8, 0x2

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 196
    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static a(F)F
    .locals 3

    .prologue
    const/high16 v1, 0x42340000    # 45.0f

    const/4 v0, 0x0

    .line 74
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .line 79
    :cond_0
    :goto_0
    return p0

    .line 76
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    .line 77
    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 153
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    return-object v0

    .line 138
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Util"

    const-string/jumbo v2, "fromAsset"

    .line 49
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public static a()Lcom/amap/api/mapcore2d/cu;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 421
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/p;->p:Lcom/amap/api/mapcore2d/cu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/amap/api/mapcore2d/p;->p:Lcom/amap/api/mapcore2d/cu;

    return-object v0

    .line 422
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/cu$a;

    const-string/jumbo v1, "2dmap"

    const-string/jumbo v2, "2.9.2"

    const-string/jumbo v3, "AMAP_SDK_Android_2DMap_2.9.2"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cu$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.maps2d"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "com.amap.api.mapcore2d"

    aput-object v3, v1, v2

    .line 424
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cu$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cu$a;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cu$a;->a()Lcom/amap/api/mapcore2d/cu;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 428
    return-object v4
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 229
    if-eqz p0, :cond_0

    .line 232
    new-instance v0, Lcom/amap/api/mapcore2d/u;

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/u;-><init>(II)V

    return-object v0

    .line 230
    :cond_0
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v0, 0x3e8

    .line 201
    if-lt p0, v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    array-length v3, p0

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    aget-object v4, p0, v0

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, ","

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 347
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/db;->a()Lcom/amap/api/mapcore2d/db;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 351
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    :goto_1
    return-void

    .line 349
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/db;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(DDDDDDDD)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 309
    sub-double v2, p4, p0

    sub-double v4, p14, p10

    mul-double/2addr v2, v4

    sub-double v4, p6, p2

    sub-double v6, p12, p8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 310
    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 311
    sub-double v4, p2, p10

    sub-double v6, p12, p8

    mul-double/2addr v4, v6

    sub-double v6, p0, p8

    sub-double v8, p14, p10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 313
    sub-double v6, p2, p10

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    sub-double v8, p0, p8

    sub-double v10, p6, p2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    div-double v2, v6, v2

    const-wide/16 v6, 0x0

    .line 315
    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 319
    :cond_0
    return v0
.end method

.method public static a(II)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    if-gtz p0, :cond_1

    :cond_0
    const-string/jumbo v0, "2dmap"

    const-string/jumbo v1, "the map must have a size"

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v2

    .line 440
    :cond_1
    if-lez p1, :cond_0

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/amap/api/mapcore2d/cj;

    monitor-enter v1

    .line 324
    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 337
    if-nez v0, :cond_4

    :cond_0
    monitor-exit v1

    .line 339
    return v3

    :cond_1
    monitor-exit v1

    .line 325
    return v3

    :cond_2
    monitor-exit v1

    .line 330
    return v3

    :cond_3
    monitor-exit v1

    .line 334
    return v3

    .line 337
    :cond_4
    :try_start_1
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_0

    .line 341
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v28, 0x0

    const/4 v7, 0x0

    .line 245
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 246
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 247
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    .line 249
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x3

    if-lt v6, v8, :cond_0

    const/4 v6, 0x0

    .line 253
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    const/4 v6, 0x0

    move/from16 v26, v6

    move/from16 v27, v7

    .line 257
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v26

    if-lt v0, v6, :cond_2

    .line 282
    rem-int/lit8 v2, v27, 0x2

    if-nez v2, :cond_a

    move/from16 v2, v28

    .line 286
    :goto_2
    return v2

    .line 250
    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v6, 0x0

    .line 254
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 259
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 260
    add-int/lit8 v10, v26, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v10, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 261
    add-int/lit8 v12, v26, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v12, v12, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 262
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cj;->b(DDDDDD)Z

    move-result v14

    if-nez v14, :cond_3

    .line 265
    sub-double v14, v12, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    move/from16 v7, v27

    .line 257
    :goto_3
    add-int/lit8 v6, v26, 0x1

    move/from16 v26, v6

    move/from16 v27, v7

    goto :goto_1

    .line 263
    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    const-wide v22, 0x4066800000000000L    # 180.0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    .line 269
    invoke-static/range {v14 .. v25}, Lcom/amap/api/mapcore2d/cj;->b(DDDDDD)Z

    move-result v14

    if-nez v14, :cond_5

    const-wide v18, 0x4066800000000000L    # 180.0

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v20, v24

    .line 273
    invoke-static/range {v10 .. v21}, Lcom/amap/api/mapcore2d/cj;->b(DDDDDD)Z

    move-result v14

    if-nez v14, :cond_7

    const-wide v18, 0x4066800000000000L    # 180.0

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v20, v24

    .line 277
    invoke-static/range {v6 .. v21}, Lcom/amap/api/mapcore2d/cj;->a(DDDDDDDD)Z

    move-result v6

    if-nez v6, :cond_9

    move/from16 v7, v27

    goto :goto_3

    .line 271
    :cond_5
    cmpl-double v6, v8, v12

    if-lez v6, :cond_6

    .line 272
    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_3

    :cond_6
    move/from16 v7, v27

    .line 271
    goto :goto_3

    .line 275
    :cond_7
    cmpl-double v6, v12, v8

    if-lez v6, :cond_8

    .line 276
    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_3

    :cond_8
    move/from16 v7, v27

    .line 275
    goto :goto_3

    .line 279
    :cond_9
    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_3

    :cond_a
    const/4 v2, 0x1

    .line 283
    goto/16 :goto_2
.end method

.method public static a(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 398
    if-nez p0, :cond_1

    .line 399
    :cond_0
    return v1

    .line 398
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 401
    if-nez v2, :cond_3

    .line 415
    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    move v0, v1

    .line 402
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 403
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_5

    .line 408
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 411
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 402
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_5
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 405
    return v1

    .line 409
    :cond_6
    return v1
.end method

.method public static b(F)F
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/amap/api/mapcore2d/p;->c:I

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 84
    sget v0, Lcom/amap/api/mapcore2d/p;->c:I

    int-to-float p0, v0

    .line 88
    :cond_0
    :goto_0
    return p0

    .line 85
    :cond_1
    sget v0, Lcom/amap/api/mapcore2d/p;->d:I

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 86
    sget v0, Lcom/amap/api/mapcore2d/p;->d:I

    int-to-float p0, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 366
    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 372
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 373
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "AMap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :cond_2
    sget-object v0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string/jumbo v1, ""

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "Amap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 384
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 389
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_2
.end method

.method public static b(DDDDDD)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-static/range {p0 .. p11}, Lcom/amap/api/mapcore2d/cj;->a(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    sub-double v2, p0, p4

    sub-double v4, p0, p8

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    sub-double v2, p2, p6

    sub-double v4, p2, p10

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 303
    :cond_0
    return v0
.end method
