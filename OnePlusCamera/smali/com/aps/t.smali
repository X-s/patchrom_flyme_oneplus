.class public Lcom/aps/t;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static a([D)F
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 409
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 415
    new-array v8, v2, [F

    .line 416
    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 417
    aget v0, v8, v9

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 413
    return v0
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 198
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method static a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 4

    .prologue
    const/16 v1, 0x9

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-static {p1}, Lcom/aps/t;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    instance-of v2, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.telephony.cdma.CdmaCellLocation"

    .line 295
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "air plane mode on"

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    move v0, v1

    .line 290
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method static a()J
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    if-eqz p1, :cond_2

    .line 80
    :goto_0
    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 82
    sget-object v3, Lcom/aps/f;->d:Ljava/lang/String;

    const-string/jumbo v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 90
    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 96
    :goto_1
    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    .line 102
    :goto_2
    if-nez v0, :cond_7

    .line 106
    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo p1, "null"

    goto :goto_0

    :cond_3
    move v0, v2

    .line 81
    goto :goto_2

    :cond_4
    move v0, v2

    .line 83
    goto :goto_2

    .line 91
    :cond_5
    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_6
    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 102
    :cond_7
    if-eqz p0, :cond_1

    .line 103
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method static a(Lorg/apache/http/params/HttpParams;I)V
    .locals 4

    .prologue
    const-string/jumbo v0, "http.connection.timeout"

    .line 458
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v0, "http.socket.timeout"

    .line 460
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v0, "http.conn-manager.timeout"

    .line 462
    int-to-long v2, p1

    invoke-interface {p0, v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 463
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 373
    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 377
    invoke-static {}, Lcom/aps/t;->b()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    :try_start_0
    const-string/jumbo v3, "airplane_mode_on"

    const/4 v4, 0x0

    .line 388
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 390
    if-eq v2, v1, :cond_3

    :goto_0
    return v0

    .line 374
    :cond_0
    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v3, "airplane_mode_on"

    const/4 v4, 0x0

    .line 379
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 381
    if-eq v2, v1, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    invoke-static {v1}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    .line 399
    :goto_2
    return v0

    :cond_3
    move v0, v1

    .line 390
    goto :goto_0

    :catch_1
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    invoke-static {v1}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static a(Lcom/aps/c;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 174
    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/aps/c;->j()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/aps/c;->j()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/aps/c;->e()D

    move-result-wide v2

    .line 182
    invoke-virtual {p0}, Lcom/aps/c;->f()D

    move-result-wide v4

    .line 183
    invoke-virtual {p0}, Lcom/aps/c;->g()F

    move-result v6

    .line 184
    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    cmpl-double v2, v4, v8

    if-nez v2, :cond_1

    float-to-double v2, v6

    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 637
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,"

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 638
    :cond_0
    return v1

    .line 640
    :cond_1
    return v1
.end method

.method public static a([B)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 506
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 508
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 509
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 510
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 511
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-object v1

    .line 517
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 234
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "0"

    aput-object v4, v3, v1

    const-string/jumbo v4, "0"

    aput-object v4, v3, v2

    .line 237
    if-nez p0, :cond_0

    .line 241
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    .line 248
    :goto_1
    if-nez v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    .line 266
    :try_start_1
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 270
    :goto_3
    if-eqz v0, :cond_7

    .line 276
    :goto_4
    return-object v3

    .line 238
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 242
    goto :goto_1

    :cond_2
    move v2, v1

    .line 244
    goto :goto_1

    :cond_3
    move v2, v1

    .line 246
    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 249
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v2, v1

    .line 252
    :goto_5
    array-length v5, v4

    if-lt v2, v5, :cond_6

    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 255
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_2

    .line 275
    :catch_0
    move-exception v0

    goto :goto_4

    .line 252
    :cond_6
    aget-char v5, v4, v2

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 269
    :catch_1
    move-exception v0

    move v0, v1

    .line 268
    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v1, "0"

    .line 271
    aput-object v1, v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method static b()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return v0

    .line 490
    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 485
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    .line 577
    invoke-static {p0, v0}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 580
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 603
    :goto_1
    return-object v1

    .line 581
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 428
    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    return-object v0
.end method
