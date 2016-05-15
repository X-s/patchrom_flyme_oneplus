.class Landroid/content/theme/OpApkChangedInfo$IconXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OpApkChangedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theme/OpApkChangedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconXmlHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    # setter for: Landroid/content/theme/OpApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/theme/OpApkChangedInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    # setter for: Landroid/content/theme/OpApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {p2}, Landroid/content/theme/OpApkChangedInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    # getter for: Landroid/content/theme/OpApkChangedInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {}, Landroid/content/theme/OpApkChangedInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 50
    # getter for: Landroid/content/theme/OpApkChangedInfo;->mAllPackageNames:Ljava/util/ArrayList;
    invoke-static {}, Landroid/content/theme/OpApkChangedInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
