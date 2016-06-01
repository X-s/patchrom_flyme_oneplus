.class public Lcom/oppo/tribune/util/NetWorkService;
.super Ljava/lang/Object;
.source "NetWorkService.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x4e20

.field private static final READ_TIMEOUT:I = 0x9c40


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static hasAvaiablelNet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "available":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 230
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 231
    .local v2, "netWrokInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :cond_0
    return v0
.end method


# virtual methods
.method public createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 11

    .prologue
    .line 52
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 53
    .local v6, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    .line 54
    .local v7, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 55
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 56
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 57
    const/4 v3, 0x0

    .line 59
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 62
    .local v5, "proxyPort":I
    if-eqz v4, :cond_0

    .line 63
    new-instance v3, Lorg/apache/http/HttpHost;

    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 65
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    const-string v8, "http.route.default-proxy"

    invoke-interface {v2, v8, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 71
    :cond_0
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 72
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 73
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 77
    const/16 v8, 0x4e20

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    const v8, 0x9c40

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 82
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 83
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :goto_0
    return-object v1

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createHttpGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authenticate"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/square/resdown/util/ServerAuthorize;->getSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/LoginUtils;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "Accept-Encoding"

    const-string v2, "zh,zh-CN;q=0.8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "Accept-Lauguage"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authenticate"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 162
    :cond_0
    if-eqz p2, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/square/resdown/util/ServerAuthorize;->getSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/LoginUtils;->readCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "Accept-Encoding"

    const-string v2, "zh,zh-CN;q=0.8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "Accept-Lauguage"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 5

    .prologue
    const/4 v2, 0x4

    .line 197
    iget-object v3, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 200
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 201
    .local v1, "netWrokInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    :cond_0
    const/4 v2, 0x0

    .line 221
    :cond_1
    :goto_0
    return v2

    .line 203
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 207
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    const/4 v2, 0x2

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const/4 v2, 0x3

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isMobileActive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v4, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 100
    .local v1, "manager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "networkinfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const/4 v3, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/util/NetWorkService;->mContext:Landroid/content/Context;

    .line 239
    return-void
.end method
