.class public final Lcom/amap/api/mapcore2d/du;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/du$a;,
        Lcom/amap/api/mapcore2d/du$b;,
        Lcom/amap/api/mapcore2d/du$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final q:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore2d/du$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/amap/api/mapcore2d/dv;

.field private o:J

.field private final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/du;->a:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/amap/api/mapcore2d/du$2;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/du$2;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/du;->q:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/du;->j:J

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/du;->o:J

    .line 168
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/du;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 171
    new-instance v0, Lcom/amap/api/mapcore2d/du$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/du$1;-><init>(Lcom/amap/api/mapcore2d/du;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->p:Ljava/util/concurrent/Callable;

    .line 189
    iput-object p1, p0, Lcom/amap/api/mapcore2d/du;->c:Ljava/io/File;

    .line 190
    iput p2, p0, Lcom/amap/api/mapcore2d/du;->g:I

    .line 191
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    .line 192
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->e:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->f:Ljava/io/File;

    .line 194
    iput p3, p0, Lcom/amap/api/mapcore2d/du;->i:I

    .line 195
    iput-wide p4, p0, Lcom/amap/api/mapcore2d/du;->h:J

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/du;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/amap/api/mapcore2d/du;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/amap/api/mapcore2d/du$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 481
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->i()V

    .line 482
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/du;->e(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    .line 484
    cmp-long v1, p2, v2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 486
    return-object v4

    .line 485
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->e(Lcom/amap/api/mapcore2d/du$c;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 488
    :cond_2
    if-eqz v0, :cond_3

    .line 491
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v1

    if-nez v1, :cond_4

    .line 495
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/du$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/amap/api/mapcore2d/du$a;-><init>(Lcom/amap/api/mapcore2d/du;Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$1;)V

    .line 496
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$a;

    .line 499
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 501
    return-object v1

    .line 489
    :cond_3
    :try_start_2
    new-instance v0, Lcom/amap/api/mapcore2d/du$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/du$c;-><init>(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;Lcom/amap/api/mapcore2d/du$1;)V

    .line 490
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    monitor-exit p0

    .line 492
    return-object v4
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/du;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 213
    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 213
    goto :goto_0

    .line 216
    :cond_1
    if-lez p2, :cond_2

    .line 221
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "journal.bkp"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    :goto_1
    new-instance v0, Lcom/amap/api/mapcore2d/du;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/du;-><init>(Ljava/io/File;IIJ)V

    .line 239
    iget-object v1, v0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 256
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 260
    new-instance v0, Lcom/amap/api/mapcore2d/du;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/du;-><init>(Ljava/io/File;IIJ)V

    .line 261
    invoke-direct {v0}, Lcom/amap/api/mapcore2d/du;->g()V

    .line 262
    return-object v0

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "journal"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 232
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 241
    :cond_5
    :try_start_0
    invoke-direct {v0}, Lcom/amap/api/mapcore2d/du;->e()V

    .line 242
    invoke-direct {v0}, Lcom/amap/api/mapcore2d/du;->f()V

    .line 243
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-object v0

    :catch_0
    move-exception v1

    .line 251
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/du;->c()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/du;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/amap/api/mapcore2d/du$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 537
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/du$a;->a(Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$c;

    move-result-object v3

    .line 538
    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 544
    if-nez p2, :cond_3

    :cond_0
    move v2, v1

    .line 559
    :goto_0
    iget v4, p0, Lcom/amap/api/mapcore2d/du;->i:I

    if-lt v2, v4, :cond_6

    .line 578
    iget v2, p0, Lcom/amap/api/mapcore2d/du;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amap/api/mapcore2d/du;->m:I

    const/4 v2, 0x0

    .line 579
    invoke-static {v3, v2}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$a;

    .line 580
    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->d(Lcom/amap/api/mapcore2d/du$c;)Z

    move-result v2

    or-int/2addr v2, p2

    if-nez v2, :cond_9

    .line 588
    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->c(Lcom/amap/api/mapcore2d/du$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->c(Lcom/amap/api/mapcore2d/du$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 591
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 593
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/du;->j:J

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/du;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    :goto_2
    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    :goto_3
    monitor-exit p0

    .line 596
    return-void

    .line 539
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_3
    :try_start_2
    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->d(Lcom/amap/api/mapcore2d/du$c;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 545
    :goto_4
    iget v4, p0, Lcom/amap/api/mapcore2d/du;->i:I

    if-ge v2, v4, :cond_0

    .line 546
    invoke-static {p1}, Lcom/amap/api/mapcore2d/du$a;->b(Lcom/amap/api/mapcore2d/du$a;)[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_4

    .line 552
    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/du$c;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 547
    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/du$a;->b()V

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/du$a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 554
    return-void

    .line 560
    :cond_6
    :try_start_3
    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/du$c;->b(I)Ljava/io/File;

    move-result-object v4

    .line 561
    if-nez p2, :cond_8

    .line 574
    invoke-static {v4}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;)V

    .line 559
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 562
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 563
    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/du$c;->a(I)Ljava/io/File;

    move-result-object v5

    .line 564
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 568
    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v4

    aget-wide v6, v4, v2

    .line 569
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 570
    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v8

    aput-wide v4, v8, v2

    .line 571
    iget-wide v8, p0, Lcom/amap/api/mapcore2d/du;->j:J

    sub-long v6, v8, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/du;->j:J

    goto :goto_5

    .line 581
    :cond_9
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Z)Z

    .line 582
    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CLEAN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/amap/api/mapcore2d/du$c;->c(Lcom/amap/api/mapcore2d/du$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/du$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    if-eqz p2, :cond_1

    .line 585
    iget-wide v4, p0, Lcom/amap/api/mapcore2d/du;->o:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/amap/api/mapcore2d/du;->o:J

    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;J)J

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 593
    goto/16 :goto_2

    .line 594
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/du;Lcom/amap/api/mapcore2d/du$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/du$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 420
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    return-void

    .line 418
    :cond_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;)V

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/du;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->j()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/du;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/amap/api/mapcore2d/du;->q:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/du;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 299
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 300
    if-eq v2, v5, :cond_3

    .line 304
    add-int/lit8 v0, v2, 0x1

    .line 305
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 307
    if-eq v3, v5, :cond_4

    .line 314
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;

    .line 318
    if-eqz v0, :cond_7

    .line 323
    :goto_1
    if-ne v3, v5, :cond_8

    .line 329
    :cond_0
    if-eq v3, v5, :cond_a

    .line 332
    :cond_1
    if-eq v3, v5, :cond_b

    .line 336
    :cond_2
    :goto_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "REMOVE"

    .line 309
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_6

    :cond_5
    move-object v1, v0

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void

    .line 319
    :cond_7
    new-instance v0, Lcom/amap/api/mapcore2d/du$c;

    invoke-direct {v0, p0, v1, v6}, Lcom/amap/api/mapcore2d/du$c;-><init>(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;Lcom/amap/api/mapcore2d/du$1;)V

    .line 320
    iget-object v4, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "CLEAN"

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "CLEAN"

    .line 324
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 326
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Z)Z

    .line 327
    invoke-static {v0, v6}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$a;

    .line 328
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;[Ljava/lang/String;)V

    .line 338
    :cond_9
    :goto_3
    return-void

    :cond_a
    const-string/jumbo v1, "DIRTY"

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string/jumbo v1, "DIRTY"

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v1, Lcom/amap/api/mapcore2d/du$a;

    invoke-direct {v1, p0, v0, v6}, Lcom/amap/api/mapcore2d/du$a;-><init>(Lcom/amap/api/mapcore2d/du;Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$1;)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$a;

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "READ"

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_2

    const-string/jumbo v0, "READ"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/du;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->i:I

    return v0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    new-instance v1, Lcom/amap/api/mapcore2d/dw;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/dw;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 269
    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "libcore.io.DiskLruCache"

    .line 274
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 278
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    invoke-static {v1}, Lcom/amap/api/mapcore2d/dx;->a(Ljava/io/Closeable;)V

    .line 294
    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v7, "1"

    .line 274
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/amap/api/mapcore2d/du;->g:I

    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/amap/api/mapcore2d/du;->i:I

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/du;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 292
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore2d/du;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    invoke-static {v1}, Lcom/amap/api/mapcore2d/dx;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 699
    sget-object v0, Lcom/amap/api/mapcore2d/du;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/du;)Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->c:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;)V

    .line 346
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    return-void

    .line 347
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;

    .line 348
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 353
    invoke-static {v0, v8}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;Lcom/amap/api/mapcore2d/du$a;)Lcom/amap/api/mapcore2d/du$a;

    move v1, v2

    .line 354
    :goto_1
    iget v4, p0, Lcom/amap/api/mapcore2d/du;->i:I

    if-lt v1, v4, :cond_3

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 349
    :goto_2
    iget v4, p0, Lcom/amap/api/mapcore2d/du;->i:I

    if-ge v1, v4, :cond_0

    .line 350
    iget-wide v4, p0, Lcom/amap/api/mapcore2d/du;->j:J

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/mapcore2d/du;->j:J

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    :cond_3
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/du;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    .line 375
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 376
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    .line 377
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 378
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 380
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 382
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 383
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 397
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 401
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 405
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 407
    return-void

    .line 369
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :cond_1
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;

    .line 386
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v3

    if-nez v3, :cond_2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->c(Lcom/amap/api/mapcore2d/du$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/du$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 395
    :catchall_1
    move-exception v0

    .line 407
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 394
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 387
    :cond_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->c(Lcom/amap/api/mapcore2d/du$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 398
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/du;->a(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->m:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->m:I

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    .line 605
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 651
    return-void

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/du;->j:J

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/du;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/du;->c(Ljava/lang/String;)Z

    .line 682
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->n:Lcom/amap/api/mapcore2d/dv;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->n:Lcom/amap/api/mapcore2d/dv;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/dv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 686
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->i()V

    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/du;->e(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;

    .line 434
    if-eqz v0, :cond_0

    .line 438
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->d(Lcom/amap/api/mapcore2d/du$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget v1, p0, Lcom/amap/api/mapcore2d/du;->i:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 447
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/amap/api/mapcore2d/du;->i:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v3, :cond_2

    .line 462
    :try_start_2
    iget v1, p0, Lcom/amap/api/mapcore2d/du;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/du;->m:I

    .line 463
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 464
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->h()Z

    move-result v1

    if-nez v1, :cond_5

    .line 468
    :goto_1
    new-instance v1, Lcom/amap/api/mapcore2d/du$b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->e(Lcom/amap/api/mapcore2d/du$c;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/mapcore2d/du$b;-><init>(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/amap/api/mapcore2d/du$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    .line 435
    return-object v5

    :cond_1
    monitor-exit p0

    .line 439
    return-object v5

    .line 448
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_3
    :try_start_4
    aget-object v0, v6, v2

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dx;->a(Ljava/io/Closeable;)V

    .line 452
    add-int/lit8 v2, v2, 0x1

    :goto_2
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v2, v0, :cond_4

    :goto_3
    monitor-exit p0

    .line 459
    return-object v5

    .line 453
    :cond_4
    :try_start_5
    aget-object v0, v6, v2

    if-nez v0, :cond_3

    goto :goto_3

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/du;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public a(Lcom/amap/api/mapcore2d/dv;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amap/api/mapcore2d/du;->n:Lcom/amap/api/mapcore2d/dv;

    .line 158
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/du$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 476
    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/String;J)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->i()V

    .line 656
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->j()V

    .line 657
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 658
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/du;->close()V

    .line 695
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dx;->a(Ljava/io/File;)V

    .line 696
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->i()V

    .line 616
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/du;->e(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 619
    return v1

    .line 618
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 622
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/du;->i:I

    if-lt v1, v2, :cond_2

    .line 631
    iget v0, p0, Lcom/amap/api/mapcore2d/du;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/du;->m:I

    .line 632
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 633
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->h()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 639
    :goto_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 623
    :cond_2
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/du$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 627
    :cond_3
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/du;->j:J

    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/du;->j:J

    .line 628
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->b(Lcom/amap/api/mapcore2d/du$c;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 625
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 636
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/du;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/du;->j()V

    .line 671
    iget-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/amap/api/mapcore2d/du;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 673
    return-void

    :cond_1
    monitor-exit p0

    .line 663
    return-void

    .line 665
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/du$c;

    .line 666
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 667
    invoke-static {v0}, Lcom/amap/api/mapcore2d/du$c;->a(Lcom/amap/api/mapcore2d/du$c;)Lcom/amap/api/mapcore2d/du$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/du$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
