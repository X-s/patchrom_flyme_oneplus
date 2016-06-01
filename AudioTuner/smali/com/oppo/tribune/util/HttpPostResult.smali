.class public abstract Lcom/oppo/tribune/util/HttpPostResult;
.super Ljava/lang/Object;
.source "HttpPostResult.java"

# interfaces
.implements Lcom/oppo/tribune/util/IHttpRequest$IHttpPost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpResultWithParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v5, Lcom/oppo/tribune/util/NetWorkService;

    invoke-direct {v5, p1}, Lcom/oppo/tribune/util/NetWorkService;-><init>(Landroid/content/Context;)V

    .line 35
    .local v5, "networkService":Lcom/oppo/tribune/util/NetWorkService;
    const/4 v7, 0x0

    invoke-virtual {v5, p2, v7}, Lcom/oppo/tribune/util/NetWorkService;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 36
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    .line 37
    .local v4, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 67
    :goto_0
    return-object v3

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 42
    .local v3, "httpResult":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/oppo/tribune/util/HttpPostResult;->getHttpParam()Ljava/util/List;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 44
    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 45
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 46
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 47
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 49
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 53
    :cond_2
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_3
    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 55
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 59
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    throw v7
.end method
