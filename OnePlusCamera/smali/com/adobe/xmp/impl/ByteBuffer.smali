.class public Lcom/adobe/xmp/impl/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field private buffer:[B

.field private encoding:Ljava/lang/String;

.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x4000

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 80
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 86
    if-eq v0, v2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 88
    :cond_1
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit16 v0, v0, 0x4000

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 50
    array-length v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 60
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 65
    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "Valid length exceeds the buffer length."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 105
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 109
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 110
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 112
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "Valid length exceeds the buffer length."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 322
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 323
    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public append(B)V
    .locals 3

    .prologue
    .line 184
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    .line 185
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 186
    return-void
.end method

.method public append(Lcom/adobe/xmp/impl/ByteBuffer;)V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v1, 0x0

    iget v2, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 221
    return-void
.end method

.method public append([B)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 211
    return-void
.end method

.method public append([BII)V
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    .line 199
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 201
    return-void
.end method

.method public byteAt(I)B
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt p1, v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "The index exceeds the valid buffer area"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public charAt(I)I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt p1, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "The index exceeds the valid buffer area"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    return-object v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt v0, v3, :cond_2

    .line 241
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-lt v0, v1, :cond_8

    .line 288
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xef

    if-eq v0, v1, :cond_c

    .line 292
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v6, :cond_d

    .line 296
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge v0, v4, :cond_e

    :cond_1
    const-string/jumbo v0, "UTF-16"

    .line 298
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "UTF-8"

    .line 239
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_3
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge v0, v4, :cond_5

    :cond_4
    const-string/jumbo v0, "UTF-16BE"

    .line 250
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v5

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v6, :cond_7

    :cond_6
    const-string/jumbo v0, "UTF-32"

    .line 258
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "UTF-32BE"

    .line 254
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v5

    if-nez v0, :cond_a

    .line 271
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge v0, v4, :cond_b

    :cond_9
    const-string/jumbo v0, "UTF-16LE"

    .line 273
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string/jumbo v0, "UTF-8"

    .line 269
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_9

    const-string/jumbo v0, "UTF-32LE"

    .line 277
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "UTF-8"

    .line 290
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "UTF-16"

    .line 294
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    .line 296
    :cond_e
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_1

    const-string/jumbo v0, "UTF-32"

    .line 302
    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return v0
.end method
