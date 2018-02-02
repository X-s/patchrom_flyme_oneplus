.class public final Lcom/aps/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aps/g$a;,
        Lcom/aps/g$b;,
        Lcom/aps/g$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


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
            "Lcom/aps/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
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

    .line 96
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/aps/g;->a:Ljava/util/regex/Pattern;

    .line 735
    new-instance v0, Lcom/aps/i;

    invoke-direct {v0}, Lcom/aps/i;-><init>()V

    sput-object v0, Lcom/aps/g;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lcom/aps/g;->j:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v4, p0, Lcom/aps/g;->n:J

    .line 163
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/aps/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v0, Lcom/aps/h;

    invoke-direct {v0, p0}, Lcom/aps/h;-><init>(Lcom/aps/g;)V

    iput-object v0, p0, Lcom/aps/g;->o:Ljava/util/concurrent/Callable;

    .line 182
    iput-object p1, p0, Lcom/aps/g;->c:Ljava/io/File;

    .line 183
    iput p2, p0, Lcom/aps/g;->g:I

    .line 184
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aps/g;->d:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aps/g;->e:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aps/g;->f:Ljava/io/File;

    .line 187
    iput p3, p0, Lcom/aps/g;->i:I

    .line 188
    iput-wide p4, p0, Lcom/aps/g;->h:J

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/aps/g;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/aps/g;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/aps/g$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/aps/g;->g()V

    .line 470
    invoke-direct {p0, p1}, Lcom/aps/g;->e(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    .line 472
    cmp-long v1, p2, v2

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    :cond_0
    monitor-exit p0

    .line 474
    return-object v4

    :cond_1
    monitor-exit p0

    .line 467
    return-object v4

    .line 472
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/aps/g$b;->e(Lcom/aps/g$b;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 476
    :cond_3
    if-eqz v0, :cond_4

    .line 479
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v1

    if-nez v1, :cond_5

    .line 483
    :goto_0
    new-instance v1, Lcom/aps/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/aps/g$a;-><init>(Lcom/aps/g;Lcom/aps/g$b;Lcom/aps/h;)V

    .line 484
    invoke-static {v0, v1}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Lcom/aps/g$a;)Lcom/aps/g$a;

    .line 487
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

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

    .line 488
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 489
    return-object v1

    .line 477
    :cond_4
    :try_start_2
    new-instance v0, Lcom/aps/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/aps/g$b;-><init>(Lcom/aps/g;Ljava/lang/String;Lcom/aps/h;)V

    .line 478
    iget-object v1, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    monitor-exit p0

    .line 480
    return-object v4
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/aps/g;
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

    .line 202
    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_1
    if-lez p2, :cond_2

    .line 210
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "journal.bkp"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    :goto_1
    new-instance v0, Lcom/aps/g;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/aps/g;-><init>(Ljava/io/File;IIJ)V

    .line 226
    iget-object v1, v0, Lcom/aps/g;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 245
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v0, Lcom/aps/g;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/aps/g;-><init>(Ljava/io/File;IIJ)V

    .line 250
    invoke-direct {v0}, Lcom/aps/g;->e()V

    .line 251
    return-object v0

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "journal"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    invoke-static {v0, v2, v1}, Lcom/aps/g;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 228
    :cond_5
    :try_start_0
    invoke-direct {v0}, Lcom/aps/g;->c()V

    .line 229
    invoke-direct {v0}, Lcom/aps/g;->d()V

    .line 230
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/aps/g;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/aps/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/aps/g;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-object v0

    :catch_0
    move-exception v1

    .line 234
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Lcom/aps/g;->a()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/aps/g;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/aps/g$a;Z)V
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

    .line 524
    :try_start_0
    invoke-static {p1}, Lcom/aps/g$a;->a(Lcom/aps/g$a;)Lcom/aps/g$b;

    move-result-object v3

    .line 525
    invoke-static {v3}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 530
    if-nez p2, :cond_3

    :cond_0
    move v2, v1

    .line 543
    :goto_0
    iget v4, p0, Lcom/aps/g;->i:I

    if-lt v2, v4, :cond_6

    .line 562
    iget v2, p0, Lcom/aps/g;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/aps/g;->m:I

    const/4 v2, 0x0

    .line 563
    invoke-static {v3, v2}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Lcom/aps/g$a;)Lcom/aps/g$a;

    .line 564
    invoke-static {v3}, Lcom/aps/g$b;->d(Lcom/aps/g$b;)Z

    move-result v2

    or-int/2addr v2, p2

    if-nez v2, :cond_9

    .line 571
    iget-object v2, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lcom/aps/g$b;->c(Lcom/aps/g$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v2, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/aps/g$b;->c(Lcom/aps/g$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 576
    iget-wide v2, p0, Lcom/aps/g;->j:J

    iget-wide v4, p0, Lcom/aps/g;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    :goto_2
    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/aps/g;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    :goto_3
    monitor-exit p0

    .line 579
    return-void

    .line 526
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

    .line 530
    :cond_3
    :try_start_2
    invoke-static {v3}, Lcom/aps/g$b;->d(Lcom/aps/g$b;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 531
    :goto_4
    iget v4, p0, Lcom/aps/g;->i:I

    if-ge v2, v4, :cond_0

    .line 532
    invoke-static {p1}, Lcom/aps/g$a;->b(Lcom/aps/g$a;)[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_4

    .line 536
    invoke-virtual {v3, v2}, Lcom/aps/g$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 533
    :cond_4
    invoke-virtual {p1}, Lcom/aps/g$a;->b()V

    .line 534
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

    .line 537
    :cond_5
    invoke-virtual {p1}, Lcom/aps/g$a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 538
    return-void

    .line 544
    :cond_6
    :try_start_3
    invoke-virtual {v3, v2}, Lcom/aps/g$b;->b(I)Ljava/io/File;

    move-result-object v4

    .line 545
    if-nez p2, :cond_8

    .line 558
    invoke-static {v4}, Lcom/aps/g;->a(Ljava/io/File;)V

    .line 543
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 546
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 547
    invoke-virtual {v3, v2}, Lcom/aps/g$b;->a(I)Ljava/io/File;

    move-result-object v5

    .line 548
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 552
    invoke-static {v3}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v4

    aget-wide v6, v4, v2

    .line 553
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 554
    invoke-static {v3}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v8

    aput-wide v4, v8, v2

    .line 555
    iget-wide v8, p0, Lcom/aps/g;->j:J

    sub-long v6, v8, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/aps/g;->j:J

    goto :goto_5

    .line 565
    :cond_9
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Z)Z

    .line 566
    iget-object v2, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CLEAN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/aps/g$b;->c(Lcom/aps/g$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/aps/g$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    if-eqz p2, :cond_1

    .line 568
    iget-wide v4, p0, Lcom/aps/g;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/aps/g;->n:J

    invoke-static {v3, v4, v5}, Lcom/aps/g$b;->a(Lcom/aps/g$b;J)J

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 576
    goto/16 :goto_2

    .line 577
    :cond_b
    iget-object v0, p0, Lcom/aps/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/aps/g;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/aps/g;Lcom/aps/g$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/aps/g;->a(Lcom/aps/g$a;Z)V

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
    .line 394
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
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
    .line 400
    if-nez p2, :cond_0

    .line 403
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    return-void

    .line 401
    :cond_0
    invoke-static {p1}, Lcom/aps/g;->a(Ljava/io/File;)V

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method static synthetic b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/aps/g;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/aps/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/aps/g;->h()V

    return-void
.end method

.method private c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    new-instance v1, Lcom/aps/r;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/aps/g;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/aps/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/aps/r;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 257
    :try_start_0
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "libcore.io.DiskLruCache"

    .line 262
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 267
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

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    invoke-static {v1}, Lcom/aps/s;->a(Ljava/io/Closeable;)V

    .line 282
    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v7, "1"

    .line 262
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/aps/g;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/aps/g;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/aps/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aps/g;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 280
    :try_start_3
    iget-object v2, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/aps/g;->m:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    invoke-static {v1}, Lcom/aps/s;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic c(Lcom/aps/g;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/aps/g;->f()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/aps/g;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/aps/g;->a(Ljava/io/File;)V

    .line 331
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    return-void

    .line 332
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;

    .line 333
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 338
    invoke-static {v0, v8}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Lcom/aps/g$a;)Lcom/aps/g$a;

    move v1, v2

    .line 339
    :goto_1
    iget v4, p0, Lcom/aps/g;->i:I

    if-lt v1, v4, :cond_3

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 334
    :goto_2
    iget v4, p0, Lcom/aps/g;->i:I

    if-ge v1, v4, :cond_0

    .line 335
    iget-wide v4, p0, Lcom/aps/g;->j:J

    invoke-static {v0}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/aps/g;->j:J

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 340
    :cond_3
    invoke-virtual {v0, v1}, Lcom/aps/g$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/aps/g;->a(Ljava/io/File;)V

    .line 341
    invoke-virtual {v0, v1}, Lcom/aps/g$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/aps/g;->a(Ljava/io/File;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic d(Lcom/aps/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/aps/g;->e()V

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

    .line 287
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 288
    if-eq v2, v5, :cond_3

    .line 292
    add-int/lit8 v0, v2, 0x1

    .line 293
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 295
    if-eq v3, v5, :cond_4

    .line 302
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;

    .line 306
    if-eqz v0, :cond_7

    .line 311
    :goto_1
    if-ne v3, v5, :cond_8

    .line 316
    :cond_0
    if-eq v3, v5, :cond_a

    .line 318
    :cond_1
    if-eq v3, v5, :cond_b

    .line 321
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

    .line 289
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

    .line 296
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "REMOVE"

    .line 297
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

    .line 298
    iget-object v1, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void

    .line 307
    :cond_7
    new-instance v0, Lcom/aps/g$b;

    invoke-direct {v0, p0, v1, v6}, Lcom/aps/g$b;-><init>(Lcom/aps/g;Ljava/lang/String;Lcom/aps/h;)V

    .line 308
    iget-object v4, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "CLEAN"

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Z)Z

    .line 314
    invoke-static {v0, v6}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Lcom/aps/g$a;)Lcom/aps/g$a;

    .line 315
    invoke-static {v0, v1}, Lcom/aps/g$b;->a(Lcom/aps/g$b;[Ljava/lang/String;)V

    .line 323
    :cond_9
    :goto_3
    return-void

    :cond_a
    const-string/jumbo v1, "DIRTY"

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    new-instance v1, Lcom/aps/g$a;

    invoke-direct {v1, p0, v0, v6}, Lcom/aps/g$a;-><init>(Lcom/aps/g;Lcom/aps/g$b;Lcom/aps/h;)V

    invoke-static {v0, v1}, Lcom/aps/g$b;->a(Lcom/aps/g$b;Lcom/aps/g$a;)Lcom/aps/g$a;

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "READ"

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_2

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/aps/g;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/aps/g;->i:I

    return v0
.end method

.method private declared-synchronized e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/aps/g;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/aps/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    .line 360
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 361
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    .line 362
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 363
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/aps/g;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 365
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget v0, p0, Lcom/aps/g;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 367
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 368
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

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

    .line 391
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 381
    iget-object v0, p0, Lcom/aps/g;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    :goto_2
    iget-object v0, p0, Lcom/aps/g;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/aps/g;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aps/g;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    iget-object v0, p0, Lcom/aps/g;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 389
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/aps/g;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/aps/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 391
    return-void

    .line 354
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    :cond_1
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;

    .line 371
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v3

    if-nez v3, :cond_2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/aps/g$b;->c(Lcom/aps/g$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/aps/g$b;->a()Ljava/lang/String;

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

    .line 379
    :catchall_1
    move-exception v0

    .line 391
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 378
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 372
    :cond_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/aps/g$b;->c(Lcom/aps/g$b;)Ljava/lang/String;

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

    .line 382
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/aps/g;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/aps/g;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/aps/g;->a(Ljava/io/File;Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 679
    sget-object v0, Lcom/aps/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    return-void

    .line 681
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

.method static synthetic f(Lcom/aps/g;)Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aps/g;->c:Ljava/io/File;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/aps/g;->m:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aps/g;->m:I

    iget-object v1, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 634
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    :goto_0
    iget-wide v0, p0, Lcom/aps/g;->j:J

    iget-wide v2, p0, Lcom/aps/g;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 664
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aps/g;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 666
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/aps/g$c;
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

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/aps/g;->g()V

    .line 418
    invoke-direct {p0, p1}, Lcom/aps/g;->e(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;

    .line 420
    if-eqz v0, :cond_1

    .line 424
    invoke-static {v0}, Lcom/aps/g$b;->d(Lcom/aps/g$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    iget v1, p0, Lcom/aps/g;->i:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 433
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/aps/g;->i:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v3, :cond_3

    .line 448
    :try_start_2
    iget v1, p0, Lcom/aps/g;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aps/g;->m:I

    .line 449
    iget-object v1, p0, Lcom/aps/g;->k:Ljava/io/Writer;

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

    .line 450
    invoke-direct {p0}, Lcom/aps/g;->f()Z

    move-result v1

    if-nez v1, :cond_6

    .line 454
    :goto_1
    new-instance v1, Lcom/aps/g$c;

    invoke-static {v0}, Lcom/aps/g$b;->e(Lcom/aps/g$b;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/aps/g$c;-><init>(Lcom/aps/g;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/aps/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    .line 415
    return-object v5

    :cond_1
    monitor-exit p0

    .line 421
    return-object v5

    :cond_2
    monitor-exit p0

    .line 425
    return-object v5

    .line 434
    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lcom/aps/g$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_4
    :try_start_4
    aget-object v0, v6, v2

    invoke-static {v0}, Lcom/aps/s;->a(Ljava/io/Closeable;)V

    .line 438
    add-int/lit8 v2, v2, 0x1

    :goto_2
    iget v0, p0, Lcom/aps/g;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v2, v0, :cond_5

    :goto_3
    monitor-exit p0

    .line 445
    return-object v5

    .line 439
    :cond_5
    :try_start_5
    aget-object v0, v6, v2

    if-nez v0, :cond_4

    goto :goto_3

    .line 451
    :cond_6
    iget-object v1, p0, Lcom/aps/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/aps/g;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 446
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/aps/g;->close()V

    .line 675
    iget-object v0, p0, Lcom/aps/g;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/aps/s;->a(Ljava/io/File;)V

    .line 676
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/aps/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 462
    invoke-direct {p0, p1, v0, v1}, Lcom/aps/g;->a(Ljava/lang/String;J)Lcom/aps/g$a;

    move-result-object v0

    return-object v0
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

    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/aps/g;->g()V

    .line 599
    invoke-direct {p0, p1}, Lcom/aps/g;->e(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 602
    return v1

    .line 601
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 605
    :goto_0
    iget v2, p0, Lcom/aps/g;->i:I

    if-lt v1, v2, :cond_2

    .line 614
    iget v0, p0, Lcom/aps/g;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/g;->m:I

    .line 615
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

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

    .line 616
    iget-object v0, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Lcom/aps/g;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 622
    :goto_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 606
    :cond_2
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/aps/g$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 610
    :cond_3
    iget-wide v2, p0, Lcom/aps/g;->j:J

    invoke-static {v0}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/aps/g;->j:J

    .line 611
    invoke-static {v0}, Lcom/aps/g$b;->b(Lcom/aps/g$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 608
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

    .line 619
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/aps/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/aps/g;->o:Ljava/util/concurrent/Callable;

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

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aps/g;->l:Ljava/util/LinkedHashMap;

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

    .line 656
    invoke-direct {p0}, Lcom/aps/g;->h()V

    .line 657
    iget-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lcom/aps/g;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 659
    return-void

    :cond_1
    monitor-exit p0

    .line 649
    return-void

    .line 651
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/g$b;

    .line 652
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 653
    invoke-static {v0}, Lcom/aps/g$b;->a(Lcom/aps/g$b;)Lcom/aps/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/g$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
