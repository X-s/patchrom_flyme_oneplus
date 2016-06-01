.class public Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel;
.super Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.source "SubmitBgImgModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel",
        "<",
        "Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;",
        "Lcom/oppo/tribune/protobuf/info/SubmitResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;-><init>()V

    .line 41
    return-void
.end method

.method private getHttpEntity(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    .local v0, "pairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "backgroundId"

    iget-object v3, p2, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->backgroundId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "address"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "source"

    invoke-static {p1}, Lcom/oppo/tribune/util/PhoneInfo;->getTail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private uploadImage(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)[B
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 81
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->getImgPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v7

    .line 85
    :cond_1
    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->getImgPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oppo/tribune/util/Utils;->getImgExif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "exif":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 87
    invoke-static {v2}, Lcom/oppo/tribune/CommunityApplication;->resetExtra(Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v6, "strparamas":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "address"

    aput-object v9, v8, v10

    const-string v9, ""

    aput-object v9, v8, v11

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "source"

    aput-object v9, v8, v10

    invoke-static {p1}, Lcom/oppo/tribune/util/PhoneInfo;->getTail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "extra"

    aput-object v9, v8, v10

    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getStatInfo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->getImgPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "file":Ljava/io/File;
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "picture"

    aput-object v8, v4, v10

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    const-string v8, "application/octet-stream"

    aput-object v8, v4, v12

    const/4 v8, 0x3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 102
    .local v4, "params":[Ljava/lang/String;
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cookie":Ljava/lang/String;
    new-instance v5, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;

    const-string v8, "http://ddinterface2.oneplus.cn:8000/user/uploadHomeBackground"

    invoke-direct {v5, v8, v0}, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v5, "req":Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;
    invoke-virtual {v5, v6, v4}, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->setParams(Ljava/util/List;[Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v5}, Lcom/oppo/tribune/packshow/post/HttpMultipartRequest;->sendFilePost()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected submitInfo(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)Lcom/oppo/tribune/protobuf/info/SubmitResult;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;

    .prologue
    const/4 v6, 0x1

    .line 45
    if-nez p2, :cond_0

    .line 46
    const/4 v4, 0x0

    .line 62
    :goto_0
    return-object v4

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 51
    .local v2, "response":[B
    invoke-virtual {p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->getType()I

    move-result v3

    .line 52
    .local v3, "type":I
    if-ne v3, v6, :cond_2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel;->getHttpEntity(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lcom/oppo/tribune/util/connection/PostMethod;

    const-string v4, "http://ddinterface2.oneplus.cn:8000/user/setHomeBackground"

    const/4 v5, 0x0

    invoke-direct {v1, p1, v4, v6, v5}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 56
    .local v1, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 57
    invoke-virtual {v1}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v2

    .line 62
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v1    # "method":Lcom/oppo/tribune/util/connection/PostMethod;
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->parse([B)Lcom/oppo/tribune/protobuf/info/SubmitResult;

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel;->uploadImage(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)[B

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic submitInfo(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p2, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel;->submitInfo(Landroid/content/Context;Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;)Lcom/oppo/tribune/protobuf/info/SubmitResult;

    move-result-object v0

    return-object v0
.end method
