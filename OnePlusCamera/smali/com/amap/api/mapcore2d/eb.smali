.class public Lcom/amap/api/mapcore2d/eb;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ec;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljavax/net/ssl/SSLContext;

.field private f:Ljava/net/Proxy;

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/amap/api/mapcore2d/dy$a;

.field private l:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore2d/eb;-><init>(IILjava/net/Proxy;Z)V

    .line 104
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/eb;-><init>(IILjava/net/Proxy;ZLcom/amap/api/mapcore2d/dy$a;)V

    .line 75
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;ZLcom/amap/api/mapcore2d/dy$a;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/eb;->g:Z

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/eb;->h:J

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    .line 495
    new-instance v0, Lcom/amap/api/mapcore2d/eb$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/eb$1;-><init>(Lcom/amap/api/mapcore2d/eb;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/eb;->l:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput p1, p0, Lcom/amap/api/mapcore2d/eb;->b:I

    .line 83
    iput p2, p0, Lcom/amap/api/mapcore2d/eb;->c:I

    .line 84
    iput-object p3, p0, Lcom/amap/api/mapcore2d/eb;->f:Ljava/net/Proxy;

    .line 85
    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/eb;->d:Z

    .line 86
    iput-object p5, p0, Lcom/amap/api/mapcore2d/eb;->k:Lcom/amap/api/mapcore2d/dy$a;

    .line 87
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eb;->a()V

    .line 88
    if-nez p4, :cond_0

    .line 99
    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "TLS"

    .line 91
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 93
    iput-object v0, p0, Lcom/amap/api/mapcore2d/eb;->e:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpUtil"

    const-string/jumbo v2, "HttpUtil"

    .line 95
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/amap/api/mapcore2d/eg;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 358
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v0, 0xc8

    .line 362
    if-ne v3, v0, :cond_1

    .line 377
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 379
    :try_start_2
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v0, 0x2

    invoke-direct {v1, v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v0, 0x2

    .line 381
    :try_start_3
    new-array v0, v0, [B

    .line 382
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 383
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v6, 0x0

    .line 395
    aget-byte v6, v0, v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_5

    :cond_0
    move-object v2, v1

    :goto_0
    const/16 v0, 0x400

    .line 403
    :try_start_4
    new-array v0, v0, [B

    .line 404
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 407
    sget-object v0, Lcom/amap/api/mapcore2d/eb;->a:Lcom/amap/api/mapcore2d/ec;

    if-nez v0, :cond_7

    .line 410
    :goto_2
    new-instance v0, Lcom/amap/api/mapcore2d/eg;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/eg;-><init>()V

    .line 411
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v0, Lcom/amap/api/mapcore2d/eg;->a:[B

    .line 412
    iput-object v5, v0, Lcom/amap/api/mapcore2d/eg;->b:Ljava/util/Map;

    .line 413
    iget-object v5, p0, Lcom/amap/api/mapcore2d/eb;->j:Ljava/lang/String;

    iput-object v5, v0, Lcom/amap/api/mapcore2d/eg;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    if-nez v4, :cond_8

    .line 427
    :goto_3
    if-nez v3, :cond_9

    .line 436
    :goto_4
    if-nez v1, :cond_a

    .line 446
    :goto_5
    if-nez v2, :cond_b

    .line 456
    :goto_6
    if-nez p1, :cond_c

    .line 414
    :goto_7
    return-object v0

    :cond_1
    :try_start_5
    const-string/jumbo v1, ""

    .line 364
    if-nez v5, :cond_2

    move-object v0, v1

    .line 370
    :goto_8
    new-instance v1, Lcom/amap/api/mapcore2d/ck;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/eb;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 414
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 416
    :goto_9
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 464
    :goto_a
    if-nez v4, :cond_d

    .line 427
    :goto_b
    if-nez v3, :cond_e

    .line 436
    :goto_c
    if-nez v2, :cond_f

    .line 446
    :goto_d
    if-nez v1, :cond_10

    .line 456
    :goto_e
    if-nez p1, :cond_11

    .line 418
    :goto_f
    throw v0

    :cond_2
    :try_start_7
    const-string/jumbo v0, "gsid"

    .line 365
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 366
    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_8

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v1, 0x0

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :cond_5
    const/4 v6, 0x1

    .line 395
    :try_start_8
    aget-byte v0, v0, v6

    const/16 v6, -0x75

    if-ne v0, v6, :cond_0

    .line 396
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v2, v0

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    .line 405
    :try_start_9
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 414
    :catch_1
    move-exception v0

    goto :goto_9

    .line 408
    :cond_7
    sget-object v0, Lcom/amap/api/mapcore2d/eb;->a:Lcom/amap/api/mapcore2d/ec;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ec;->a()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 420
    :cond_8
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    .line 425
    :catch_2
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    .line 422
    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 429
    :cond_9
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 434
    :catch_3
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    .line 431
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 438
    :cond_a
    :try_start_c
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_5

    .line 444
    :catch_4
    move-exception v1

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    .line 440
    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 448
    :cond_b
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_6

    .line 454
    :catch_5
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 450
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 458
    :cond_c
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_7

    .line 464
    :catch_6
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 460
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 420
    :cond_d
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_b

    .line 425
    :catch_7
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    .line 422
    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 429
    :cond_e
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_c

    .line 434
    :catch_8
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    .line 431
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 438
    :cond_f
    :try_start_11
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_d

    .line 444
    :catch_9
    move-exception v2

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    .line 440
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 448
    :cond_10
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_e

    .line 454
    :catch_a
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 450
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 458
    :cond_11
    :try_start_13
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    goto/16 :goto_f

    .line 464
    :catch_b
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 460
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 416
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_a

    .line 414
    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_9

    :catch_d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
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
    const/4 v0, 0x0

    .line 509
    if-nez p0, :cond_0

    .line 532
    return-object v0

    .line 514
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 515
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    if-eqz v0, :cond_2

    .line 521
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 524
    :goto_2
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    .line 525
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "&"

    .line 522
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/eb;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "initCSID"

    .line 60
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/mapcore2d/ec;)V
    .locals 0

    .prologue
    .line 69
    sput-object p0, Lcom/amap/api/mapcore2d/eb;->a:Lcom/amap/api/mapcore2d/ec;

    .line 70
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 475
    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "csid"

    .line 482
    iget-object v1, p0, Lcom/amap/api/mapcore2d/eb;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore2d/eb;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    iget v0, p0, Lcom/amap/api/mapcore2d/eb;->c:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 489
    return-void

    .line 476
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "addHeaders"

    .line 484
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore2d/eg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore2d/eg;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    if-nez v0, :cond_0

    .line 217
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 220
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/mapcore2d/eg;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v2, "?"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 223
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 225
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 227
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 230
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 233
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 235
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    .line 237
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    .line 239
    throw v0

    :catch_8
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/mapcore2d/eg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/amap/api/mapcore2d/eg;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 255
    if-nez p3, :cond_1

    .line 262
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 263
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/mapcore2d/eg;

    move-result-object v0

    return-object v0

    .line 255
    :cond_1
    array-length v1, p3

    if-lez v1, :cond_0

    .line 256
    new-instance v1, Ljava/io/DataOutputStream;

    .line 257
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 260
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 266
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 269
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 272
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 275
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 278
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 280
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    .line 287
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    throw v0

    :catch_8
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 298
    invoke-static {}, Lcom/amap/api/mapcore2d/cp;->a()V

    .line 301
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->k:Lcom/amap/api/mapcore2d/dy$a;

    if-nez v2, :cond_1

    .line 305
    :goto_0
    if-eqz v0, :cond_2

    .line 315
    :goto_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/eb;->d:Z

    if-nez v1, :cond_4

    .line 322
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 327
    :goto_2
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 330
    :cond_0
    :goto_3
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    .line 331
    if-nez p3, :cond_6

    const-string/jumbo v1, "GET"

    .line 337
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 341
    :goto_4
    return-object v0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eb;->k:Lcom/amap/api/mapcore2d/dy$a;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->f:Ljava/net/Proxy;

    invoke-interface {v0, v2, v1}, Lcom/amap/api/mapcore2d/dy$a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eb;->f:Ljava/net/Proxy;

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eb;->f:Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_1

    .line 316
    :cond_4
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 317
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->e:Ljavax/net/ssl/SSLContext;

    .line 318
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    .line 319
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eb;->l:Ljavax/net/ssl/HostnameVerifier;

    .line 320
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    .line 327
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "POST"

    .line 332
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 334
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 335
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_4
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    .line 112
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/mapcore2d/ea$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amap/api/mapcore2d/ea$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    if-eqz p4, :cond_2

    .line 126
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    if-nez v0, :cond_3

    .line 134
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "RANGE"

    .line 137
    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 141
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v0, 0xc8

    .line 142
    if-ne v4, v0, :cond_4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    const/16 v0, 0xce

    if-ne v4, v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    and-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 148
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x400

    .line 149
    new-array v3, v0, [B

    .line 151
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/eb;->g:Z

    if-nez v0, :cond_b

    .line 166
    invoke-interface {p4}, Lcom/amap/api/mapcore2d/ea$a;->c()V

    .line 171
    :goto_5
    if-nez v2, :cond_c

    .line 185
    :goto_6
    if-nez v1, :cond_d

    .line 197
    :cond_1
    :goto_7
    return-void

    .line 124
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "?"

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 169
    :try_start_1
    invoke-interface {p4, v0}, Lcom/amap/api/mapcore2d/ea$a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-nez v2, :cond_e

    .line 185
    :goto_8
    if-eqz v1, :cond_1

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 192
    :catch_1
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 190
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    const/4 v0, 0x1

    move v3, v0

    .line 142
    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 143
    :cond_6
    :try_start_3
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {p4, v0}, Lcom/amap/api/mapcore2d/ea$a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 192
    :catchall_0
    move-exception v0

    .line 171
    if-nez v2, :cond_f

    .line 185
    :goto_9
    if-nez v1, :cond_10

    .line 192
    :goto_a
    throw v0

    .line 151
    :cond_7
    :try_start_4
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/eb;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/eb;->h:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_8

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    iget-wide v8, p0, Lcom/amap/api/mapcore2d/eb;->h:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_0

    :cond_8
    const/16 v0, 0x400

    .line 153
    if-eq v4, v0, :cond_a

    .line 156
    new-array v0, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 157
    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-wide v6, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    invoke-interface {p4, v0, v6, v7}, Lcom/amap/api/mapcore2d/ea$a;->a([BJ)V

    .line 160
    :goto_c
    iget-wide v6, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    goto/16 :goto_4

    .line 151
    :cond_9
    const/4 v0, 0x0

    goto :goto_b

    .line 154
    :cond_a
    iget-wide v6, p0, Lcom/amap/api/mapcore2d/eb;->i:J

    invoke-interface {p4, v3, v6, v7}, Lcom/amap/api/mapcore2d/ea$a;->a([BJ)V

    goto :goto_c

    .line 164
    :cond_b
    invoke-interface {p4}, Lcom/amap/api/mapcore2d/ea$a;->b()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 173
    :cond_c
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_6

    .line 182
    :catch_2
    move-exception v0

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 176
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 182
    :catch_3
    move-exception v0

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 180
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 187
    :cond_d
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_7

    .line 192
    :catch_4
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 190
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 173
    :cond_e
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_8

    .line 182
    :catch_5
    move-exception v0

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 176
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 182
    :catch_6
    move-exception v0

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 180
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 173
    :cond_f
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_9

    .line 182
    :catch_7
    move-exception v2

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    .line 176
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 182
    :catch_8
    move-exception v2

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    .line 180
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 187
    :cond_10
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_a

    .line 192
    :catch_9
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 190
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/eb;->h:J

    .line 116
    return-void
.end method
