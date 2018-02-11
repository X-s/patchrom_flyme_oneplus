.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "(?s)/\\*.*?\\*/"

    const-string/jumbo v1, ""

    .line 339
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 517
    if-nez v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_0
    return-object v1

    .line 518
    :cond_1
    return-object v0
.end method

.method private scanForIdentifier()I
    .locals 9

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x5f

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const/16 v4, 0x2d

    .line 357
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 360
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 362
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 363
    if-eq v1, v4, :cond_3

    .line 366
    :goto_0
    if-ge v1, v5, :cond_4

    :cond_0
    if-ge v1, v8, :cond_a

    :cond_1
    if-eq v1, v7, :cond_5

    .line 375
    :goto_1
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 376
    return v0

    .line 358
    :cond_2
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v0

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 366
    :cond_4
    if-gt v1, v6, :cond_0

    .line 368
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    .line 370
    :goto_3
    if-ge v0, v5, :cond_b

    :cond_6
    if-ge v0, v8, :cond_c

    :cond_7
    const/16 v1, 0x30

    if-ge v0, v1, :cond_d

    :cond_8
    if-ne v0, v4, :cond_e

    .line 371
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_3

    :cond_a
    const/16 v3, 0x7a

    .line 366
    if-gt v1, v3, :cond_1

    goto :goto_2

    .line 370
    :cond_b
    if-gt v0, v6, :cond_6

    goto :goto_4

    :cond_c
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_7

    goto :goto_4

    :cond_d
    const/16 v1, 0x39

    if-gt v0, v1, :cond_8

    goto :goto_4

    :cond_e
    if-eq v0, v7, :cond_9

    .line 373
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 348
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-eq v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 352
    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 349
    return-object v0
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 530
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 532
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/4 v3, -0x1

    .line 533
    if-ne v1, v3, :cond_4

    .line 538
    :cond_0
    :goto_1
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-gt v1, v2, :cond_5

    .line 540
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 541
    return-object v4

    .line 528
    :cond_1
    return-object v4

    .line 533
    :cond_2
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 534
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 535
    :cond_3
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v3, 0x3b

    .line 533
    if-eq v1, v3, :cond_0

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x21

    if-ne v1, v3, :cond_2

    goto :goto_1

    .line 539
    :cond_5
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 393
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 404
    :goto_0
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 407
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 408
    if-nez v3, :cond_6

    move-object v2, v1

    .line 414
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 416
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_7

    .line 429
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v4, v2

    .line 441
    :goto_2
    if-eqz v4, :cond_0

    .line 445
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_d

    .line 474
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_16

    .line 497
    :cond_0
    :goto_3
    if-nez v4, :cond_19

    .line 504
    iput v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 505
    return v8

    .line 387
    :cond_1
    return v8

    .line 395
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 396
    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 397
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 399
    :cond_4
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 400
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 405
    :cond_5
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_6
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v2, v0, v3}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_1

    .line 419
    :cond_7
    if-eqz v2, :cond_8

    .line 421
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_9

    const-string/jumbo v4, "class"

    .line 424
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v2, v4, v6, v3}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_1

    .line 420
    :cond_8
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_4

    .line 423
    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid \".class\" selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_a
    if-eqz v2, :cond_b

    .line 434
    :goto_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 435
    if-eqz v3, :cond_c

    const-string/jumbo v4, "id"

    .line 437
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v2, v4, v6, v3}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    move-object v4, v2

    goto :goto_2

    .line 433
    :cond_b
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_5

    .line 436
    :cond_c
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 448
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 450
    if-eqz v6, :cond_e

    .line 452
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 454
    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "~="

    .line 456
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "|="

    .line 458
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v3, v1

    .line 460
    :goto_6
    if-nez v3, :cond_12

    move-object v2, v1

    .line 467
    :goto_7
    const/16 v7, 0x5d

    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 469
    if-eqz v3, :cond_15

    :goto_8
    invoke-virtual {v4, v6, v3, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    move-object v2, v4

    .line 471
    goto/16 :goto_1

    .line 451
    :cond_e
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid attribute selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_f
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    .line 457
    :cond_10
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    .line 459
    :cond_11
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_6

    .line 461
    :cond_12
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 462
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_13

    .line 465
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_7

    .line 464
    :cond_13
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid attribute selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_14
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid attribute selector in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_15
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    .line 477
    :cond_16
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 478
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_18

    .line 489
    :cond_17
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_3

    .line 480
    :cond_18
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 481
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 482
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_17

    .line 484
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_3

    .line 499
    :cond_19
    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 500
    const/4 v0, 0x1

    return v0

    :cond_1a
    move-object v4, v2

    goto/16 :goto_3
.end method
