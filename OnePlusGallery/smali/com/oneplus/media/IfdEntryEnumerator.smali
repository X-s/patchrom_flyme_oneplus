.class public Lcom/oneplus/media/IfdEntryEnumerator;
.super Ljava/lang/Object;
.source "IfdEntryEnumerator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$media$Ifd:[I = null

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
.method static synthetic $SWITCH_TABLE$com$oneplus$media$Ifd()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/oneplus/media/IfdEntryEnumerator;->$SWITCH_TABLE$com$oneplus$media$Ifd:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/media/Ifd;->values()[Lcom/oneplus/media/Ifd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/media/IfdEntryEnumerator;->$SWITCH_TABLE$com$oneplus$media$Ifd:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

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

    .line 93
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
    .line 364
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    .line 365
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 366
    iget v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    invoke-direct {p0, v1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize(II)I

    move-result v1

    .line 367
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
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 390
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 377
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 384
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 388
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 371
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
    .line 395
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

    .line 451
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 452
    :cond_0
    const-string v2, ""

    .line 461
    :goto_0
    return-object v2

    .line 453
    :cond_1
    array-length v2, p1

    if-ne v2, v9, :cond_2

    .line 454
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

    .line 455
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

    .line 456
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_3

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 458
    :cond_3
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
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

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getEntryDataString([I)Ljava/lang/String;
    .locals 7
    .param p1, "values"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 437
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 438
    :cond_0
    const-string v2, ""

    .line 447
    :goto_0
    return-object v2

    .line 439
    :cond_1
    array-length v2, p1

    if-ne v2, v4, :cond_2

    .line 440
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

    .line 441
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

    .line 442
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_3

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 444
    :cond_3
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getEntryDataStringInternal()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 470
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-object v5

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 475
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 479
    array-length v2, v1

    .line 480
    .local v2, "dataLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 481
    .local v4, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 489
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 483
    :cond_3
    aget-byte v5, v1, v3

    int-to-char v0, v5

    .line 484
    .local v0, "c":C
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private readDouble([BI)D
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v4, 0x20

    .line 651
    iget-boolean v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v2, :cond_0

    .line 652
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

    .line 655
    .local v0, "rawBits":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 654
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
    .line 639
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

    .line 643
    new-array v4, v6, [B

    .line 644
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 646
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
    .line 673
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
    .line 662
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
    .line 666
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v0

    .line 667
    .local v0, "data":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 669
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

    .line 680
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    int-to-long v4, v4

    sub-long v2, p1, v4

    .line 681
    .local v2, "skipBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    if-eqz p6, :cond_2

    .line 684
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    int-to-long v6, p5

    add-long/2addr v6, v2

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V

    .line 687
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

    .line 698
    if-eqz p6, :cond_0

    .line 702
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
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

    .line 698
    :cond_4
    if-eqz p6, :cond_0

    .line 702
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 704
    :catch_1
    move-exception v0

    .line 706
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 693
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 698
    if-eqz p6, :cond_0

    .line 702
    :try_start_5
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 704
    :catch_3
    move-exception v0

    .line 706
    const-string v4, "IfdEntryEnumerator"

    const-string v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 698
    if-eqz p6, :cond_5

    .line 702
    :try_start_6
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 709
    :cond_5
    :goto_1
    throw v1

    .line 704
    :catch_4
    move-exception v0

    .line 706
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
    .line 727
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 728
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

    .line 729
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
    .line 716
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

    .line 720
    new-array v4, v6, [B

    .line 721
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 723
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
    .line 737
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

    .line 741
    new-array v4, v6, [B

    .line 742
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    .line 744
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
    .line 748
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
    .line 755
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

    .line 759
    new-array v4, v6, [B

    .line 760
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    .line 762
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
    .line 766
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 767
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 768
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

.method public getEntryDataRational()[Landroid/util/Rational;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 333
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v5, :cond_0

    .line 334
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 338
    .local v1, "data":[B
    if-nez v1, :cond_2

    .line 357
    :cond_1
    :goto_0
    return-object v0

    .line 342
    :cond_2
    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 343
    .local v2, "dataCount":I
    if-lez v2, :cond_1

    .line 347
    new-array v0, v2, [Landroid/util/Rational;

    .line 348
    .local v0, "array":[Landroid/util/Rational;
    const/4 v4, 0x0

    .line 349
    .local v4, "offset":I
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 353
    :sswitch_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 354
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v5

    aput-object v5, v0, v3

    .line 353
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public getEntryDataString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 405
    iget v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v2, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 408
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataStringInternal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 416
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v0

    .line 417
    .local v0, "array":[I
    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 426
    .end local v0    # "array":[I
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataDouble()[D

    move-result-object v0

    .line 427
    .local v0, "array":[D
    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 405
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
    .locals 12

    .prologue
    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 500
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v6, :cond_1

    .line 630
    :goto_0
    return v4

    .line 528
    .local v1, "readGpsIfdFirst":Z
    .local v2, "skipBytes":J
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v6, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 529
    if-eqz v1, :cond_5

    .line 531
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 532
    sget-object v6, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    .line 592
    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :goto_1
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort(IZ)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 593
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 509
    :cond_1
    :goto_2
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    if-gtz v6, :cond_d

    .line 512
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    if-eqz v6, :cond_c

    .line 514
    invoke-static {}, Lcom/oneplus/media/IfdEntryEnumerator;->$SWITCH_TABLE$com$oneplus$media$Ifd()[I

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    invoke-virtual {v7}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 583
    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 628
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v5, "IfdEntryEnumerator"

    const-string v6, "read() - Unknown error"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    iput v8, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .line 517
    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ltz v6, :cond_6

    .line 519
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ge v6, v7, :cond_4

    move v1, v5

    .line 520
    .restart local v1    # "readGpsIfdFirst":Z
    :goto_3
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 521
    .restart local v2    # "skipBytes":J
    if-eqz v1, :cond_3

    .line 522
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 523
    :cond_3
    cmp-long v6, v2, v10

    if-gez v6, :cond_0

    .line 525
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto :goto_0

    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :cond_4
    move v1, v4

    .line 519
    goto :goto_3

    .line 536
    .restart local v1    # "readGpsIfdFirst":Z
    .restart local v2    # "skipBytes":J
    :cond_5
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 537
    sget-object v6, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto :goto_1

    .line 541
    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :cond_6
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v6, :cond_8

    .line 543
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 544
    .restart local v2    # "skipBytes":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_7

    .line 546
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_0

    .line 549
    :cond_7
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v6, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 550
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 551
    sget-object v6, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_1

    .line 555
    .end local v2    # "skipBytes":J
    :cond_8
    :pswitch_1
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v6, :cond_a

    .line 557
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 558
    .restart local v2    # "skipBytes":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_9

    .line 560
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_0

    .line 563
    :cond_9
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v6, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 564
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 565
    sget-object v6, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_1

    .line 569
    .end local v2    # "skipBytes":J
    :cond_a
    :pswitch_2
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ltz v6, :cond_2

    .line 571
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iget v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v6, v7

    int-to-long v2, v6

    .line 572
    .restart local v2    # "skipBytes":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_b

    .line 574
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_0

    .line 577
    :cond_b
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v6, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 578
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 579
    sget-object v6, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_1

    .line 588
    .end local v2    # "skipBytes":J
    :cond_c
    sget-object v6, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    iput-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_1

    .line 599
    :cond_d
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 600
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    iget-object v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    invoke-virtual {v6, v7}, Lcom/oneplus/io/BufferedInputStream;->read([B)I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_e

    .line 602
    const/4 v5, -0x1

    iput v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_0

    .line 605
    :cond_e
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    ushr-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    .line 606
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v6

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    .line 609
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    sget-object v7, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    if-ne v6, v7, :cond_f

    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v7, 0x8769

    if-ne v6, v7, :cond_f

    .line 611
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v6

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    .line 612
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v6, v6, 0xc

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_2

    .line 615
    :cond_f
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v7, 0x8825

    if-ne v6, v7, :cond_10

    .line 617
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v6

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    .line 618
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v6, v6, 0xc

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_2

    .line 623
    :cond_10
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v6, v6, 0xc

    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    .line 624
    goto/16 :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
