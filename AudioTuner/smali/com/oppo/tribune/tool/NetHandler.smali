.class public Lcom/oppo/tribune/tool/NetHandler;
.super Ljava/lang/Object;
.source "NetHandler.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x9c40

.field private static final HTTP_HEAD_ACCEPT_ENCODING:Ljava/lang/String; = "zh,zh-CN;q=0.8"

.field private static final HTTP_HEAD_ACCEPT_LAUGUAGE:Ljava/lang/String; = "utf-8"

.field private static final HTTP_HEAD_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

.field private static final READ_TIMEOUT:I = 0xea60

.field private static mNetHandler:Lcom/oppo/tribune/tool/NetHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/oppo/tribune/tool/NetHandler;

    invoke-direct {v0}, Lcom/oppo/tribune/tool/NetHandler;-><init>()V

    sput-object v0, Lcom/oppo/tribune/tool/NetHandler;->mNetHandler:Lcom/oppo/tribune/tool/NetHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private addAuthentication(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p1, "httpRequest"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 183
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "Accept-Encoding"

    const-string v1, "zh,zh-CN;q=0.8"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "Accept-Lauguage"

    const-string v1, "utf-8"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private addCookies(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpRequest"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 194
    const-string v0, "Cookie"

    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 11

    .prologue
    .line 138
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 139
    .local v6, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    .line 140
    .local v7, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 142
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 145
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 147
    .local v5, "proxyPort":I
    if-eqz v4, :cond_0

    .line 148
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 149
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    const-string v8, "http.route.default-proxy"

    invoke-interface {v2, v8, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 153
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 154
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 155
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 158
    const v8, 0x9c40

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    const v8, 0xea60

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 163
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 164
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v1
.end method

.method private createHttpGet(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "authentication"    # Z
    .param p4, "cookie"    # Z

    .prologue
    .line 124
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/oppo/tribune/tool/NetHandler;->addAuthentication(Lorg/apache/http/HttpRequest;)V

    .line 130
    :cond_0
    if-eqz p4, :cond_1

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/oppo/tribune/tool/NetHandler;->addCookies(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V

    .line 134
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/oppo/tribune/tool/NetHandler;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/oppo/tribune/tool/NetHandler;->mNetHandler:Lcom/oppo/tribune/tool/NetHandler;

    return-object v0
.end method


# virtual methods
.method public downloadEntity(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/apache/http/HttpEntity;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "authentication"    # Z
    .param p4, "cookie"    # Z

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-direct {p0}, Lcom/oppo/tribune/tool/NetHandler;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    .line 96
    .local v3, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v2, 0x0

    .line 98
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .line 100
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/tool/NetHandler;->createHttpGet(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 112
    :goto_0
    if-eqz v4, :cond_0

    .line 113
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 114
    .local v5, "status":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 115
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 119
    .end local v5    # "status":I
    :cond_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oppo/tribune/tool/NetHandler;->downloadEntity(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public downloadStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/tool/NetHandler;->downloadStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public downloadStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authentication"    # Z
    .param p3, "cookie"    # Z

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/oppo/tribune/tool/NetHandler;->downloadEntity(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 62
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 71
    :cond_0
    :goto_0
    return-object v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
