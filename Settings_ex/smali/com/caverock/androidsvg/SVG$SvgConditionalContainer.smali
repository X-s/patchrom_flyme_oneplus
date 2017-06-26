.class public Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SvgConditionalContainer"
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end field

.field public requiredExtensions:Ljava/lang/String;

.field public requiredFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requiredFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requiredFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public systemLanguage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1448
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    .line 1450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    .line 1452
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    .line 1453
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    .line 1454
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->systemLanguage:Ljava/util/Set;

    .line 1455
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    .line 1456
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    .line 1448
    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1
    .param p1, "elem"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredExtensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-object v0
.end method

.method public getSystemLanguage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequiredExtensions(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensions"    # Ljava/lang/String;

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-void
.end method

.method public setRequiredFeatures(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFonts(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1480
    .local p1, "fontNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-void
.end method

.method public setRequiredFormats(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-void
.end method

.method public setSystemLanguage(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->systemLanguage:Ljava/util/Set;

    return-void
.end method
