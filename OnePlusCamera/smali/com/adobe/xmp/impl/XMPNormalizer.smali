.class public Lcom/adobe/xmp/impl/XMPNormalizer;
.super Ljava/lang/Object;
.source "XMPNormalizer.java"


# static fields
.field private static dcArrayForms:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/adobe/xmp/impl/XMPNormalizer;->initDCArrays()V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xcb

    const/4 v4, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 531
    if-eqz p2, :cond_4

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .line 542
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    .line 543
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 551
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    .line 552
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v3

    .line 553
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 559
    :cond_3
    return-void

    .line 532
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 537
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 533
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 543
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 546
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 547
    invoke-static {v0, v1, v4}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_1

    .line 553
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 556
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 557
    invoke-static {v0, v1, v4}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_2
.end method

.method private static deleteEmptySchemas(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 503
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 508
    :cond_1
    return-void
.end method

.method private static fixGPSTimeStamp(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "exif:GPSTimeStamp"

    .line 448
    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_1

    .line 459
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    .line 460
    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    :cond_0
    return-void

    .line 451
    :cond_1
    return-void

    .line 461
    :cond_2
    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "exif:DateTimeOriginal"

    .line 467
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_3

    .line 474
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 475
    invoke-interface {v2}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 476
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 477
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 478
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 479
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, v2}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 480
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 487
    return-void

    :cond_3
    const-string/jumbo v0, "exif:DateTimeDigitized"

    .line 471
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 485
    return-void
.end method

.method private static initDCArrays()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    .line 669
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 670
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 671
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:contributor"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:publisher"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:relation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:subject"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 680
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 681
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 682
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:creator"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:date"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 687
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 688
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 689
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 690
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 691
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:description"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:rights"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v1, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v2, "dc:title"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    return-void
.end method

.method private static migrateAudioCopyright(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 11

    .prologue
    .line 595
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    .line 594
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 597
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n\n"

    const-string/jumbo v2, "dc:rights"

    .line 600
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    .line 602
    if-nez v10, :cond_2

    .line 605
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v3, "rights"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "x-default"

    const/4 v7, 0x0

    move-object v1, p0

    .line 606
    invoke-interface/range {v1 .. v7}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 650
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 657
    :goto_1
    return-void

    .line 602
    :cond_2
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "x-default"

    .line 611
    invoke-static {v10, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    .line 613
    if-ltz v1, :cond_3

    .line 623
    :goto_2
    invoke-virtual {v10, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 627
    if-ltz v3, :cond_4

    .line 640
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 616
    invoke-virtual {v10, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v3, "rights"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "x-default"

    const/4 v7, 0x0

    move-object v1, p0

    .line 617
    invoke-interface/range {v1 .. v7}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string/jumbo v1, "x-default"

    .line 619
    invoke-static {v10, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 630
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static moveExplicitAliases(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/options/ParseOptions;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 299
    invoke-virtual {p1}, Lcom/adobe/xmp/options/ParseOptions;->getStrictAliasing()Z

    move-result v4

    .line 301
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getUnmodifiableChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 303
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 304
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 313
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {v1, v11}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    .line 321
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    .line 322
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_1

    .line 327
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-static {p0, v7, v3, v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 328
    invoke-virtual {v7, v11}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 331
    invoke-static {v7, v8, v11}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    .line 333
    if-eqz v8, :cond_3

    .line 356
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/options/AliasOptions;->isSimple()Z

    move-result v7

    if-nez v7, :cond_5

    .line 375
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v2

    if-nez v2, :cond_7

    .line 384
    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v3

    .line 389
    :goto_2
    if-eqz v2, :cond_a

    .line 395
    if-nez v4, :cond_b

    .line 400
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 295
    :cond_2
    return-void

    .line 335
    :cond_3
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/xmp/options/AliasOptions;->isSimple()Z

    move-result v8

    if-nez v8, :cond_4

    .line 349
    new-instance v8, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    .line 349
    invoke-direct {v8, v9, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 351
    invoke-virtual {v7, v8}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 352
    invoke-static {v6, v1, v8}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    .line 339
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v7, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 343
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 361
    :cond_5
    if-nez v4, :cond_6

    .line 366
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 363
    :cond_6
    invoke-static {v1, v8, v12}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto :goto_4

    :cond_7
    const-string/jumbo v2, "x-default"

    .line 377
    invoke-static {v8, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    .line 379
    if-ne v2, v7, :cond_8

    move-object v2, v3

    goto :goto_2

    .line 381
    :cond_8
    invoke-virtual {v8, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    goto :goto_2

    .line 386
    :cond_9
    invoke-virtual {v8, v12}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    goto/16 :goto_2

    .line 391
    :cond_a
    invoke-static {v6, v1, v8}, Lcom/adobe/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    .line 397
    :cond_b
    invoke-static {v1, v2, v12}, Lcom/adobe/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;Z)V

    goto/16 :goto_3

    .line 405
    :cond_c
    invoke-virtual {v0, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    goto/16 :goto_0

    .line 407
    :cond_d
    return-void
.end method

.method private static normalizeDCArrays(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    move v1, v0

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 190
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 192
    sget-object v0, Lcom/adobe/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/options/PropertyOptions;

    .line 193
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isSimple()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    const/16 v4, 0x1e00

    invoke-virtual {v3, v4, v5}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 222
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 224
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_1
    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string/jumbo v4, "[]"

    .line 202
    invoke-virtual {v2, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 204
    invoke-virtual {p0, v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->replaceChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 207
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v3, "xml:lang"

    const-string/jumbo v4, "x-default"

    invoke-direct {v0, v3, v4, v6}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 210
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 227
    :cond_2
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 232
    :cond_3
    return-void
.end method

.method static process(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/options/ParseOptions;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNormalizer;->touchUpDataModel(Lcom/adobe/xmp/impl/XMPMetaImpl;)V

    .line 65
    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPNormalizer;->moveExplicitAliases(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/options/ParseOptions;)V

    .line 67
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->tweakOldXMP(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 69
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->deleteEmptySchemas(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 71
    return-object p0
.end method

.method private static repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 244
    if-nez p0, :cond_1

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 254
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 257
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 262
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 265
    if-nez v2, :cond_5

    .line 268
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 260
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 265
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v3, "xml:lang"

    const-string/jumbo v4, "x-repair"

    invoke-direct {v2, v3, v4, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 274
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 278
    :cond_6
    return-void
.end method

.method private static touchUpDataModel(Lcom/adobe/xmp/impl/XMPMetaImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    const-string/jumbo v1, "http://purl.org/dc/elements/1.1/"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    .line 134
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    .line 137
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://ns.adobe.com/exif/1.0/"

    .line 141
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    .line 152
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/rights/"

    .line 163
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "xmpRights:UsageTerms"

    .line 165
    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->normalizeDCArrays(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->fixGPSTimeStamp(Lcom/adobe/xmp/impl/XMPNode;)V

    const-string/jumbo v2, "exif:UserComment"

    .line 145
    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "xmpDM:copyright"

    .line 156
    invoke-static {v0, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/XMPNormalizer;->migrateAudioCopyright(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 173
    :cond_4
    return-void
.end method

.method private static transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v0, "[]"

    .line 433
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2, p1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 435
    return-void

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v1, "xml:lang"

    const-string/jumbo v2, "x-default"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 429
    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alias to x-default already has a language qualifier"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static tweakOldXMP(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uuid:"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    :goto_1
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->checkUUIDFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    .line 101
    invoke-static {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 102
    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 103
    if-nez v1, :cond_3

    .line 113
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Failure creating xmpMM:InstanceID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const/4 v1, 0x5

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uuid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    .line 108
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifiers()V

    .line 109
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
