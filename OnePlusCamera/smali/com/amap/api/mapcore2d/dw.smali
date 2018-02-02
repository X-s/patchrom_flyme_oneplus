.class public Lcom/amap/api/mapcore2d/dw;
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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_1
    if-eqz p3, :cond_0

    .line 109
    if-ltz p2, :cond_2

    .line 112
    sget-object v0, Lcom/amap/api/mapcore2d/dx;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dw;->a:Ljava/io/InputStream;

    .line 117
    iput-object p3, p0, Lcom/amap/api/mapcore2d/dw;->b:Ljava/nio/charset/Charset;

    .line 118
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    .line 119
    return-void

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
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

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore2d/dw;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/dw;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->b:Ljava/nio/charset/Charset;

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

    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    .line 218
    if-eq v0, v1, :cond_0

    .line 221
    iput v3, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    .line 222
    iput v0, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    .line 223
    return-void

    .line 219
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

    .line 148
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dw;->a:Ljava/io/InputStream;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    if-eqz v0, :cond_1

    .line 158
    iget v0, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    if-ge v0, v1, :cond_2

    .line 163
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    if-ne v1, v0, :cond_3

    .line 175
    new-instance v1, Lcom/amap/api/mapcore2d/dw$1;

    iget v0, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    iget v3, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore2d/dw$1;-><init>(Lcom/amap/api/mapcore2d/dw;I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    iget v3, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    iget v4, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    iget v5, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    .line 196
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dw;->b()V

    .line 199
    iget v0, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    :goto_2
    iget v3, p0, Lcom/amap/api/mapcore2d/dw;->e:I

    if-eq v0, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    aget-byte v3, v3, v0

    if-eq v3, v6, :cond_7

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :catchall_0
    move-exception v0

    .line 209
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dw;->b()V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    aget-byte v0, v0, v1

    if-eq v0, v6, :cond_4

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_4
    iget v0, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    if-ne v1, v0, :cond_6

    :cond_5
    move v0, v1

    .line 166
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    iget v5, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    iget v6, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/amap/api/mapcore2d/dw;->b:Ljava/nio/charset/Charset;

    .line 167
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 168
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    .line 169
    monitor-exit v2

    return-object v3

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v0, v3

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 201
    :cond_7
    iget v3, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    if-ne v0, v3, :cond_8

    .line 204
    :goto_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 202
    :cond_8
    iget-object v3, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    iget v4, p0, Lcom/amap/api/mapcore2d/dw;->d:I

    iget v5, p0, Lcom/amap/api/mapcore2d/dw;->d:I

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
    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dw;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    if-nez v0, :cond_0

    .line 134
    :goto_0
    monitor-exit v1

    .line 135
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dw;->c:[B

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dw;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
