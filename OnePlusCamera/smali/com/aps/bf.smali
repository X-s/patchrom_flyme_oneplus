.class public final Lcom/aps/bf;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lcom/aps/ah;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/aps/ah;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/bf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;

    iput-object p1, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(J[B)V
    .locals 9

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    invoke-virtual {v0, p1, p2}, Lcom/aps/ah;->a(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/aps/bf;->d:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    invoke-virtual {v0}, Lcom/aps/ah;->a()I

    move-result v0

    new-array v2, v0, [B

    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    :goto_0
    invoke-static {v2}, Lcom/aps/ah;->b([B)Ljava/util/BitSet;

    move-result-object v2

    iget-object v3, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    invoke-virtual {v3}, Lcom/aps/ah;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    mul-int/lit16 v4, v0, 0x5dc

    add-int/2addr v3, v4

    if-gez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_5

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    invoke-virtual {v4}, Lcom/aps/ah;->a()I

    move-result v4

    shl-int/lit8 v4, v4, 0x3

    if-gt v0, v4, :cond_0

    iget-object v4, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p3}, Lcom/aps/ah;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v4, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v4, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/BitSet;->set(IZ)V

    iget-object v3, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/aps/ah;->a(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/aps/bf;->b:Lcom/aps/ah;

    invoke-virtual {v2}, Lcom/aps/ah;->a()I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    if-eq v0, v2, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/aps/bf;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aps/bf;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    :cond_4
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/aps/bf;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/bf;->c:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_4

    :try_start_8
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    :try_start_9
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_4

    :try_start_b
    iget-object v0, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_c
    iget-object v1, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_9

    :goto_5
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    :try_start_d
    iget-object v1, p0, Lcom/aps/bf;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method
