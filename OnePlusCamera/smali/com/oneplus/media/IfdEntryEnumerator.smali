.class public Lcom/oneplus/media/IfdEntryEnumerator;
.super Ljava/lang/Object;
.source "IfdEntryEnumerator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/IfdEntryEnumerator$1;
    }
.end annotation


# static fields
.field public static final ENTRY_TYPE_BYTE:I = 0x1

.field public static final ENTRY_TYPE_DOUBLE:I = 0xc

.field public static final ENTRY_TYPE_FLOAT:I = 0xb

.field public static final ENTRY_TYPE_INT:I = 0x9

.field public static final ENTRY_TYPE_RATIONAL:I = 0xa

.field public static final ENTRY_TYPE_SBYTE:I = 0x6

.field public static final ENTRY_TYPE_SHORT:I = 0x8

.field public static final ENTRY_TYPE_STRING:I = 0x2

.field public static final ENTRY_TYPE_UINT:I = 0x4

.field public static final ENTRY_TYPE_UNDEFINED:I = 0x7

.field public static final ENTRY_TYPE_URATIONAL:I = 0x5

.field public static final ENTRY_TYPE_USHORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "IfdEntryEnumerator"


# instance fields
.field private final m_CurrentEntry:[B

.field private m_CurrentEntryId:I

.field private m_CurrentEntryType:I

.field private m_CurrentIfd:Lcom/oneplus/media/Ifd;

.field private m_CurrentPosition:I

.field private m_ExifIfdOffset:I

.field private m_GpsIfdOffset:I

.field private m_IsLittleEndian:Z

.field private m_RestTagCount:I

.field private final m_Stream:Lcom/oneplus/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "headerOffset"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    .line 74
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    .line 78
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    .line 79
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No stream."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    :try_start_0
    new-instance v1, Lcom/oneplus/io/BufferedInputStream;

    const/4 v7, 0x0

    invoke-direct {v1, p1, v7}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    .line 103
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 104
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    new-array v4, v6, [B

    .local v4, "buffer":[B
    move-object v1, p0

    move v7, v5

    .line 113
    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to read TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to save stream position."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "buffer":[B
    :cond_1
    aget-byte v1, v4, v5

    const/16 v7, 0x49

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    .line 116
    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 119
    invoke-direct {p0, v6, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v8

    .line 120
    .local v8, "ifd0Offset":Ljava/lang/Integer;
    if-nez v8, :cond_3

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to read TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8    # "ifd0Offset":Ljava/lang/Integer;
    :cond_2
    move v1, v5

    .line 115
    goto :goto_0

    .line 122
    .restart local v8    # "ifd0Offset":Ljava/lang/Integer;
    :cond_3
    const/16 v1, 0x8

    iput v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 123
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v1, v5

    int-to-long v10, v1

    .line 124
    .local v10, "skipBytes":J
    cmp-long v1, v10, v2

    if-gez v1, :cond_4

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v1, v10, v11}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    return-void

    .line 130
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to read TIFF header"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getEntryDataSize()I
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    .line 330
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 331
    iget v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    invoke-direct {p0, v1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize(II)I

    move-result v1

    .line 332
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEntryDataSize(I)I
    .locals 1
    .param p1, "dataType"    # I

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 355
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 342
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 353
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getEntryDataSize(II)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "count"    # I

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize(I)I

    move-result v0

    mul-int/2addr v0, p2

    return v0
.end method

.method private getEntryDataString([D)Ljava/lang/String;
    .locals 10
    .param p1, "values"    # [D

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 416
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 417
    :cond_0
    const-string v2, ""

    .line 426
    :goto_0
    return-object v2

    .line 418
    :cond_1
    array-length v2, p1

    if-ne v2, v9, :cond_2

    .line 419
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 423
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getEntryDataString([I)Ljava/lang/String;
    .locals 7
    .param p1, "values"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 402
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 403
    :cond_0
    const-string v2, ""

    .line 412
    :goto_0
    return-object v2

    .line 404
    :cond_1
    array-length v2, p1

    if-ne v2, v4, :cond_2

    .line 405
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 406
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 409
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getEntryDataStringInternal()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 435
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-object v5

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 440
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 444
    array-length v2, v1

    .line 445
    .local v2, "dataLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v4, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 448
    aget-byte v5, v1, v3

    int-to-char v0, v5

    .line 449
    .local v0, "c":C
    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private readDouble([BI)D
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v4, 0x20

    .line 578
    iget-boolean v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v2, :cond_0

    .line 579
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    int-to-long v4, v4

    or-long v0, v2, v4

    .line 582
    .local v0, "rawBits":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 581
    .end local v0    # "rawBits":J
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    int-to-long v4, v4

    or-long v0, v2, v4

    .restart local v0    # "rawBits":J
    goto :goto_0
.end method

.method private readDouble(I)Ljava/lang/Double;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->readDouble(IZ)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private readDouble(IZ)Ljava/lang/Double;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "resetPosition"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 570
    new-array v4, v6, [B

    .line 571
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    .line 573
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private readFloat([BI)F
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 600
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private readFloat(I)Ljava/lang/Float;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->readFloat(IZ)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private readFloat(IZ)Ljava/lang/Float;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "resetPosition"    # Z

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v0

    .line 594
    .local v0, "data":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 596
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFromStream(J[BIIZ)Z
    .locals 9
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "resetPosition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 607
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    int-to-long v4, v4

    sub-long v2, p1, v4

    .line 608
    .local v2, "skipBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 610
    :cond_1
    if-eqz p6, :cond_2

    .line 611
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    int-to-long v6, p5

    add-long/2addr v6, v2

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V

    .line 614
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 625
    if-eqz p6, :cond_0

    .line 629
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, p3, p4, p5}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-lt v4, p5, :cond_4

    const/4 v1, 0x1

    .line 625
    :cond_4
    if-eqz p6, :cond_0

    .line 629
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 633
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 620
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 625
    if-eqz p6, :cond_0

    .line 629
    :try_start_5
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 631
    :catch_3
    move-exception v0

    .line 633
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz p6, :cond_5

    .line 629
    :try_start_6
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 634
    :cond_5
    :goto_1
    throw v1

    .line 631
    :catch_4
    move-exception v0

    .line 633
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readInteger([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 655
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 656
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private readInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 643
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private readInteger(IZ)Ljava/lang/Integer;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 647
    new-array v4, v6, [B

    .line 648
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private readRational(I)Landroid/util/Rational;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational(IZ)Landroid/util/Rational;

    move-result-object v0

    return-object v0
.end method

.method private readRational(IZ)Landroid/util/Rational;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "resetPosition"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 668
    new-array v4, v6, [B

    .line 669
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v0

    goto :goto_0
.end method

.method private readRational([BI)Landroid/util/Rational;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 675
    new-instance v0, Landroid/util/Rational;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    return-object v0
.end method

.method private readShort(I)Ljava/lang/Short;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 682
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort(IZ)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method private readShort(IZ)Ljava/lang/Short;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 686
    new-array v4, v6, [B

    .line 687
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0
.end method

.method private readShort([BI)S
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 694
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 695
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/oneplus/io/BufferedInputStream;->close()V

    .line 143
    return-void
.end method

.method public currentEntryId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    return v0
.end method

.method public currentEntryType()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    return v0
.end method

.method public currentIfd()Lcom/oneplus/media/Ifd;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    return-object v0
.end method

.method public getEntryData()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v3, 0x8

    .line 183
    iget v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize()I

    move-result v0

    .line 188
    .local v0, "dataSize":I
    if-gtz v0, :cond_2

    move-object v4, v9

    .line 202
    :cond_1
    :goto_0
    return-object v4

    .line 193
    :cond_2
    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    add-int/lit8 v2, v0, 0x8

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .local v4, "data":[B
    goto :goto_0

    .line 197
    .end local v4    # "data":[B
    :cond_3
    new-array v4, v0, [B

    .line 198
    .restart local v4    # "data":[B
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    invoke-direct {p0, v1, v3}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v8

    .line 199
    .local v8, "offset":I
    int-to-long v2, v8

    const/4 v5, 0x0

    array-length v6, v4

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v4, v9

    .line 200
    goto :goto_0
.end method

.method public getEntryDataDouble()[D
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 213
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v6, :cond_0

    .line 214
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 217
    :cond_0
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v6, :pswitch_data_0

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 240
    .local v1, "data":[B
    if-nez v1, :cond_2

    .line 269
    .end local v1    # "data":[B
    :cond_1
    return-object v0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v4

    .line 227
    .local v4, "intArray":[I
    if-eqz v4, :cond_1

    .line 229
    array-length v6, v4

    new-array v0, v6, [D

    .line 230
    .local v0, "array":[D
    array-length v6, v4

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 231
    aget v6, v4, v3

    int-to-double v6, v6

    aput-wide v6, v0, v3

    .line 230
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 244
    .end local v0    # "array":[D
    .end local v3    # "i":I
    .end local v4    # "intArray":[I
    .restart local v1    # "data":[B
    :cond_2
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 245
    .local v2, "dataCount":I
    if-lez v2, :cond_1

    .line 249
    new-array v0, v2, [D

    .line 250
    .restart local v0    # "array":[D
    const/4 v5, 0x0

    .line 251
    .local v5, "offset":I
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v6, :pswitch_data_1

    .line 267
    :pswitch_2
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 254
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 255
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readDouble([BI)D

    move-result-wide v6

    aput-wide v6, v0, v3

    .line 254
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 258
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_1

    .line 259
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readFloat([BI)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v0, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 263
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_1

    .line 264
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v0, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 251
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getEntryDataInteger()[I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 280
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v6, :cond_0

    .line 281
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 285
    .local v1, "data":[B
    if-nez v1, :cond_2

    move-object v0, v5

    .line 322
    :cond_1
    :goto_0
    return-object v0

    .line 289
    :cond_2
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 290
    .local v2, "dataCount":I
    if-gtz v2, :cond_3

    move-object v0, v5

    .line 291
    goto :goto_0

    .line 294
    :cond_3
    new-array v0, v2, [I

    .line 295
    .local v0, "array":[I
    const/4 v4, 0x0

    .line 296
    .local v4, "offset":I
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move-object v0, v5

    .line 320
    goto :goto_0

    .line 299
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 300
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    aput v5, v0, v3

    .line 299
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "i":I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_1

    .line 304
    aget-byte v5, v1, v4

    aput v5, v0, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 307
    .end local v3    # "i":I
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_1

    .line 308
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v5

    aput v5, v0, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 311
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v2, :cond_1

    .line 312
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    ushr-int/lit8 v5, v5, 0x10

    aput v5, v0, v3

    .line 311
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 316
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v2, :cond_1

    .line 317
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v5

    aput v5, v0, v3

    .line 316
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_5

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getEntryDataString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 370
    iget v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v2, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 373
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataStringInternal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v0

    .line 382
    .local v0, "array":[I
    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 391
    .end local v0    # "array":[I
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataDouble()[D

    move-result-object v0

    .line 392
    .local v0, "array":[D
    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public read()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 465
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v4, :cond_1

    .line 557
    :goto_0
    return v1

    .line 490
    .local v2, "skipBytes":J
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 491
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 492
    sget-object v4, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    .line 516
    .end local v2    # "skipBytes":J
    :goto_1
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "read() - Move to IFD : "

    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort(IZ)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 520
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 521
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "read() - Tag count : "

    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    :cond_1
    :goto_2
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    if-gtz v4, :cond_6

    .line 477
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    if-eqz v4, :cond_5

    .line 479
    sget-object v4, Lcom/oneplus/media/IfdEntryEnumerator$1;->$SwitchMap$com$oneplus$media$Ifd:[I

    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    invoke-virtual {v5}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 510
    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "read() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 482
    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ltz v4, :cond_3

    .line 484
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 485
    .restart local v2    # "skipBytes":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 487
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 496
    .end local v2    # "skipBytes":J
    :cond_3
    :pswitch_1
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v4, :cond_2

    .line 498
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 499
    .restart local v2    # "skipBytes":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_4

    .line 501
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 504
    :cond_4
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 505
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 506
    sget-object v4, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto :goto_1

    .line 515
    .end local v2    # "skipBytes":J
    :cond_5
    sget-object v4, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_1

    .line 526
    :cond_6
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 527
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    invoke-virtual {v4, v5}, Lcom/oneplus/io/BufferedInputStream;->read([B)I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_7

    .line 529
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_0

    .line 532
    :cond_7
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    .line 533
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    .line 536
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    sget-object v5, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v5, 0x8769

    if-ne v4, v5, :cond_8

    .line 538
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    .line 539
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_2

    .line 542
    :cond_8
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v5, 0x8825

    if-ne v4, v5, :cond_9

    .line 544
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    .line 545
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_2

    .line 550
    :cond_9
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
