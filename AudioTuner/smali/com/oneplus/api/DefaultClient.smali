.class public Lcom/oneplus/api/DefaultClient;
.super Lcom/oneplus/api/AbstractOneplusClient;
.source "DefaultClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/api/DefaultClient$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/api/AbstractOneplusClient;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private getHttpClient(Lcom/oneplus/api/OneplusRequest;)Lorg/apache/commons/httpclient/HttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Lcom/oneplus/api/OneplusRequest",
            "<TT;>;)",
            "Lorg/apache/commons/httpclient/HttpClient;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 145
    .local v0, "hc":Lorg/apache/commons/httpclient/HttpClient;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "compatibility"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.protocol.single-cookie-header"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-object v0
.end method

.method private getHttpMethod(Lcom/oneplus/api/OneplusRequest;)Lorg/apache/commons/httpclient/HttpMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Lcom/oneplus/api/OneplusRequest",
            "<TT;>;)",
            "Lorg/apache/commons/httpclient/HttpMethod;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    sget-object v5, Lcom/oneplus/api/DefaultClient$1;->$SwitchMap$com$oneplus$api$constants$RequestMethod:[I

    invoke-virtual {p1}, Lcom/oneplus/api/OneplusRequest;->getMethod()Lcom/oneplus/api/constants/RequestMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/api/constants/RequestMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 130
    new-instance v5, Lcom/oneplus/api/exception/ApiException;

    sget-object v6, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v5, v6}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v5

    .line 110
    :pswitch_0
    new-instance v2, Lorg/apache/commons/httpclient/methods/PostMethod;

    iget-object v5, p0, Lcom/oneplus/api/DefaultClient;->url:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "httpMethodTem":Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-virtual {p1}, Lcom/oneplus/api/OneplusRequest;->getParamsWithPost()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v3

    .line 112
    .local v3, "nvps":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 113
    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 115
    :cond_0
    move-object v1, v2

    .line 133
    .end local v2    # "httpMethodTem":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v3    # "nvps":[Lorg/apache/commons/httpclient/NameValuePair;
    :goto_0
    return-object v1

    .line 119
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/api/OneplusRequest;->getParamsWithGet()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "params":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    new-instance v1, Lorg/apache/commons/httpclient/methods/GetMethod;

    .end local v1    # "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/api/DefaultClient;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .restart local v1    # "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Lorg/apache/commons/httpclient/methods/GetMethod;

    .end local v1    # "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    iget-object v5, p0, Lcom/oneplus/api/DefaultClient;->url:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    goto :goto_0

    .line 125
    .end local v1    # "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    .end local v4    # "params":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v5, v0}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected doRequest(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Lcom/oneplus/api/OneplusRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<TT;>;"
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/api/DefaultClient;->getHttpMethod(Lcom/oneplus/api/OneplusRequest;)Lorg/apache/commons/httpclient/HttpMethod;

    move-result-object v12

    .line 53
    .local v12, "httpMethod":Lorg/apache/commons/httpclient/HttpMethod;
    if-nez v12, :cond_0

    .line 54
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    sget-object v5, Lcom/oneplus/api/constants/MessageCodes;->METHOD_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v4, v5}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v4

    .line 58
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/api/OneplusRequest;->getHeaders()Ljava/util/Map;

    move-result-object v10

    .line 59
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v12, v2, v4}, Lorg/apache/commons/httpclient/HttpMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v2    # "key":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/api/DefaultClient;->getHttpClient(Lcom/oneplus/api/OneplusRequest;)Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v11

    .line 67
    .local v11, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/api/OneplusRequest;->getCookies()Ljava/util/Map;

    move-result-object v7

    .line 68
    .local v7, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/api/DefaultClient;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "host":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .restart local v2    # "key":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/httpclient/Cookie;

    const-string v4, "/"

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 73
    .local v0, "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HttpClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V

    goto :goto_1

    .line 78
    .end local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/api/AbstractOneplusClient;->url:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    new-instance v9, Lcom/oneplus/api/OnplusSecureProtocolSocketFactory;

    invoke-direct {v9}, Lcom/oneplus/api/OnplusSecureProtocolSocketFactory;-><init>()V

    .line 80
    .local v9, "factory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    new-instance v14, Lorg/apache/commons/httpclient/protocol/Protocol;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v14, v4, v9, v5}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V

    .line 81
    .local v14, "myhttps":Lorg/apache/commons/httpclient/protocol/Protocol;
    const-string v4, "https"

    invoke-static {v4, v14}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 86
    .end local v9    # "factory":Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .end local v14    # "myhttps":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_3
    :try_start_0
    invoke-virtual {v11, v12}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/api/OneplusRequest;->getResponseClass()Ljava/lang/Class;

    move-result-object v4

    invoke-super {p0, v12, v4}, Lcom/oneplus/api/AbstractOneplusClient;->parseResponse(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/Class;)Lcom/oneplus/api/OneplusResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 87
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v4, v8}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 94
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 95
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v4, Lcom/oneplus/api/exception/ApiException;

    invoke-direct {v4, v8}, Lcom/oneplus/api/exception/ApiException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
