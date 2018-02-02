.class Lcom/aps/r;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_1
    if-eqz p3, :cond_0

    .line 90
    if-ltz p2, :cond_2

    .line 93
    sget-object v0, Lcom/aps/s;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iput-object p1, p0, Lcom/aps/r;->a:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/aps/r;->b:Ljava/nio/charset/Charset;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/aps/r;->c:[B

    .line 100
    return-void

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    const/16 v0, 0x2000

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcom/aps/r;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/aps/r;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aps/r;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/aps/r;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/aps/r;->c:[B

    iget-object v2, p0, Lcom/aps/r;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    .line 185
    if-eq v0, v1, :cond_0

    .line 188
    iput v3, p0, Lcom/aps/r;->d:I

    .line 189
    iput v0, p0, Lcom/aps/r;->e:I

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 126
    iget-object v2, p0, Lcom/aps/r;->a:Ljava/io/InputStream;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/aps/r;->c:[B

    if-eqz v0, :cond_1

    .line 134
    iget v0, p0, Lcom/aps/r;->d:I

    iget v1, p0, Lcom/aps/r;->e:I

    if-ge v0, v1, :cond_2

    .line 138
    :goto_0
    iget v1, p0, Lcom/aps/r;->d:I

    :goto_1
    iget v0, p0, Lcom/aps/r;->e:I

    if-ne v1, v0, :cond_3

    .line 148
    new-instance v1, Lcom/aps/r$1;

    iget v0, p0, Lcom/aps/r;->e:I

    iget v3, p0, Lcom/aps/r;->d:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/aps/r$1;-><init>(Lcom/aps/r;I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/aps/r;->c:[B

    iget v3, p0, Lcom/aps/r;->d:I

    iget v4, p0, Lcom/aps/r;->e:I

    iget v5, p0, Lcom/aps/r;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/aps/r;->e:I

    .line 164
    invoke-direct {p0}, Lcom/aps/r;->b()V

    .line 166
    iget v0, p0, Lcom/aps/r;->d:I

    :goto_2
    iget v3, p0, Lcom/aps/r;->e:I

    if-eq v0, v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/aps/r;->c:[B

    aget-byte v3, v3, v0

    if-eq v3, v6, :cond_7

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catchall_0
    move-exception v0

    .line 176
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/aps/r;->b()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/aps/r;->c:[B

    aget-byte v0, v0, v1

    if-eq v0, v6, :cond_4

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget v0, p0, Lcom/aps/r;->d:I

    if-ne v1, v0, :cond_6

    :cond_5
    move v0, v1

    .line 141
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/aps/r;->c:[B

    iget v5, p0, Lcom/aps/r;->d:I

    iget v6, p0, Lcom/aps/r;->d:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/aps/r;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/aps/r;->d:I

    .line 143
    monitor-exit v2

    return-object v3

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/aps/r;->c:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v0, v3

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 168
    :cond_7
    iget v3, p0, Lcom/aps/r;->d:I

    if-ne v0, v3, :cond_8

    .line 171
    :goto_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/r;->d:I

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 169
    :cond_8
    iget-object v3, p0, Lcom/aps/r;->c:[B

    iget v4, p0, Lcom/aps/r;->d:I

    iget v5, p0, Lcom/aps/r;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/aps/r;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/aps/r;->c:[B

    if-nez v0, :cond_0

    .line 114
    :goto_0
    monitor-exit v1

    .line 115
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/aps/r;->c:[B

    .line 112
    iget-object v0, p0, Lcom/aps/r;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
