.class public Lcom/oneplus/media/IfdEntryEnumerator;
.super Ljava/lang/Object;
.source "IfdEntryEnumerator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final synthetic -com-oneplus-media-IfdSwitchesValues:[I = null

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

.field private static final STREAM_BUFFER_SIZE:I = 0x100000

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
.method private static synthetic -getcom-oneplus-media-IfdSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/media/IfdEntryEnumerator;->-com-oneplus-media-IfdSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/media/IfdEntryEnumerator;->-com-oneplus-media-IfdSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    invoke-virtual {v1}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/media/IfdEntryEnumerator;->-com-oneplus-media-IfdSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V

    .line 90
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

    .line 74
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    .line 75
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    .line 79
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    .line 80
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No stream."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    :try_start_0
    new-instance v1, Lcom/oneplus/io/BufferedInputStream;

    const/high16 v7, 0x100000

    const/4 v9, 0x0

    invoke-direct {v1, p1, v7, v9}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;IZ)V

    iput-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    .line 104
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v1, p2, p3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 105
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    new-array v4, v6, [B

    .local v4, "buffer":[B
    move-object v1, p0

    move v7, v5

    .line 114
    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to read TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to save stream position."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "buffer":[B
    :cond_1
    aget-byte v1, v4, v5

    const/16 v7, 0x49

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    .line 117
    iput v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 120
    invoke-direct {p0, v6, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v8

    .line 121
    .local v8, "ifd0Offset":Ljava/lang/Integer;
    if-nez v8, :cond_3

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to read TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8    # "ifd0Offset":Ljava/lang/Integer;
    :cond_2
    move v1, v5

    .line 116
    goto :goto_0

    .line 123
    .restart local v8    # "ifd0Offset":Ljava/lang/Integer;
    :cond_3
    const/16 v1, 0x8

    iput v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 124
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v1, v5

    int-to-long v10, v1

    .line 125
    .local v10, "skipBytes":J
    cmp-long v1, v10, v2

    if-gez v1, :cond_4

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v1, v10, v11}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    return-void

    .line 132
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to read TIFF header"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getEntryDataSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    .line 366
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 367
    iget v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    invoke-direct {p0, v1, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize(II)I

    move-result v1

    return v1

    .line 368
    :cond_0
    return v3
.end method

.method private getEntryDataSize(I)I
    .locals 1
    .param p1, "dataType"    # I

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 391
    const/4 v0, 0x0

    return v0

    .line 378
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 381
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 385
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 389
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 372
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
    .line 396
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

    .line 452
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 453
    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 454
    :cond_1
    array-length v2, p1

    if-ne v2, v9, :cond_2

    .line 455
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 456
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 459
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.5f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getEntryDataString([I)Ljava/lang/String;
    .locals 7
    .param p1, "values"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 438
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 439
    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 440
    :cond_1
    array-length v2, p1

    if-ne v2, v4, :cond_2

    .line 441
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 442
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 445
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getEntryDataStringInternal()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 471
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 472
    :cond_0
    return-object v7

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 476
    .local v1, "data":[B
    if-nez v1, :cond_2

    .line 477
    return-object v7

    .line 480
    :cond_2
    array-length v2, v1

    .line 481
    .local v2, "dataLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .local v4, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 484
    aget-byte v5, v1, v3

    int-to-char v0, v5

    .line 485
    .local v0, "c":C
    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private readDouble([BI)D
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v4, 0x20

    .line 652
    iget-boolean v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v2, :cond_0

    .line 653
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

    .line 656
    .local v0, "rawBits":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 655
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
    .line 640
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

    .line 644
    new-array v4, v6, [B

    .line 645
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 647
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private readFloat([BI)F
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 674
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
    .line 663
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
    const/4 v1, 0x0

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger(IZ)Ljava/lang/Integer;

    move-result-object v0

    .line 668
    .local v0, "data":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 670
    :cond_0
    return-object v1
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

    .line 681
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    int-to-long v4, v4

    sub-long v2, p1, v4

    .line 682
    .local v2, "skipBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 683
    return v1

    .line 684
    :cond_0
    if-eqz p6, :cond_1

    .line 685
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    int-to-long v6, p5

    add-long/2addr v6, v2

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/oneplus/io/BufferedInputStream;->mark(I)V

    .line 688
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 699
    if-eqz p6, :cond_2

    .line 703
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    :cond_2
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
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

    .line 699
    :cond_4
    if-eqz p6, :cond_5

    .line 703
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 690
    :cond_5
    :goto_1
    return v1

    .line 706
    :catch_1
    move-exception v0

    .line 707
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 693
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 694
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "readFromStream() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 699
    if-eqz p6, :cond_6

    .line 703
    :try_start_5
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 695
    :cond_6
    :goto_2
    return v1

    .line 706
    :catch_3
    move-exception v0

    .line 707
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 698
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 699
    if-eqz p6, :cond_7

    .line 703
    :try_start_6
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4}, Lcom/oneplus/io/BufferedInputStream;->reset()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 698
    :cond_7
    :goto_3
    throw v1

    .line 706
    :catch_4
    move-exception v0

    .line 707
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "readFromStream() - Fail to reset position"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private readInteger([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 729
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

    return v0

    .line 730
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

    return v0
.end method

.method private readInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 717
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

    .line 721
    new-array v4, v6, [B

    .line 722
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x0

    return-object v0

    .line 724
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private readRational(I)Landroid/util/Rational;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 738
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

    .line 742
    new-array v4, v6, [B

    .line 743
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    return-object v0

    .line 745
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v0

    return-object v0
.end method

.method private readRational([BI)Landroid/util/Rational;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 749
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
    .line 756
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

    .line 760
    new-array v4, v6, [B

    .line 761
    .local v4, "buffer":[B
    int-to-long v2, p1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const/4 v0, 0x0

    return-object v0

    .line 763
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method private readShort([BI)S
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_IsLittleEndian:Z

    if-eqz v0, :cond_0

    .line 768
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 769
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
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
    .line 143
    iget-object v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/oneplus/io/BufferedInputStream;->close()V

    .line 140
    return-void
.end method

.method public currentEntryId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    return v0
.end method

.method public currentEntryType()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    return v0
.end method

.method public currentIfd()Lcom/oneplus/media/Ifd;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    return-object v0
.end method

.method public getEntryData()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 184
    iget v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataSize()I

    move-result v0

    .line 189
    .local v0, "dataSize":I
    if-gtz v0, :cond_1

    .line 190
    return-object v9

    .line 194
    :cond_1
    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    add-int/lit8 v2, v0, 0x8

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 203
    .local v4, "data":[B
    :cond_2
    return-object v4

    .line 198
    .end local v4    # "data":[B
    :cond_3
    new-array v4, v0, [B

    .line 199
    .restart local v4    # "data":[B
    iget-object v1, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    invoke-direct {p0, v1, v3}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v8

    .line 200
    .local v8, "offset":I
    int-to-long v2, v8

    array-length v6, v4

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readFromStream(J[BIIZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    return-object v9
.end method

.method public getEntryDataDouble()[D
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 214
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v6, :cond_0

    .line 215
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 218
    :cond_0
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v6, :pswitch_data_0

    .line 240
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 241
    .local v1, "data":[B
    if-nez v1, :cond_3

    .line 242
    return-object v8

    .line 227
    .end local v1    # "data":[B
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v4

    .line 228
    .local v4, "intArray":[I
    if-eqz v4, :cond_2

    .line 230
    array-length v6, v4

    new-array v0, v6, [D

    .line 231
    .local v0, "array":[D
    array-length v6, v4

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 232
    aget v6, v4, v3

    int-to-double v6, v6

    aput-wide v6, v0, v3

    .line 231
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 233
    :cond_1
    return-object v0

    .line 235
    .end local v0    # "array":[D
    .end local v3    # "i":I
    :cond_2
    return-object v8

    .line 245
    .end local v4    # "intArray":[I
    .restart local v1    # "data":[B
    :cond_3
    iget-object v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 246
    .local v2, "dataCount":I
    if-gtz v2, :cond_4

    .line 247
    return-object v8

    .line 250
    :cond_4
    new-array v0, v2, [D

    .line 251
    .restart local v0    # "array":[D
    const/4 v5, 0x0

    .line 252
    .local v5, "offset":I
    iget v6, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v6, :pswitch_data_1

    .line 268
    :pswitch_2
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 255
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 256
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readDouble([BI)D

    move-result-wide v6

    aput-wide v6, v0, v3

    .line 255
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 259
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 260
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readFloat([BI)F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v0, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 264
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_5

    .line 265
    invoke-direct {p0, v1, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v0, v3

    .line 264
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 270
    :cond_5
    return-object v0

    .line 218
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

    .line 252
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
    const/4 v7, 0x0

    .line 281
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v5, :cond_0

    .line 282
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 286
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 287
    return-object v7

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 291
    .local v2, "dataCount":I
    if-gtz v2, :cond_2

    .line 292
    return-object v7

    .line 295
    :cond_2
    new-array v0, v2, [I

    .line 296
    .local v0, "array":[I
    const/4 v4, 0x0

    .line 297
    .local v4, "offset":I
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v5, :pswitch_data_0

    .line 321
    :pswitch_0
    return-object v7

    .line 300
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 301
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    aput v5, v0, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "i":I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 305
    aget-byte v5, v1, v4

    aput v5, v0, v3

    .line 304
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "i":I
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 309
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v5

    aput v5, v0, v3

    .line 308
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 312
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_3

    .line 313
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    ushr-int/lit8 v5, v5, 0x10

    aput v5, v0, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 317
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v2, :cond_3

    .line 318
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v5

    aput v5, v0, v3

    .line 317
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_4

    .line 323
    :cond_3
    return-object v0

    .line 297
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
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 334
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v5, :cond_0

    .line 335
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryData()[B

    move-result-object v1

    .line 339
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 340
    return-object v7

    .line 343
    :cond_1
    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v2

    .line 344
    .local v2, "dataCount":I
    if-gtz v2, :cond_2

    .line 345
    return-object v7

    .line 348
    :cond_2
    new-array v0, v2, [Landroid/util/Rational;

    .line 349
    .local v0, "array":[Landroid/util/Rational;
    const/4 v4, 0x0

    .line 350
    .local v4, "offset":I
    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    sparse-switch v5, :sswitch_data_0

    .line 358
    :cond_3
    return-object v0

    .line 354
    :sswitch_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 355
    invoke-direct {p0, v1, v4}, Lcom/oneplus/media/IfdEntryEnumerator;->readRational([BI)Landroid/util/Rational;

    move-result-object v5

    aput-object v5, v0, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 350
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public getEntryDataString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    iget v2, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    packed-switch v2, :pswitch_data_0

    .line 433
    :pswitch_0
    return-object v3

    .line 409
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataStringInternal()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 417
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v1

    .line 418
    .local v1, "array":[I
    if-eqz v1, :cond_0

    .line 419
    invoke-direct {p0, v1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 420
    :cond_0
    return-object v3

    .line 427
    .end local v1    # "array":[I
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataDouble()[D

    move-result-object v0

    .line 428
    .local v0, "array":[D
    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0, v0}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString([D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 430
    :cond_1
    return-object v3

    .line 406
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

    const/4 v6, 0x0

    .line 501
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    if-gez v4, :cond_1

    .line 502
    return v6

    .line 529
    .local v1, "readGpsIfdFirst":Z
    .local v2, "skipBytes":J
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 530
    if-eqz v1, :cond_5

    .line 532
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 533
    sget-object v4, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    .line 593
    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :goto_0
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort(IZ)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 594
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 510
    :cond_1
    :goto_1
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    if-gtz v4, :cond_d

    .line 513
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    if-eqz v4, :cond_c

    .line 515
    invoke-static {}, Lcom/oneplus/media/IfdEntryEnumerator;->-getcom-oneplus-media-IfdSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    invoke-virtual {v5}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 584
    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 585
    return v6

    .line 518
    :pswitch_0
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ltz v4, :cond_6

    .line 520
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ge v4, v5, :cond_4

    const/4 v1, 0x1

    .line 521
    .restart local v1    # "readGpsIfdFirst":Z
    :goto_2
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 522
    .restart local v2    # "skipBytes":J
    if-eqz v1, :cond_3

    .line 523
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 524
    :cond_3
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 526
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 527
    return v6

    .line 520
    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "readGpsIfdFirst":Z
    goto :goto_2

    .line 537
    .restart local v2    # "skipBytes":J
    :cond_5
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 538
    sget-object v4, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    .end local v1    # "readGpsIfdFirst":Z
    .end local v2    # "skipBytes":J
    :catch_0
    move-exception v0

    .line 629
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "IfdEntryEnumerator"

    const-string/jumbo v5, "read() - Unknown error"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    iput v7, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 631
    return v6

    .line 542
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_6
    :try_start_1
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v4, :cond_8

    .line 544
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 545
    .restart local v2    # "skipBytes":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_7

    .line 547
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 548
    return v6

    .line 550
    :cond_7
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 551
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 552
    sget-object v4, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_0

    .line 556
    .end local v2    # "skipBytes":J
    :cond_8
    :pswitch_1
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    if-ltz v4, :cond_a

    .line 558
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 559
    .restart local v2    # "skipBytes":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_9

    .line 561
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 562
    return v6

    .line 564
    :cond_9
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 565
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 566
    sget-object v4, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_0

    .line 570
    .end local v2    # "skipBytes":J
    :cond_a
    :pswitch_2
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    if-ltz v4, :cond_2

    .line 572
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iget v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 573
    .restart local v2    # "skipBytes":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_b

    .line 575
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 576
    return v6

    .line 578
    :cond_b
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Lcom/oneplus/io/BufferedInputStream;->skip(J)J

    .line 579
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 580
    sget-object v4, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_0

    .line 589
    .end local v2    # "skipBytes":J
    :cond_c
    sget-object v4, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    iput-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    goto/16 :goto_0

    .line 600
    :cond_d
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_RestTagCount:I

    .line 601
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_Stream:Lcom/oneplus/io/BufferedInputStream;

    iget-object v5, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    invoke-virtual {v4, v5}, Lcom/oneplus/io/BufferedInputStream;->read([B)I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_e

    .line 603
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    .line 604
    return v6

    .line 606
    :cond_e
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    ushr-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    .line 607
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readShort([BI)S

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryType:I

    .line 610
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentIfd:Lcom/oneplus/media/Ifd;

    sget-object v5, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    if-ne v4, v5, :cond_f

    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v5, 0x8769

    if-ne v4, v5, :cond_f

    .line 612
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_ExifIfdOffset:I

    .line 613
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_1

    .line 616
    :cond_f
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntryId:I

    const v5, 0x8825

    if-ne v4, v5, :cond_10

    .line 618
    iget-object v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentEntry:[B

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/IfdEntryEnumerator;->readInteger([BI)I

    move-result v4

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_GpsIfdOffset:I

    .line 619
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    goto/16 :goto_1

    .line 624
    :cond_10
    iget v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I

    add-int/lit8 v4, v4, 0xc

    iput v4, p0, Lcom/oneplus/media/IfdEntryEnumerator;->m_CurrentPosition:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 625
    const/4 v4, 0x1

    return v4

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
