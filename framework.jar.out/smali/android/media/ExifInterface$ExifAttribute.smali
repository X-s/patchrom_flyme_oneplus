.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method static synthetic -wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 454
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 455
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 452
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_0

    .line 503
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 504
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 506
    .end local v1    # "bytes":[B
    :cond_0
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 507
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 556
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xc

    .line 547
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    .line 546
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 548
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 549
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 550
    .local v2, "value":D
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "value":D
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 497
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v5, 0x9

    .line 488
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 487
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 489
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 490
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 491
    .local v1, "value":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 542
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xa

    .line 532
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 531
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 533
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 534
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 535
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 536
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 512
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 483
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x4

    .line 474
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    .line 473
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 475
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 476
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 477
    .local v2, "value":J
    long-to-int v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v2    # "value":J
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 527
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x5

    .line 517
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 516
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 518
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 519
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 520
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 521
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 469
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x3

    .line 460
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 459
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 461
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 462
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 463
    .local v1, "value":I
    int-to-short v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 22
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 567
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 568
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 569
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_0

    .line 670
    const/4 v3, 0x0

    return-object v3

    .line 573
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_0

    .line 574
    new-instance v3, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    add-int/lit8 v19, v19, 0x30

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-char v19, v8, v20

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 576
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3

    .line 580
    :pswitch_1
    const/4 v11, 0x0

    .line 581
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 582
    const/4 v13, 0x1

    .line 583
    .local v13, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_1

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_4

    .line 585
    const/4 v13, 0x0

    .line 589
    :cond_1
    if-eqz v13, :cond_2

    .line 590
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v11, v3

    .line 594
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_3

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 597
    .local v2, "ch":I
    if-nez v2, :cond_5

    .line 607
    .end local v2    # "ch":I
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 583
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 600
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v3, 0x20

    if-lt v2, v3, :cond_6

    .line 601
    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 603
    :cond_6
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 672
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 673
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ExifInterface"

    const-string/jumbo v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    const/4 v3, 0x0

    return-object v3

    .line 610
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 611
    .local v16, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_7

    .line 612
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v16, v10

    .line 611
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 614
    :cond_7
    return-object v16

    .line 617
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 618
    .local v17, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_8

    .line 619
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    aput-wide v20, v17, v10

    .line 618
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 621
    :cond_8
    return-object v17

    .line 624
    .end local v10    # "i":I
    .end local v17    # "values":[J
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    .line 625
    .local v18, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_9

    .line 626
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 627
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 628
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    .line 625
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 630
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_9
    return-object v18

    .line 633
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 634
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_a

    .line 635
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v3

    aput v3, v16, v10

    .line 634
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 637
    :cond_a
    return-object v16

    .line 640
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 641
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_b

    .line 642
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    aput v3, v16, v10

    .line 641
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 644
    :cond_b
    return-object v16

    .line 647
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    .line 648
    .restart local v18    # "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_c

    .line 649
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 650
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 651
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    .line 648
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 653
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_c
    return-object v18

    .line 656
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 657
    .local v15, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_d

    .line 658
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    aput-wide v20, v15, v10

    .line 657
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 660
    :cond_d
    return-object v15

    .line 663
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 664
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_e

    .line 665
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v15, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 667
    :cond_e
    return-object v15

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 679
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v4

    .line 680
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 681
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "NULL can\'t be converted to a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 683
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 684
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    return-wide v6

    .line 686
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, [J

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 687
    check-cast v2, [J

    .line 688
    .local v2, "array":[J
    array-length v5, v2

    if-ne v5, v7, :cond_2

    .line 689
    aget-wide v6, v2, v6

    long-to-double v6, v6

    return-wide v6

    .line 691
    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    .end local v2    # "array":[J
    :cond_3
    instance-of v5, v4, [I

    if-eqz v5, :cond_5

    move-object v1, v4

    .line 694
    check-cast v1, [I

    .line 695
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v7, :cond_4

    .line 696
    aget v5, v1, v6

    int-to-double v6, v5

    return-wide v6

    .line 698
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 700
    .end local v1    # "array":[I
    :cond_5
    instance-of v5, v4, [D

    if-eqz v5, :cond_7

    move-object v0, v4

    .line 701
    check-cast v0, [D

    .line 702
    .local v0, "array":[D
    array-length v5, v0

    if-ne v5, v7, :cond_6

    .line 703
    aget-wide v6, v0, v6

    return-wide v6

    .line 705
    :cond_6
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 707
    .end local v0    # "array":[D
    :cond_7
    instance-of v5, v4, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_9

    move-object v3, v4

    .line 708
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .line 709
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    array-length v5, v3

    if-ne v5, v7, :cond_8

    .line 710
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v6

    return-wide v6

    .line 712
    :cond_8
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 714
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_9
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "Couldn\'t find a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 718
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    .line 719
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 720
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "NULL can\'t be converted to a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 722
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 723
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 725
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, [J

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 726
    check-cast v1, [J

    .line 727
    .local v1, "array":[J
    array-length v3, v1

    if-ne v3, v5, :cond_2

    .line 728
    aget-wide v4, v1, v4

    long-to-int v3, v4

    return v3

    .line 730
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v1    # "array":[J
    :cond_3
    instance-of v3, v2, [I

    if-eqz v3, :cond_5

    move-object v0, v2

    .line 733
    check-cast v0, [I

    .line 734
    .local v0, "array":[I
    array-length v3, v0

    if-ne v3, v5, :cond_4

    .line 735
    aget v3, v0, v4

    return v3

    .line 737
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    .end local v0    # "array":[I
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "Couldn\'t find a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 10
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x0

    .line 743
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    .line 744
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 745
    return-object v8

    .line 747
    :cond_0
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 748
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    return-object v6

    .line 751
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v7, v6, [J

    if-eqz v7, :cond_4

    move-object v2, v6

    .line 753
    check-cast v2, [J

    .line 754
    .local v2, "array":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 755
    aget-wide v8, v2, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 756
    add-int/lit8 v7, v4, 0x1

    array-length v8, v2

    if-eq v7, v8, :cond_2

    .line 757
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 760
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 762
    .end local v2    # "array":[J
    .end local v4    # "i":I
    :cond_4
    instance-of v7, v6, [I

    if-eqz v7, :cond_7

    move-object v1, v6

    .line 763
    check-cast v1, [I

    .line 764
    .local v1, "array":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_6

    .line 765
    aget v7, v1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v7, v4, 0x1

    array-length v8, v1

    if-eq v7, v8, :cond_5

    .line 767
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 770
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 772
    .end local v1    # "array":[I
    .end local v4    # "i":I
    :cond_7
    instance-of v7, v6, [D

    if-eqz v7, :cond_a

    move-object v0, v6

    .line 773
    check-cast v0, [D

    .line 774
    .local v0, "array":[D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v4, v7, :cond_9

    .line 775
    aget-wide v8, v0, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 776
    add-int/lit8 v7, v4, 0x1

    array-length v8, v0

    if-eq v7, v8, :cond_8

    .line 777
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 780
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 782
    .end local v0    # "array":[D
    .end local v4    # "i":I
    :cond_a
    instance-of v7, v6, [Landroid/media/ExifInterface$Rational;

    if-eqz v7, :cond_d

    move-object v3, v6

    .line 783
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .line 784
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_c

    .line 785
    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 786
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 788
    add-int/lit8 v7, v4, 0x1

    array-length v8, v3

    if-eq v7, v8, :cond_b

    .line 789
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 792
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 794
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v4    # "i":I
    :cond_d
    return-object v8
.end method

.method public size()I
    .locals 2

    .prologue
    .line 798
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-get3()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
