.class public Lcom/vzw/nfc/dos/VzwTlv;
.super Ljava/lang/Object;
.source "VzwTlv.java"


# instance fields
.field private mRawData:[B

.field private mTag:I

.field private mValueIndex:I

.field private mValueLength:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 2
    .param p1, "rawData"    # [B
    .param p2, "tag"    # I
    .param p3, "valueIndex"    # I
    .param p4, "valueLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    .line 26
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    .line 28
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    .line 29
    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    .line 32
    iput-object p1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    .line 33
    iput p2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    .line 34
    iput p3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    .line 35
    iput p4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    .line 31
    return-void
.end method

.method public static encodeLength(ILjava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 100
    and-int/lit16 v0, p0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    return-void
.end method

.method public static parse([BI)Lcom/vzw/nfc/dos/VzwTlv;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 42
    :cond_0
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string/jumbo v5, "No data given!"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_1
    move v0, p1

    .line 46
    .local v0, "curIndex":I
    const/4 v3, 0x0

    .line 49
    .local v3, "tag":I
    array-length v4, p0

    if-ge p1, v4, :cond_2

    .line 50
    add-int/lit8 v0, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v3, v4, 0xff

    .line 57
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curIndex":I
    .local v1, "curIndex":I
    aget-byte v4, p0, v0

    and-int/lit16 v2, v4, 0xff

    .line 64
    .local v2, "length":I
    new-instance v4, Lcom/vzw/nfc/dos/VzwTlv;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    return-object v4

    .line 52
    .end local v1    # "curIndex":I
    .end local v2    # "length":I
    .restart local v0    # "curIndex":I
    :cond_2
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string/jumbo v5, "Index out of bound"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_3
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 61
    const-string/jumbo v6, " out of range! [0..["

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 61
    array-length v6, p0

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, "equals":Z
    instance-of v4, p1, Lcom/vzw/nfc/dos/VzwTlv;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 117
    nop

    nop

    .line 119
    .local v0, "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    iget v4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    iget v5, v0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 121
    .local v1, "equals":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v2

    .line 123
    .local v2, "test1":[B
    invoke-virtual {v0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v3

    .line 125
    .local v3, "test2":[B
    if-eqz v2, :cond_2

    .line 127
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    and-int/2addr v1, v4

    .line 133
    .end local v0    # "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    .end local v1    # "equals":Z
    .end local v2    # "test1":[B
    .end local v3    # "test2":[B
    :cond_0
    :goto_1
    return v1

    .line 119
    .restart local v0    # "berTlv":Lcom/vzw/nfc/dos/VzwTlv;
    .local v1, "equals":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    .local v1, "equals":Z
    .restart local v2    # "test1":[B
    .restart local v3    # "test2":[B
    :cond_2
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method protected getRawData()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    return v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-object v3

    .line 80
    :cond_1
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    if-ltz v1, :cond_0

    .line 81
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 82
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 85
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    new-array v0, v1, [B

    .line 87
    .local v0, "data":[B
    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget v3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 88
    return-object v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    return v0
.end method

.method public getValueLength()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    .local v0, "dataHash":Ljava/lang/Integer;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 108
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 109
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public translate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method
