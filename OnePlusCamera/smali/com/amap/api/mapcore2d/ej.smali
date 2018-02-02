.class public Lcom/amap/api/mapcore2d/ej;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore2d/ej;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 215
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->b(Landroid/content/Context;)[B

    move-result-object v1

    .line 217
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 219
    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    .line 220
    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cv;->c([B)[B

    move-result-object v0

    .line 224
    new-instance v1, Lcom/amap/api/mapcore2d/da;

    const-string/jumbo v2, "2"

    invoke-direct {v1, v0, v2}, Lcom/amap/api/mapcore2d/da;-><init>([BLjava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/amap/api/mapcore2d/dy;->a()Lcom/amap/api/mapcore2d/dy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/dy;->a(Lcom/amap/api/mapcore2d/ee;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 202
    :cond_0
    return-void

    .line 211
    :cond_1
    return-void

    .line 232
    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v2, "updateStaticsData"

    .line 231
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "c.log"

    .line 358
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    .line 361
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 371
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    if-eqz v1, :cond_0

    .line 381
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 387
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 376
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    if-eqz v1, :cond_0

    .line 381
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 385
    :catch_3
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 385
    :goto_4
    if-nez v1, :cond_3

    .line 379
    :goto_5
    throw v0

    .line 381
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 385
    :catch_4
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 381
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 385
    :catch_5
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 387
    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 237
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 241
    return-object v0
.end method

.method private static b(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->c(Landroid/content/Context;)[B

    move-result-object v0

    .line 180
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->e(Landroid/content/Context;)[B

    move-result-object v1

    .line 182
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 185
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {p0, v2}, Lcom/amap/api/mapcore2d/ej;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 191
    return-object v0
.end method

.method private static c(Landroid/content/Context;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 247
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    new-array v1, v0, [B

    :try_start_0
    const-string/jumbo v0, "1.2.13.6"

    .line 252
    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "Android"

    .line 254
    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 258
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 262
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 263
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 264
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 272
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 274
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 279
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "StatisticsManager"

    const-string/jumbo v4, "getHeader"

    .line 276
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v0, v1

    .line 283
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 279
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 278
    :goto_2
    throw v0

    .line 282
    :catch_1
    move-exception v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 282
    :catch_2
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 282
    :catch_3
    move-exception v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 292
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/cz;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return v0

    .line 296
    :cond_0
    return v1

    .line 301
    :catch_0
    move-exception v0

    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getFileNum"

    .line 300
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)[B
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 307
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    new-array v2, v0, [B

    .line 309
    sget-object v4, Lcom/amap/api/mapcore2d/cz;->e:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/32 v8, 0x19000

    invoke-static {v5, v6, v7, v8, v9}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/du;

    move-result-object v1

    .line 313
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    if-nez v5, :cond_1

    .line 326
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 347
    if-nez v3, :cond_4

    .line 339
    :goto_0
    if-nez v1, :cond_5

    .line 347
    :goto_1
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 316
    array-length v5, v4

    :goto_2
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    const-string/jumbo v7, ".0"

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "\\."

    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 321
    aget-object v6, v6, v7

    .line 322
    invoke-static {v1, v6}, Lcom/amap/api/mapcore2d/ek;->a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    .line 328
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-nez v3, :cond_6

    .line 339
    :goto_3
    if-nez v1, :cond_7

    :cond_3
    :goto_4
    move-object v0, v2

    .line 346
    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v4, "StatisticsManager"

    const-string/jumbo v5, "getContent"

    .line 330
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-nez v3, :cond_8

    .line 339
    :goto_5
    if-eqz v1, :cond_3

    .line 341
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 344
    :catch_2
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 346
    :catchall_0
    move-exception v0

    .line 344
    if-nez v3, :cond_9

    .line 339
    :goto_6
    if-nez v1, :cond_a

    .line 332
    :goto_7
    throw v0

    .line 334
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 337
    :catch_3
    move-exception v2

    .line 336
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 344
    :catch_4
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 334
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 337
    :catch_5
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 341
    :cond_7
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    .line 344
    :catch_6
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 334
    :cond_8
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    .line 337
    :catch_7
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 334
    :cond_9
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    .line 337
    :catch_8
    move-exception v2

    .line 336
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 341
    :cond_a
    :try_start_9
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_7

    .line 344
    :catch_9
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method

.method private static f(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "c.log"

    .line 393
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 402
    new-array v0, v0, [B

    .line 403
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 404
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 434
    if-nez v1, :cond_4

    .line 406
    :goto_0
    return-wide v2

    .line 396
    :cond_0
    return-wide v6

    .line 406
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getUpdateTime"

    .line 409
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-nez v1, :cond_5

    .line 434
    :cond_1
    :goto_2
    return-wide v6

    .line 433
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v3, "getUpdateTime"

    .line 412
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    if-eqz v1, :cond_1

    .line 426
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 431
    :catch_2
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 433
    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_4
    const-string/jumbo v2, "StatisticsManager"

    const-string/jumbo v4, "getUpdateTime"

    .line 415
    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 417
    if-nez v3, :cond_3

    .line 431
    :cond_2
    :goto_5
    if-eqz v1, :cond_1

    .line 426
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 431
    :catch_4
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 417
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 422
    :catch_5
    move-exception v0

    .line 421
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 433
    :catchall_0
    move-exception v0

    .line 431
    :goto_6
    if-nez v1, :cond_6

    .line 424
    :goto_7
    throw v0

    .line 426
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 431
    :catch_6
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 426
    :cond_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    .line 431
    :catch_7
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 426
    :cond_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    .line 431
    :catch_8
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 433
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_3

    .line 406
    :catch_b
    move-exception v0

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 440
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->m(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v2

    .line 440
    :cond_1
    sget-boolean v0, Lcom/amap/api/mapcore2d/ej;->a:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    .line 446
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ej;->f(Landroid/content/Context;)J

    move-result-wide v4

    .line 447
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 449
    sub-long v4, v6, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v0, v4, v8

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    .line 450
    return v2

    .line 444
    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 449
    goto :goto_1

    .line 452
    :cond_4
    invoke-static {p0, v6, v7}, Lcom/amap/api/mapcore2d/ej;->a(Landroid/content/Context;J)V

    .line 454
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore2d/ej;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return v1

    .line 461
    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatisticsManager"

    const-string/jumbo v3, "isUpdate"

    .line 460
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
