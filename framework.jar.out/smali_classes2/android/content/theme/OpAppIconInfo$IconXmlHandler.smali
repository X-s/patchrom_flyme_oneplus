.class Landroid/content/theme/OpAppIconInfo$IconXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OpAppIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/theme/OpAppIconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconXmlHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
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
    .line 66
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
    .line 69
    const/4 v0, 0x0

    # setter for: Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/theme/OpAppIconInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    .line 49
    # setter for: Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {p2}, Landroid/content/theme/OpAppIconInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    # getter for: Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {}, Landroid/content/theme/OpAppIconInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "iconName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 53
    # getter for: Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Landroid/content/theme/OpAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    const-string v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 59
    # getter for: Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;
    invoke-static {}, Landroid/content/theme/OpAppIconInfo;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "iconName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 55
    .restart local v0    # "iconName":Ljava/lang/String;
    :cond_1
    # getter for: Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Landroid/content/theme/OpAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "no_icon_name"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    # getter for: Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Landroid/content/theme/OpAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "no_package_name"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
