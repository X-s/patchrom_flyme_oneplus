.class public Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;
.super Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.source "SubmitPackFeedModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel",
        "<",
        "Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;",
        "Lcom/oppo/tribune/protobuf/info/SubmitResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;-><init>()V

    .line 37
    return-void
.end method

.method private getHttpEntity(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/oppo/tribune/util/PhoneInfo;->getTail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "tail":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    return-object v1

    .line 60
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "pairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->getTypeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "typeIdStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->getCategoryId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "categoryId":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type_id"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "config_name"

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->getConfigName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "config_intro"

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->getConfigIntro()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "config_params"

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->getConfigParams()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "category_id"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "accountType"

    const-string v6, "2"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*&wa@lle?^sa!e%v5e(]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/tribune/square/resdown/util/MD5Sign;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected submitInfo(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;)Lcom/oppo/tribune/protobuf/info/SubmitResult;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;->getHttpEntity(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 51
    :goto_0
    return-object v3

    .line 46
    :cond_0
    new-instance v1, Lcom/oppo/tribune/util/connection/PostMethod;

    const-string v3, "http://ddinterface2.oneplus.cn:8000/feed/Share"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 48
    .local v1, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 49
    invoke-virtual {v1}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v2

    .line 51
    .local v2, "response":[B
    invoke-static {v2}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->parse([B)Lcom/oppo/tribune/protobuf/info/SubmitResult;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic submitInfo(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p2, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;->submitInfo(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;)Lcom/oppo/tribune/protobuf/info/SubmitResult;

    move-result-object v0

    return-object v0
.end method
