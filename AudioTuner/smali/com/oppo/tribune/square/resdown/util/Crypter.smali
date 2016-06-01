.class public Lcom/oppo/tribune/square/resdown/util/Crypter;
.super Ljava/lang/Object;
.source "Crypter.java"


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private contextStart:I

.field private crypt:I

.field private header:Z

.field private key:[B

.field private out:[B

.field private padding:I

.field private plain:[B

.field private pos:I

.field private preCrypt:I

.field private prePlain:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->header:Z

    .line 97
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    .line 98
    return-void
.end method

.method private decipher([B)[B
    .locals 1
    .param p1, "in"    # [B

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decipher([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private decipher([BI)[B
    .locals 26
    .param p1, "in"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 122
    const/16 v14, 0x10

    .line 126
    .local v14, "loop":I
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v18

    .line 127
    .local v18, "y":J
    add-int/lit8 v22, p2, 0x4

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v20

    .line 128
    .local v20, "z":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v4

    .line 129
    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v6

    .line 130
    .local v6, "b":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v8

    .line 131
    .local v8, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0xc

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v10

    .line 135
    .local v10, "d":J
    const-wide/32 v16, -0x1c886470

    .line 136
    .local v16, "sum":J
    const-wide v22, 0xffffffffL

    and-long v16, v16, v22

    .line 137
    const-wide/32 v12, -0x61c88647

    .line 138
    .local v12, "delta":J
    const-wide v22, 0xffffffffL

    and-long v12, v12, v22

    move v15, v14

    .line 141
    .end local v14    # "loop":I
    .local v15, "loop":I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "loop":I
    .restart local v14    # "loop":I
    if-lez v15, :cond_0

    .line 142
    const/16 v22, 0x4

    shl-long v22, v18, v22

    add-long v22, v22, v8

    add-long v24, v18, v16

    xor-long v22, v22, v24

    const/16 v24, 0x5

    ushr-long v24, v18, v24

    add-long v24, v24, v10

    xor-long v22, v22, v24

    sub-long v20, v20, v22

    .line 143
    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    .line 144
    const/16 v22, 0x4

    shl-long v22, v20, v22

    add-long v22, v22, v4

    add-long v24, v20, v16

    xor-long v22, v22, v24

    const/16 v24, 0x5

    ushr-long v24, v20, v24

    add-long v24, v24, v6

    xor-long v22, v22, v24

    sub-long v18, v18, v22

    .line 145
    const-wide v22, 0xffffffffL

    and-long v18, v18, v22

    .line 146
    sub-long v16, v16, v12

    .line 147
    const-wide v22, 0xffffffffL

    and-long v16, v16, v22

    move v15, v14

    .end local v14    # "loop":I
    .restart local v15    # "loop":I
    goto :goto_0

    .line 150
    .end local v15    # "loop":I
    .restart local v14    # "loop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 151
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oppo/tribune/square/resdown/util/Crypter;->writeInt(I)V

    .line 152
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oppo/tribune/square/resdown/util/Crypter;->writeInt(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    return-object v22
.end method

.method private decrypt8Bytes([BII)Z
    .locals 7
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 285
    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    :goto_0
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 286
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->contextStart:I

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_0

    .line 302
    :goto_1
    return v0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 285
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    goto :goto_0

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    invoke-direct {p0, v2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decipher([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    .line 293
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    if-nez v2, :cond_2

    move v0, v1

    .line 294
    goto :goto_1

    .line 299
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->contextStart:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->contextStart:I

    .line 300
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    .line 301
    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    goto :goto_1
.end method

.method private encipher([B)[B
    .locals 26
    .param p1, "in"    # [B

    .prologue
    .line 314
    const/16 v14, 0x10

    .line 318
    .local v14, "loop":I
    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v18

    .line 319
    .local v18, "y":J
    const/16 v22, 0x4

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v20

    .line 320
    .local v20, "z":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v4

    .line 321
    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v6

    .line 322
    .local v6, "b":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v8

    .line 323
    .local v8, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    move-object/from16 v22, v0

    const/16 v23, 0xc

    const/16 v24, 0x4

    invoke-static/range {v22 .. v24}, Lcom/oppo/tribune/square/resdown/util/Crypter;->getUnsignedInt([BII)J

    move-result-wide v10

    .line 326
    .local v10, "d":J
    const-wide/16 v16, 0x0

    .line 327
    .local v16, "sum":J
    const-wide/32 v12, -0x61c88647

    .line 328
    .local v12, "delta":J
    const-wide v22, 0xffffffffL

    and-long v12, v12, v22

    move v15, v14

    .line 331
    .end local v14    # "loop":I
    .local v15, "loop":I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "loop":I
    .restart local v14    # "loop":I
    if-lez v15, :cond_0

    .line 332
    add-long v16, v16, v12

    .line 333
    const-wide v22, 0xffffffffL

    and-long v16, v16, v22

    .line 334
    const/16 v22, 0x4

    shl-long v22, v20, v22

    add-long v22, v22, v4

    add-long v24, v20, v16

    xor-long v22, v22, v24

    const/16 v24, 0x5

    ushr-long v24, v20, v24

    add-long v24, v24, v6

    xor-long v22, v22, v24

    add-long v18, v18, v22

    .line 335
    const-wide v22, 0xffffffffL

    and-long v18, v18, v22

    .line 336
    const/16 v22, 0x4

    shl-long v22, v18, v22

    add-long v22, v22, v8

    add-long v24, v18, v16

    xor-long v22, v22, v24

    const/16 v24, 0x5

    ushr-long v24, v18, v24

    add-long v24, v24, v10

    xor-long v22, v22, v24

    add-long v20, v20, v22

    .line 337
    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    move v15, v14

    .end local v14    # "loop":I
    .restart local v15    # "loop":I
    goto :goto_0

    .line 341
    .end local v15    # "loop":I
    .restart local v14    # "loop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 342
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oppo/tribune/square/resdown/util/Crypter;->writeInt(I)V

    .line 343
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oppo/tribune/square/resdown/util/Crypter;->writeInt(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    return-object v22
.end method

.method private encrypt8Bytes()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 446
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    :goto_0
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v1, v8, :cond_1

    .line 447
    iget-boolean v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->header:Z

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 446
    :goto_1
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    iget v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    invoke-direct {p0, v1}, Lcom/oppo/tribune/square/resdown/util/Crypter;->encipher([B)[B

    move-result-object v0

    .line 455
    .local v0, "crypted":[B
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    invoke-static {v0, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 458
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    :goto_2
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v1, v8, :cond_2

    .line 459
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v2, v3

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 458
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    goto :goto_2

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    invoke-static {v1, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 463
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    .line 464
    iget v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    .line 465
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 466
    iput-boolean v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->header:Z

    .line 467
    return-void
.end method

.method private static getUnsignedInt([BII)J
    .locals 8
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v6, 0x8

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "ret":J
    const/4 v0, 0x0

    .line 58
    .local v0, "end":I
    if-le p2, v6, :cond_0

    .line 59
    add-int/lit8 v0, p1, 0x8

    .line 62
    :goto_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 63
    shl-long/2addr v2, v6

    .line 64
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    :cond_0
    add-int v0, p1, p2

    goto :goto_0

    .line 66
    .restart local v1    # "i":I
    :cond_1
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private rand()I
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/oppo/tribune/square/resdown/util/Crypter;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private writeInt(I)V
    .locals 2
    .param p1, "t"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 485
    iget-object v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 486
    iget-object v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 488
    return-void
.end method


# virtual methods
.method public decrypt([BII[B)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 184
    if-nez p4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v3

    .line 187
    :cond_1
    iput v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    iput v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    .line 188
    iput-object p4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    .line 190
    add-int/lit8 v4, p2, 0x8

    new-array v2, v4, [B

    .line 193
    .local v2, "m":[B
    rem-int/lit8 v4, p3, 0x8

    if-nez v4, :cond_0

    const/16 v4, 0x10

    if-lt p3, v4, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decipher([BI)[B

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    .line 197
    iget-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 199
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    sub-int v4, p3, v4

    add-int/lit8 v0, v4, -0xa

    .line 201
    .local v0, "count":I
    if-ltz v0, :cond_0

    .line 206
    move v1, p2

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 207
    aput-byte v5, v2, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_2
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    .line 211
    iput v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    .line 213
    iput v8, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    .line 215
    iput v8, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->contextStart:I

    .line 217
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 223
    iput v9, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 224
    :cond_3
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_5

    .line 225
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v4, v8, :cond_4

    .line 226
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 227
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 229
    :cond_4
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v4, v8, :cond_3

    .line 230
    move-object v2, p1

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 238
    :cond_5
    const/4 v1, 0x0

    .line 239
    :cond_6
    if-eqz v0, :cond_8

    .line 240
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v4, v8, :cond_7

    .line 241
    iget-object v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    iget v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 246
    :cond_7
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v4, v8, :cond_6

    .line 247
    move-object v2, p1

    .line 248
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    add-int/lit8 v4, v4, -0x8

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_0

    .line 256
    :cond_8
    iput v9, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    :goto_2
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    if-ge v4, v8, :cond_b

    .line 257
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v4, v8, :cond_9

    .line 258
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v4, v5

    aget-byte v4, v2, v4

    iget-object v5, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    iget v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 260
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 262
    :cond_9
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v4, v8, :cond_a

    .line 263
    move-object v2, p1

    .line 264
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decrypt8Bytes([BII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    :cond_a
    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    goto :goto_2

    .line 269
    :cond_b
    iget-object v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    goto/16 :goto_0
.end method

.method public decrypt([B[B)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "k"    # [B

    .prologue
    .line 166
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->decrypt([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII[B)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 375
    if-nez p4, :cond_0

    .line 437
    .end local p1    # "in":[B
    :goto_0
    return-object p1

    .line 378
    .restart local p1    # "in":[B
    :cond_0
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    .line 379
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    .line 380
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 381
    iput v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 382
    iput v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->preCrypt:I

    iput v6, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->crypt:I

    .line 383
    iput-object p4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->key:[B

    .line 384
    iput-boolean v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->header:Z

    .line 387
    add-int/lit8 v2, p3, 0xa

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 388
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-eqz v2, :cond_1

    .line 389
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    rsub-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 391
    :cond_1
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    .line 394
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xf8

    iget v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 397
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-gt v0, v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_2
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    .line 401
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    .line 402
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->prePlain:[B

    aput-byte v6, v2, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 405
    :cond_3
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 406
    :cond_4
    :goto_3
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_6

    .line 407
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v2, v5, :cond_5

    .line 408
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->rand()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 409
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 411
    :cond_5
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v2, v5, :cond_4

    .line 412
    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->encrypt8Bytes()V

    goto :goto_3

    .line 416
    :cond_6
    move v0, p2

    move v1, v0

    .line 417
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_4
    if-lez p3, :cond_7

    .line 418
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v2, v5, :cond_c

    .line 419
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    .line 420
    add-int/lit8 p3, p3, -0x1

    .line 422
    :goto_5
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v2, v5, :cond_b

    .line 423
    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->encrypt8Bytes()V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 427
    :cond_7
    iput v7, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 428
    :cond_8
    :goto_6
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_a

    .line 429
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ge v2, v5, :cond_9

    .line 430
    iget-object v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->plain:[B

    iget v3, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    aput-byte v6, v2, v3

    .line 431
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->padding:I

    .line 433
    :cond_9
    iget v2, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->pos:I

    if-ne v2, v5, :cond_8

    .line 434
    invoke-direct {p0}, Lcom/oppo/tribune/square/resdown/util/Crypter;->encrypt8Bytes()V

    goto :goto_6

    .line 437
    :cond_a
    iget-object p1, p0, Lcom/oppo/tribune/square/resdown/util/Crypter;->out:[B

    goto/16 :goto_0

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_b
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    :cond_c
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_5
.end method

.method public encrypt([B[B)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "k"    # [B

    .prologue
    .line 357
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oppo/tribune/square/resdown/util/Crypter;->encrypt([BII[B)[B

    move-result-object v0

    return-object v0
.end method
