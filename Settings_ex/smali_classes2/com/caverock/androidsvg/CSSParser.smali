.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG CSSParser"


# instance fields
.field private inMediaRule:Z

.field private rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 284
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 285
    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 867
    if-ltz p1, :cond_0

    .line 869
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-ne v1, v2, :cond_1

    .line 872
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 874
    if-eq v0, p2, :cond_2

    .line 876
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 868
    :cond_0
    return v3

    .line 870
    :cond_1
    return v3

    .line 875
    :cond_2
    return v1

    .line 878
    :cond_3
    return v3
.end method

.method public static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 301
    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {v1, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    return v0

    .line 303
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid @media type list"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 553
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 554
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-ne v0, v2, :cond_1

    .line 555
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 554
    :cond_1
    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 557
    :cond_2
    return v3
.end method

.method private parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 581
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 583
    if-eqz v0, :cond_2

    .line 585
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    if-eqz v1, :cond_3

    :cond_0
    const-string/jumbo v1, "Ignoring @%s rule"

    .line 609
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 612
    :cond_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 613
    return-void

    .line 584
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid \'@\' rule in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v1, "media"

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    .line 588
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 591
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 592
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 597
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 600
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid @media rule: missing rule set"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_5
    iput-boolean v2, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 594
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 595
    iput-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    goto :goto_0
.end method

.method protected static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 752
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 755
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 757
    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 758
    if-eqz v2, :cond_0

    .line 760
    if-eqz v0, :cond_1

    .line 762
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid value for \"class\" attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 765
    :cond_2
    return-object v0
.end method

.method private parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 714
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 717
    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 719
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 722
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v2

    .line 723
    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 727
    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 735
    :goto_0
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    .line 736
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 738
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 740
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Malformed rule set in <style> element"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const-string/jumbo v3, "important"

    .line 729
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 730
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_4
    return-object v0
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 567
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    :cond_1
    return-object v0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Invalid @media type list"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    .line 662
    if-nez v0, :cond_1

    .line 676
    :cond_0
    return v2

    .line 662
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 667
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    .line 668
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 669
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 670
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-direct {v3, v0, v1}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_0

    .line 665
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    .line 638
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "<!--"

    .line 640
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "-->"

    .line 642
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 649
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    :cond_1
    return-object v0

    .line 646
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    goto :goto_0
.end method

.method private parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 692
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 694
    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 705
    :cond_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    :goto_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    .line 687
    return-object v0

    .line 697
    :cond_3
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    goto :goto_0

    .line 706
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 798
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 799
    invoke-static {v0, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v1, v2, :cond_1

    .line 815
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v0, v1, :cond_5

    .line 821
    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    .line 822
    if-lez v0, :cond_6

    .line 824
    iget-object v1, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 825
    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v0

    return v0

    .line 800
    :cond_0
    return v3

    .line 805
    :cond_1
    if-eqz p1, :cond_2

    .line 808
    :goto_0
    if-ltz p3, :cond_4

    .line 809
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 806
    :cond_2
    return v4

    .line 810
    :cond_3
    return v4

    .line 813
    :cond_4
    return v3

    .line 817
    :cond_5
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    return v0

    .line 823
    :cond_6
    return v3
.end method

.method protected static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 776
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 777
    :goto_0
    if-eqz v0, :cond_0

    .line 778
    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0

    .line 782
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 785
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2, v1, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v0

    return v0

    .line 786
    :cond_1
    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v0

    return v0
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 832
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v1

    .line 833
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 835
    invoke-static {v1, p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, v1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v2, v3, :cond_1

    .line 850
    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-eq v1, v2, :cond_5

    .line 856
    invoke-static {p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v1

    .line 857
    if-lez v1, :cond_6

    .line 859
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 860
    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v0

    return v0

    .line 836
    :cond_0
    return v4

    .line 841
    :cond_1
    if-eqz p1, :cond_3

    .line 844
    :cond_2
    if-lez p3, :cond_4

    .line 845
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    return v5

    .line 842
    :cond_3
    return v5

    .line 848
    :cond_4
    return v4

    .line 852
    :cond_5
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p3, -0x1

    invoke-static {p0, v0, p2, v1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v0

    return v0

    .line 858
    :cond_6
    return v4
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 885
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v0, :cond_a

    .line 938
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const-string/jumbo v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 893
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    return v4

    .line 889
    :cond_4
    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v0, :cond_0

    .line 890
    return v4

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Attrib;

    .line 905
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string/jumbo v3, "id"

    if-eq v2, v3, :cond_7

    .line 910
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string/jumbo v3, "class"

    if-eq v2, v3, :cond_8

    .line 920
    return v4

    .line 907
    :cond_7
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 908
    return v4

    .line 912
    :cond_8
    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 914
    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 915
    return v4

    .line 913
    :cond_9
    return v4

    .line 927
    :cond_a
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "first-child"

    .line 928
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 932
    return v4

    .line 929
    :cond_c
    invoke-static {p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 930
    return v4
.end method

.method private skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 620
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 622
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3b

    .line 623
    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x7b

    .line 625
    if-eq v1, v2, :cond_3

    const/16 v2, 0x7d

    .line 627
    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 628
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 629
    return-void

    .line 623
    :cond_2
    if-nez v0, :cond_1

    .line 624
    return-void

    .line 626
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_4
    return-void
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "AndroidSVG CSSParser"

    .line 313
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 293
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    return-object v0
.end method
