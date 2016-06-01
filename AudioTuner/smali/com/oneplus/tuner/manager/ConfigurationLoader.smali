.class public Lcom/oneplus/tuner/manager/ConfigurationLoader;
.super Ljava/lang/Object;
.source "ConfigurationLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationLoader"

.field public static final TAG_BRAND:Ljava/lang/String; = "brand"

.field private static final TAG_EAR_MODE:Ljava/lang/String; = "mode"

.field private static final TAG_EAR_MODE_id:Ljava/lang/String; = "id"

.field public static final TAG_MODEL:Ljava/lang/String; = "model"

.field public static final TAG_PARAMENTER:Ljava/lang/String; = "parameter"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterBrandConfig(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 63
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 66
    .local v0, "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 67
    .local v2, "lastIndex":I
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/providers/OfficialEarphone;

    invoke-virtual {v4}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    .end local v1    # "i":I
    .end local v2    # "lastIndex":I
    :cond_1
    return-object v3
.end method

.method public static filterModelConfig(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 81
    .local v0, "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    .end local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 53
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadHeadsetModeAndId(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 96
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 98
    .local v3, "mode":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "xmlEventType":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 99
    if-ne v5, v8, :cond_1

    const-string v6, "mode"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "name"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 102
    :cond_1
    if-ne v5, v8, :cond_0

    const-string v6, "id"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const-string v6, "name"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v1    # "id":Ljava/lang/String;
    .end local v5    # "xmlEventType":I
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    const-string v6, "shuqi0703"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "map = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v2

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadOfficialConfig(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 28
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .local v0, "brand":Ljava/lang/String;
    const/4 v2, 0x0

    .line 29
    .local v2, "model":Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "xmlEventType":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 31
    if-ne v5, v8, :cond_1

    const-string v6, "brand"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    const-string v6, "name"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    if-ne v5, v8, :cond_0

    const-string v6, "model"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    const-string v6, "name"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/ConfigurationLoader;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v1, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .end local v1    # "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-direct {v1}, Lcom/oneplus/tuner/providers/OfficialEarphone;-><init>()V

    .line 38
    .restart local v1    # "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setBrand(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setModel(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v0    # "brand":Ljava/lang/String;
    .end local v1    # "config":Lcom/oneplus/tuner/providers/OfficialEarphone;
    .end local v2    # "model":Ljava/lang/String;
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "xmlEventType":I
    :catch_0
    move-exception v6

    .line 46
    :cond_2
    return-object v3
.end method
