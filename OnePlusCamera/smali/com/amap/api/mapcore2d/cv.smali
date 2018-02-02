.class public Lcom/amap/api/mapcore2d/cv;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x50

    .line 584
    if-lt v0, v2, :cond_0

    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/cv;->a:Ljava/lang/String;

    .line 588
    return-void

    :cond_0
    const-string/jumbo v2, "="

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 566
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd HH:mm:ss:SSS"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 567
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 568
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 572
    :catch_0
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 219
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 223
    :goto_0
    if-nez v0, :cond_0

    .line 227
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    if-nez v3, :cond_1

    .line 240
    :goto_1
    if-nez v1, :cond_2

    .line 228
    :goto_2
    return-object v0

    .line 224
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 230
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 246
    if-nez v3, :cond_3

    .line 240
    :goto_4
    if-nez v1, :cond_4

    .line 249
    :goto_5
    return-object v2

    .line 248
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 246
    :goto_6
    if-nez v3, :cond_5

    .line 240
    :goto_7
    if-nez v1, :cond_6

    .line 232
    :goto_8
    throw v0

    .line 234
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 238
    :catch_1
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 242
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 246
    :catch_2
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 234
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 238
    :catch_3
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 242
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 246
    :catch_4
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 234
    :cond_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 238
    :catch_5
    move-exception v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 242
    :cond_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 246
    :catch_6
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 248
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 228
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    if-nez p0, :cond_1

    .line 260
    :cond_0
    return-object v1

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    .line 265
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 280
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    if-nez v2, :cond_3

    const-string/jumbo v1, "&"

    .line 271
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_2
    move v2, v0

    .line 275
    goto :goto_0

    .line 268
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v3

    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "assembleParams"

    .line 277
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 59
    return-object v0

    .line 58
    :cond_1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "MIICnjCCAgegAwIBAgIJAJ0Pdzos7ZfYMA0GCSqGSIb3DQEBBQUAMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjAeFw0xMzA4MTUwNzU2NTVaFw0yMzA4MTMwNzU2NTVaMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA8eWAyHbFPoFPfdx5AD+D4nYFq4dbJ1p7SIKt19Oz1oivF/6H43v5Fo7s50pD1UF8+Qu4JoUQxlAgOt8OCyQ8DYdkaeB74XKb1wxkIYg/foUwN1CMHPZ9O9ehgna6K4EJXZxR7Y7XVZnbjHZIVn3VpPU/Rdr2v37LjTw+qrABJxMCAwEAAaNQME4wHQYDVR0OBBYEFOM/MLGP8xpVFuVd+3qZkw7uBvOTMB8GA1UdIwQYMBaAFOM/MLGP8xpVFuVd+3qZkw7uBvOTMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEA4LY3g8aAD8JkxAOqUXDDyLuCCGOc2pTIhn0TwMNaVdH4hZlpTeC/wuRD5LJ0z3j+IQ0vLvuQA5uDjVyEOlBrvVIGwSem/1XGUo13DfzgAJ5k1161S5l+sFUo5TxpHOXr8Z5nqJMjieXmhnE/I99GFyHpQmw4cC6rhYUhdhtg+Zk="

    .line 446
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "X.509"

    .line 447
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string/jumbo v3, "RSA"

    .line 448
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 449
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 450
    if-nez v0, :cond_1

    .line 460
    :cond_0
    if-nez v1, :cond_2

    .line 451
    :goto_0
    return-object v2

    .line 450
    :cond_1
    if-eqz v3, :cond_0

    .line 453
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    .line 454
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 455
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 460
    if-nez v1, :cond_3

    .line 455
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    .line 457
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    if-nez v1, :cond_4

    .line 467
    :goto_3
    return-object v2

    .line 466
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 460
    :goto_4
    if-nez v1, :cond_5

    .line 459
    :goto_5
    throw v0

    .line 461
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 461
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 465
    :catch_2
    move-exception v1

    .line 464
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 461
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 465
    :catch_3
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 461
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 465
    :catch_4
    move-exception v1

    .line 464
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 466
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 455
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lcom/amap/api/mapcore2d/cv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    const-string/jumbo v0, "                                   \u9274\u6743\u9519\u8bef\u4fe1\u606f                                  "

    .line 591
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/amap/api/mapcore2d/cv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SHA1Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "csid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "gsid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "                                                                               "

    .line 599
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    const-string/jumbo v0, "\u8bf7\u4ed4\u7ec6\u68c0\u67e5 SHA1Package\u4e0eKey\u7533\u8bf7\u4fe1\u606f\u662f\u5426\u5bf9\u5e94\uff0cKey\u662f\u5426\u5220\u9664\uff0c\u5e73\u53f0\u662f\u5426\u5339\u914d                "

    .line 600
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    const-string/jumbo v0, "\u5982\u82e5\u786e\u8ba4\u65e0\u8bef\uff0c\u4ecd\u5b58\u5728\u95ee\u9898\uff0c\u8bf7\u5c06\u5168\u90e8log\u4fe1\u606f\u63d0\u4ea4\u5230\u5de5\u5355\u7cfb\u7edf\uff0c\u591a\u8c22\u5408\u4f5c                       "

    .line 601
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/amap/api/mapcore2d/cv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v0, 0x1

    .line 94
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    and-int/lit16 v0, p1, 0xff

    .line 96
    if-lt v0, v3, :cond_1

    .line 98
    :cond_0
    if-eq v0, v3, :cond_2

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_1
    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "writeField"

    .line 102
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 99
    :try_start_1
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v1, 0xff

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 49
    if-gt v0, v1, :cond_1

    .line 50
    :goto_0
    int-to-byte v0, v0

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    .line 51
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    .line 157
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    array-length v1, v2

    new-array v3, v1, [B

    move v1, v0

    .line 161
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 166
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cq;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 167
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 168
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    array-length v2, v1

    new-array v2, v2, [B

    .line 173
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 177
    return-object v2

    .line 162
    :cond_0
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "getIV"

    .line 180
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 181
    new-array v0, v0, [B

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-array v0, v1, [B

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-eqz p0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1a

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method public static b([B)[B
    .locals 3

    .prologue
    .line 327
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->g([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "gZip"

    .line 329
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 331
    new-array v0, v0, [B

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 124
    return-object v0
.end method

.method public static c([B)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 335
    if-nez p0, :cond_1

    .line 336
    :cond_0
    return-object v2

    .line 335
    :cond_1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "log"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 345
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 346
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 347
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 348
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 374
    if-nez v3, :cond_3

    .line 363
    :goto_0
    if-nez v1, :cond_4

    .line 374
    :cond_2
    :goto_1
    return-object v2

    .line 373
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_2
    :try_start_3
    const-string/jumbo v4, "Utils"

    const-string/jumbo v5, "zip"

    .line 351
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 370
    if-nez v3, :cond_5

    .line 363
    :goto_3
    if-eqz v1, :cond_2

    .line 365
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 370
    :catch_1
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v3, "zip2"

    .line 368
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 370
    :goto_4
    if-nez v3, :cond_6

    .line 363
    :goto_5
    if-nez v1, :cond_7

    .line 355
    :goto_6
    throw v0

    .line 357
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 361
    :catch_2
    move-exception v0

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    .line 359
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 370
    :catch_3
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v3, "zip2"

    .line 368
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_5
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 361
    :catch_4
    move-exception v0

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    .line 359
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 357
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    .line 361
    :catch_5
    move-exception v2

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    .line 359
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 365
    :cond_7
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 370
    :catch_6
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "zip2"

    .line 368
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 373
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "&"

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 303
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 316
    :goto_1
    return-object p0

    :cond_0
    const-string/jumbo v0, ""

    .line 299
    return-object v0

    .line 304
    :cond_1
    aget-object v4, v1, v0

    .line 305
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "&"

    .line 306
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "sortParams"

    .line 314
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static d([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->f([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "HexString"

    .line 488
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 490
    return-object v0
.end method

.method static e([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->f([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 499
    return-object v0
.end method

.method static e(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x4e

    .line 627
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 636
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->e(Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 628
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|"

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4e

    if-lt v0, v2, :cond_1

    const-string/jumbo v0, "|"

    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, " "

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static f([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 507
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 514
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    return-object v0

    .line 508
    :cond_1
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 512
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "authErrLog"

    .line 644
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private static g([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 529
    if-eqz p0, :cond_0

    .line 533
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 535
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 536
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 537
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 558
    if-nez v1, :cond_1

    .line 548
    :goto_0
    if-nez v3, :cond_2

    .line 558
    :goto_1
    return-object v0

    .line 530
    :cond_0
    return-object v2

    .line 556
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 539
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 552
    :goto_3
    if-nez v1, :cond_3

    .line 548
    :goto_4
    if-nez v3, :cond_4

    .line 541
    :goto_5
    throw v0

    .line 543
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 546
    :catch_1
    move-exception v0

    .line 545
    throw v0

    .line 550
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 554
    :catch_2
    move-exception v0

    .line 552
    throw v0

    .line 543
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 546
    :catch_3
    move-exception v0

    .line 545
    throw v0

    .line 550
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 554
    :catch_4
    move-exception v0

    .line 552
    throw v0

    .line 539
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 556
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
