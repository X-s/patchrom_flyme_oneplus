.class public abstract Lcom/amap/api/mapcore2d/df;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/df$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore2d/cu;

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/dv;

.field private d:Lcom/amap/api/mapcore2d/du;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amap/api/mapcore2d/df;->b:I

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\"sim\":\""

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"product\":\""

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cu;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"np\":\""

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"mnc\":\""

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"ant\":\""

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/co;->e(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"et\":\""

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"classname\":\""

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\","

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\"detail\":\""

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\""

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{\"pinfo\":\""

    .line 661
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/df;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"els\":["

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    if-nez v1, :cond_4

    const-string/jumbo v0, "]}"

    .line 684
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 664
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dq;

    .line 665
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dq;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amap/api/mapcore2d/df;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 669
    if-nez v5, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    .line 680
    goto :goto_0

    :cond_2
    const-string/jumbo v6, ""

    .line 669
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dq;->c()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    if-nez v1, :cond_3

    const-string/jumbo v5, ","

    .line 676
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v5, "{\"log\":\""

    .line 678
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\"}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 674
    goto :goto_2

    .line 682
    :cond_4
    return-object v7
.end method

.method private a(Lcom/amap/api/mapcore2d/dp;I)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 547
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/dp;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore2d/df;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/dp;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processDeleteFail"

    .line 551
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/dp;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 257
    invoke-static {p4}, Lcom/amap/api/mapcore2d/cz;->b(I)Lcom/amap/api/mapcore2d/dq;

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(I)V

    .line 261
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore2d/dq;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/dp;->a(Lcom/amap/api/mapcore2d/dq;)V

    .line 265
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore2d/dp;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amap/api/mapcore2d/dq;",
            ">;",
            "Lcom/amap/api/mapcore2d/dp;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 599
    if-nez p1, :cond_1

    .line 614
    :cond_0
    return-void

    .line 599
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dq;

    .line 601
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/df;->b(Ljava/lang/String;)Z

    move-result v2

    .line 602
    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 606
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dq;->a(I)V

    .line 608
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/dp;->b(Lcom/amap/api/mapcore2d/dq;)V

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dq;->b()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 603
    invoke-virtual {p2, v2, v0}, Lcom/amap/api/mapcore2d/dp;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dp;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 378
    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    .line 385
    invoke-static {v2, v0, v3, v4, v5}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/du;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 386
    :try_start_1
    invoke-virtual {p0, p5}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/dp;)Lcom/amap/api/mapcore2d/dv;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/dv;)V

    .line 387
    invoke-virtual {v3, p2}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 389
    if-nez v2, :cond_3

    .line 393
    :try_start_2
    invoke-static {p4}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 395
    invoke-virtual {v3, p2}, Lcom/amap/api/mapcore2d/du;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v4

    const/4 v5, 0x0

    .line 396
    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/du$a;->a(I)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 397
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/du$a;->a()V

    .line 399
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 427
    if-nez v1, :cond_9

    .line 415
    :goto_0
    if-nez v2, :cond_a

    .line 422
    :goto_1
    if-nez v3, :cond_b

    .line 401
    :cond_1
    :goto_2
    return v7

    .line 381
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 382
    return v6

    .line 415
    :cond_3
    if-nez v2, :cond_7

    .line 422
    :goto_3
    if-nez v3, :cond_8

    .line 390
    :cond_4
    :goto_4
    return v6

    .line 401
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 403
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 427
    if-nez v3, :cond_c

    .line 415
    :goto_6
    if-nez v1, :cond_d

    .line 422
    :goto_7
    if-nez v2, :cond_e

    .line 430
    :cond_5
    :goto_8
    return v6

    .line 429
    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    .line 406
    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 427
    if-nez v2, :cond_f

    .line 415
    :goto_a
    if-nez v1, :cond_10

    .line 422
    :goto_b
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 424
    :try_start_7
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    .line 427
    :catch_2
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 429
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    .line 427
    :goto_c
    if-nez v2, :cond_11

    .line 415
    :goto_d
    if-nez v1, :cond_12

    .line 422
    :goto_e
    if-nez v3, :cond_13

    .line 408
    :cond_6
    :goto_f
    throw v0

    .line 417
    :cond_7
    :try_start_8
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 420
    :catch_3
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 422
    :cond_8
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    :try_start_9
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 427
    :catch_4
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 410
    :cond_9
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_0

    .line 413
    :catch_5
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 417
    :cond_a
    :try_start_b
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    .line 420
    :catch_6
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 422
    :cond_b
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    :try_start_c
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    .line 427
    :catch_7
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 410
    :cond_c
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    .line 413
    :catch_8
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 417
    :cond_d
    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_7

    .line 420
    :catch_9
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 422
    :cond_e
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 424
    :try_start_f
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_8

    .line 427
    :catch_a
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 410
    :cond_f
    :try_start_10
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_a

    .line 413
    :catch_b
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 417
    :cond_10
    :try_start_11
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_b

    .line 420
    :catch_c
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 410
    :cond_11
    :try_start_12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_d

    .line 413
    :catch_d
    move-exception v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 417
    :cond_12
    :try_start_13
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/du$b;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_e

    .line 420
    :catch_e
    move-exception v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 422
    :cond_13
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 424
    :try_start_14
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_f

    goto/16 :goto_f

    .line 427
    :catch_f
    move-exception v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    .line 429
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_c

    :catchall_5
    move-exception v0

    goto/16 :goto_c

    :catch_10
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :catch_11
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_9

    :catch_12
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_9

    .line 401
    :catch_13
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_5

    :catch_14
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_5

    :catch_15
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_5
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 436
    if-nez p0, :cond_1

    .line 437
    :cond_0
    return v1

    .line 436
    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "\n"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 440
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    .line 449
    :goto_1
    return v1

    .line 440
    :cond_2
    aget-object v4, v2, v0

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {p0, v4}, Lcom/amap/api/mapcore2d/df;->b([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_3

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 448
    :catch_0
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/du;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 760
    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    .line 767
    invoke-static {v2, v0, v3, v4, v5}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/du;

    move-result-object v0

    .line 776
    :goto_0
    return-object v0

    .line 763
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 764
    return-object v1

    .line 774
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    .line 769
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 774
    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    .line 772
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/du;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 528
    :goto_0
    return v0

    .line 519
    :cond_0
    return v1

    .line 527
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogUpdateProcessor"

    const-string/jumbo v3, "deleteLogData"

    .line 526
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 454
    if-nez p0, :cond_1

    .line 455
    :cond_0
    return v1

    .line 454
    :cond_1
    if-eqz p1, :cond_0

    .line 457
    :try_start_0
    array-length v2, p0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 467
    :goto_1
    return v1

    .line 457
    :cond_2
    aget-object v3, p0, v0

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "at "

    .line 459
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 457
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    const/4 v0, 0x1

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 560
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cv;->c([B)[B

    move-result-object v1

    .line 561
    new-instance v3, Lcom/amap/api/mapcore2d/da;

    invoke-direct {v3, v1}, Lcom/amap/api/mapcore2d/da;-><init>([B)V

    .line 563
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/dy;->a()Lcom/amap/api/mapcore2d/dy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore2d/dy;->a(Lcom/amap/api/mapcore2d/ee;)[B

    move-result-object v1

    .line 565
    if-eqz v1, :cond_0

    .line 568
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 570
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    .line 572
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 594
    :goto_0
    return v0

    .line 566
    :cond_0
    return v0

    .line 573
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "processUpdate"

    .line 579
    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    .line 593
    :catch_1
    move-exception v1

    .line 585
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ck;->b()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_2

    :goto_1
    const-string/jumbo v0, "LogProcessor"

    const-string/jumbo v3, "processUpdate"

    .line 591
    invoke-static {v1, v0, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 586
    goto :goto_1
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 348
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cv;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v0, "\"key\":\""

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"platform\":\"android\",\"diu\":\""

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"pkg\":\""

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appname\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"appversion\":\""

    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\",\"sysversion\":\""

    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getPublicJSONInfo"

    .line 630
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$b;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 701
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/du$b;->a(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 703
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    .line 704
    :try_start_2
    new-array v0, v0, [B

    .line 705
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 709
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 732
    if-nez v1, :cond_3

    .line 725
    :goto_1
    if-nez v3, :cond_4

    .line 709
    :goto_2
    return-object v0

    .line 695
    :cond_0
    return-object v2

    .line 699
    :cond_1
    return-object v2

    :cond_2
    const/4 v5, 0x0

    .line 706
    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v4, "LogProcessor"

    const-string/jumbo v5, "readLog"

    .line 712
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 732
    if-nez v1, :cond_5

    .line 725
    :goto_4
    if-nez v3, :cond_6

    .line 735
    :goto_5
    return-object v2

    .line 734
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 732
    :goto_6
    if-nez v1, :cond_7

    .line 725
    :goto_7
    if-nez v3, :cond_8

    .line 716
    :goto_8
    throw v0

    .line 718
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 723
    :catch_1
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 727
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 732
    :catch_2
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    .line 730
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 718
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 723
    :catch_3
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v0, v1, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 727
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 732
    :catch_4
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    .line 730
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 718
    :cond_7
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 723
    :catch_5
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    .line 721
    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 727
    :cond_8
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 732
    :catch_6
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    .line 730
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 734
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 709
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/df;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/df;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/du;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "LogUpDateProcessor"

    .line 60
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cu;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/dr;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/amap/api/mapcore2d/dr;-><init>(Landroid/content/Context;Z)V

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dr;->a()Ljava/util/List;

    move-result-object v1

    .line 248
    monitor-exit v2

    .line 252
    :goto_0
    return-object v1

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 640
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/df;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    .line 641
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 645
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/co;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    .line 642
    :cond_0
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "getPublicInfo"

    .line 649
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/dp;)Lcom/amap/api/mapcore2d/dv;
    .locals 1

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->c:Lcom/amap/api/mapcore2d/dv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->c:Lcom/amap/api/mapcore2d/dv;

    return-object v0

    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/df$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/df$a;-><init>(Lcom/amap/api/mapcore2d/df;Lcom/amap/api/mapcore2d/dp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/df;->c:Lcom/amap/api/mapcore2d/dv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/amap/api/mapcore2d/df;->b:I

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/df;->b(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/cu;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/df;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/df;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-nez v4, :cond_3

    .line 134
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, ""

    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "com.amap.api.col"

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    :goto_0
    return-void

    .line 140
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cu;

    .line 141
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cu;->f()[Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/df;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "\n"

    const-string/jumbo v2, "<br/>"

    .line 143
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/cu;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 157
    :cond_6
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/cu$a;

    const-string/jumbo v1, "collection"

    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cu$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    .line 158
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cu$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cu$a;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cu$a;->a()Lcom/amap/api/mapcore2d/cu;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/cu;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ck;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/amap/api/mapcore2d/cu;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amap/api/mapcore2d/df;->a:Lcom/amap/api/mapcore2d/cu;

    .line 239
    return-void
.end method

.method a(Lcom/amap/api/mapcore2d/cu;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p1}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/cu;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->d()Ljava/lang/String;

    move-result-object v5

    .line 79
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static/range {p2 .. p2}, Lcom/amap/api/mapcore2d/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 82
    if-nez p3, :cond_1

    .line 83
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, ""

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v6

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    if-nez p5, :cond_3

    .line 91
    :goto_0
    if-nez p6, :cond_4

    .line 96
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/df;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    .line 98
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-nez v2, :cond_5

    .line 101
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v7, "class:"

    .line 88
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v7, " method:"

    .line 92
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<br/>"

    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, ""

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->a()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 109
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore2d/dp;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore2d/dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 110
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dp;)Z

    move-result v16

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/dp;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 114
    monitor-exit v3

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Lcom/amap/api/mapcore2d/cu;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 69
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore2d/df;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/cu;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/amap/api/mapcore2d/df;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 196
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore2d/df;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 197
    if-nez v2, :cond_1

    .line 198
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/df;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 201
    if-nez v8, :cond_3

    .line 202
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, ""

    .line 201
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->d()Ljava/lang/String;

    move-result-object v5

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore2d/df;->a:Lcom/amap/api/mapcore2d/cu;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ANR"

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v6

    move-object/from16 v2, p0

    .line 209
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    if-nez v2, :cond_5

    .line 216
    :cond_4
    return-void

    :cond_5
    const-string/jumbo v3, ""

    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore2d/df;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/df;->a()Ljava/lang/String;

    move-result-object v10

    .line 221
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 222
    :try_start_0
    new-instance v12, Lcom/amap/api/mapcore2d/dp;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/mapcore2d/dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 223
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/dp;)Z

    move-result v16

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore2d/df;->a:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/dp;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 227
    monitor-exit v3

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method c()V
    .locals 3

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    if-nez v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/du;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->d:Lcom/amap/api/mapcore2d/du;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/du;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    .line 745
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :catch_1
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    .line 748
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 474
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/df;->e(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/df;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/dp;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dp;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore2d/df;->a(Lcom/amap/api/mapcore2d/dp;I)V

    const/4 v2, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/mapcore2d/cz;->a(I)Ljava/lang/Class;

    move-result-object v3

    .line 491
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/dp;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 494
    if-nez v2, :cond_2

    .line 495
    :cond_0
    monitor-exit v1

    return-void

    .line 477
    :cond_1
    return-void

    .line 494
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore2d/df;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 499
    if-eqz v3, :cond_3

    .line 502
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore2d/df;->c(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 503
    if-eq v3, v4, :cond_4

    .line 507
    :goto_0
    monitor-exit v1

    .line 515
    :goto_1
    return-void

    .line 500
    :cond_3
    monitor-exit v1

    return-void

    .line 504
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/df;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/mapcore2d/df;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/dp;I)V

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 514
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processUpdateLog"

    .line 512
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
