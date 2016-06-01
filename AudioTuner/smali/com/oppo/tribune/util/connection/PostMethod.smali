.class public Lcom/oppo/tribune/util/connection/PostMethod;
.super Lcom/oppo/tribune/util/connection/AbstractHttpMethod;
.source "PostMethod.java"


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "POST"


# instance fields
.field private mHttpEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "readCookie"    # Z
    .param p4, "writeCookie"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "readCookie"    # Z
    .param p4, "writeCookie"    # Z
    .param p5, "extra"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 59
    return-void
.end method

.method public static newNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "POST"

    return-object v0
.end method

.method protected onDoOutput(Ljava/net/HttpURLConnection;)V
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->onDoOutput(Ljava/net/HttpURLConnection;)V

    .line 105
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/PostMethod;->mHttpEntity:Lorg/apache/http/HttpEntity;

    if-nez v3, :cond_0

    .line 123
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oppo/tribune/util/connection/PostMethod;->mHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 111
    .local v1, "input":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v1, v2}, Lcom/oppo/tribune/util/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 117
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 121
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 116
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    :try_start_3
    invoke-static {v1, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 117
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected onInitConnection(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/oppo/tribune/util/connection/AbstractHttpMethod;->onInitConnection(Ljava/net/HttpURLConnection;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 68
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 69
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 70
    return-void
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/tribune/util/connection/PostMethod;->mHttpEntity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEntity(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oppo/tribune/util/connection/PostMethod;->mHttpEntity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oppo/tribune/util/connection/PostMethod;->mHttpEntity:Lorg/apache/http/HttpEntity;

    .line 79
    return-void
.end method
