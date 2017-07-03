.class public Lcom/oneplus/media/IsoBaseMediaReader;
.super Ljava/lang/Object;
.source "IsoBaseMediaReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final BOX_TYPE_FILE_TYPE:I = 0x66747970

.field public static final BOX_TYPE_MEDIA:I = 0x6d646961

.field public static final BOX_TYPE_MEDIA_INFO:I = 0x6d696e66

.field public static final BOX_TYPE_MOVIE:I = 0x6d6f6f76

.field public static final BOX_TYPE_MOVIE_HEADER:I = 0x6d766864

.field public static final BOX_TYPE_SAMPLE_DESCRIPTION:I = 0x73747364

.field public static final BOX_TYPE_SAMPLE_TABLE:I = 0x7374626c

.field public static final BOX_TYPE_TRACK:I = 0x7472616b

.field public static final BOX_TYPE_TRACK_HEADER:I = 0x746b6864

.field public static final BOX_TYPE_VIDEO_MEDIA_HEADER:I = 0x766d6864


# instance fields
.field private final m_Buffer8:[B

.field private m_CurrentBoxData:[B

.field private m_CurrentBoxSize:J

.field private m_CurrentBoxType:I

.field private m_IsCompleted:Z

.field private final m_Stream:Ljava/io/InputStream;

.field private m_StreamInitState:Lcom/oneplus/io/StreamState;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;Z)V

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "restoreStream"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    .line 79
    iput-object p1, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    .line 80
    if-eqz p2, :cond_0

    .line 84
    :try_start_0
    new-instance v1, Lcom/oneplus/io/StreamState;

    invoke-direct {v1, p1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_StreamInitState:Lcom/oneplus/io/StreamState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to save stream state"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readInteger()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x4

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 282
    :goto_0
    return-object v1

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private readLong()Ljava/lang/Long;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 306
    :goto_0
    return-object v1

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 295
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 296
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 297
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 298
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 299
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 300
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    .line 301
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Buffer8:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 294
    or-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_StreamInitState:Lcom/oneplus/io/StreamState;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_StreamInitState:Lcom/oneplus/io/StreamState;

    invoke-virtual {v0}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public currentBoxDataSize()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    return-wide v0
.end method

.method public currentBoxType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxType:I

    return v0
.end method

.method public getBoxData()[B
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 135
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    if-nez v4, :cond_3

    .line 137
    iget-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 139
    iput-boolean v8, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    .line 161
    :cond_0
    :goto_0
    return-object v3

    .line 142
    :cond_1
    iget-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 144
    iget-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    long-to-int v2, v4

    .line 145
    .local v2, "size":I
    new-array v0, v2, [B

    .line 148
    .local v0, "data":[B
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 150
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 153
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v0    # "data":[B
    .end local v2    # "size":I
    :cond_3
    iget-object v3, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    goto :goto_0
.end method

.method public getBoxDataReader()Lcom/oneplus/media/IsoBaseMediaReader;
    .locals 4

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No box to read"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lcom/oneplus/media/IsoBaseMediaReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V

    .line 178
    :goto_0
    return-object v0

    .line 175
    :cond_1
    iget-wide v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Lcom/oneplus/media/IsoBaseMediaReader;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-wide v0, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 178
    new-instance v0, Lcom/oneplus/media/IsoBaseMediaReader;

    iget-object v1, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/IsoBaseMediaReader;-><init>(Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of box data is too large : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-boolean v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    if-eqz v6, :cond_0

    .line 267
    :goto_0
    return v4

    .line 194
    :cond_0
    iget v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxType:I

    if-eqz v6, :cond_2

    .line 196
    iget-wide v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    if-nez v6, :cond_2

    .line 202
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_Stream:Ljava/io/InputStream;

    iget-wide v8, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    invoke-virtual {v6, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 204
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 210
    .local v2, "ex":Ljava/lang/Throwable;
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 217
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 223
    :cond_2
    iput-wide v10, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    .line 224
    iput v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxType:I

    .line 225
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxData:[B

    .line 228
    invoke-direct {p0}, Lcom/oneplus/media/IsoBaseMediaReader;->readInteger()Ljava/lang/Integer;

    move-result-object v0

    .line 229
    .local v0, "boxSize":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 231
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/media/IsoBaseMediaReader;->readInteger()Ljava/lang/Integer;

    move-result-object v1

    .line 237
    .local v1, "boxType":Ljava/lang/Integer;
    if-nez v1, :cond_4

    .line 239
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 246
    invoke-direct {p0}, Lcom/oneplus/media/IsoBaseMediaReader;->readLong()Ljava/lang/Long;

    move-result-object v3

    .line 247
    .local v3, "extBoxSize":Ljava/lang/Long;
    if-nez v3, :cond_5

    .line 249
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 252
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x10

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    .line 256
    .end local v3    # "extBoxSize":Ljava/lang/Long;
    :goto_1
    iget-wide v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_7

    .line 258
    iput-wide v10, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    .line 259
    iput-boolean v5, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_IsCompleted:Z

    goto :goto_0

    .line 255
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxSize:J

    goto :goto_1

    .line 264
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IsoBaseMediaReader;->m_CurrentBoxType:I

    move v4, v5

    .line 267
    goto :goto_0
.end method
